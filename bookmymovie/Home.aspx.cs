using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bookmymovie
{
    public partial class WebForm1 : System.Web.UI.Page
        
    {
        int cust_id = 0;
        string name = "";
            string cs = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            cust_id = Convert.ToInt32(Request.QueryString["cust_id"]);
            name = Request.QueryString["name"];

       
            if (!IsPostBack)
            {
                LoadMovies();
            }
        }
        private void LoadMovies()

        {
            SqlConnection con = new SqlConnection(cs);
            string sql = "select * from movie";
            SqlDataAdapter da = new SqlDataAdapter(sql, con);

            DataTable dt = new DataTable();

            da.Fill(dt);



            rptMovies.DataSource = dt;
            rptMovies.DataBind();
        }
        protected void BookNow_Click(object sender, EventArgs e)
        {
            Button btn=(Button)sender;
            string movieid = btn.CommandArgument;
            Response.Redirect("Booking.aspx?movie_id="+movieid
                +"&cust_id="+cust_id
                +"&name="+name);
        }

        protected void linLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");

        }

        protected void linHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}