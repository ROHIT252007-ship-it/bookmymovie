using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.InteropServices;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bookmymovie
{
    public partial class login : System.Web.UI.Page
    {
            string cs = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);

            string sql = "SELECT cust_id, name FROM cust WHERE email=@email AND password=@password";
            SqlCommand cmd = new SqlCommand(sql, con);

            cmd.Parameters.AddWithValue("@email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@password", txtPassword.Text);

            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                string custId = dr["cust_id"].ToString();
                string name = dr["name"].ToString();

                // pass data using QueryString
                Response.Redirect("Home.aspx?cust_id=" + custId + "&name=" + name);
            }
            else
            {
                Response.Write("Login Failed");
            }

            con.Close();
        }

    }
}