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
    public partial class Signup : System.Web.UI.Page
    {
        String cs = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            SqlConnection con=new SqlConnection(cs);
            String sql = "INSERT INTO cust(name,email,password) VALUES(@name,@email,@password)";
            SqlCommand cmd=new SqlCommand(sql, con);

            cmd.Parameters.AddWithValue("@name", txtName.Text);
            cmd.Parameters.AddWithValue("@email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@password", txtPassword.Text);

            con.Open();
            int row=cmd.ExecuteNonQuery();
            if (row > 0)
            {
                Response.Redirect("login.aspx");
            }
            else
            {
            Response.Write("faile");

            }
            con.Close();

        }
    }
}