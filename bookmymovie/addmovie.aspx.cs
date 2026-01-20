using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bookmymovie
{
    public partial class addmovie : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin.aspx");
        }

        protected void btnAddMovie_Click(object sender, EventArgs e)
        {
            string filename = Path.GetFileName(fuimage.FileName);
            string folderpath = Server.MapPath("~/images");

            if (!Directory.Exists(folderpath))
            {
                Directory.CreateDirectory(folderpath);
            }

            string filepath =Path.Combine(folderpath,filename);

            fuimage.SaveAs(filepath);

            SqlConnection con = new SqlConnection(cs);
            string sql = "insert into movie(moviename,genre,price,image) Values(@moviename,@ganre,@price,@image)";
            SqlCommand cmd=new SqlCommand(sql, con);

            cmd.Parameters.AddWithValue("@moviename", txtMovieName.Text);
            cmd.Parameters.AddWithValue("@ganre", txtGenre.Text);
            cmd.Parameters.AddWithValue("@price", txtPrice.Text);
            cmd.Parameters.AddWithValue("@image", "images/"+ filename);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            Response.Write("success");

        }
    }
}