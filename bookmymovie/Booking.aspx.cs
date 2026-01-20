using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bookmymovie
{
    public partial class Booking : System.Web.UI.Page
    {
        int movie_id = 0;
        int cust_id = 0;
        string name = "";
        string moviename = "";
        decimal price = 0;
        string cs = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            movie_id = Convert.ToInt32(Request.QueryString["movie_id"]);
            cust_id = Convert.ToInt32(Request.QueryString["cust_id"]); 
            name = Request.QueryString["name"];

            SqlConnection con=new SqlConnection(cs);
            string sql = "select * from movie where movie_id=" + movie_id;
            SqlCommand cmd=new SqlCommand(sql, con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                moviename =reader["moviename"].ToString();
                lblGenre.Text = reader["genre"].ToString();
                //price = reader["price"].ToString();
                imgPoster.ImageUrl = reader["image"].ToString();
                //lblPrice.Text = price;
                lblMovieName.Text = moviename;

                if (!decimal.TryParse(reader["price"].ToString(), out price))
                {
                    lblPrice.Text = "0.00";
                    price = 0;
                }
                else
                {
                    lblPrice.Text = price.ToString("F2"); // 2 decimal places
                }
            }

        }

        protected void btncomfirm_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string sql = @"INSERT INTO book (cust_id, movie_id, ticket, name,total_price,movie_name)
                       VALUES (@cust_id, @movie_id, @ticket, @name,@totalprice,@moviename)";

            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@cust_id", cust_id);
            cmd.Parameters.AddWithValue("@movie_id", movie_id);
            cmd.Parameters.AddWithValue("@ticket", ddlSeats.SelectedValue);
            cmd.Parameters.AddWithValue("@name", name);
            cmd.Parameters.AddWithValue("@moviename", moviename);

            int p = Convert.ToInt32(price);
            int t=Convert.ToInt32(ddlSeats.SelectedValue);
            int tp = t * p;
            cmd.Parameters.AddWithValue("@totalprice", tp);

            con.Open();
            int row = cmd.ExecuteNonQuery();
            if (row > 0)
            {
                Response.Write("success");
            }
            else
            {
                Response.Write("faile");

            }
            con.Close();
        }
    }
}