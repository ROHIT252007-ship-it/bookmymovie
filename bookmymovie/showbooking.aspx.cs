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
    public partial class showbooking : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadMovies();
            }
        }
        private void LoadMovies()

        {
            SqlConnection con = new SqlConnection(cs);
            string sql = "select * from book";
            SqlDataAdapter da = new SqlDataAdapter(sql, con);

            DataTable dt = new DataTable();

            da.Fill(dt);



            gvBookings.DataSource = dt;
            gvBookings.DataBind();
        }
    }
}