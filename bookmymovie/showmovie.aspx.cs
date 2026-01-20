using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bookmymovie
{
    public partial class showmovie : System.Web.UI.Page
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
            string sql = "SELECT * FROM movie";
                SqlDataAdapter da = new SqlDataAdapter(sql, con);
                DataTable dt = new DataTable();
                da.Fill(dt);

                gvMovies.DataSource = dt;
                gvMovies.DataBind();
            
        }

        protected void gvMovies_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvMovies.EditIndex = e.NewEditIndex;
            LoadMovies();
        }

        protected void gvMovies_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvMovies.EditIndex = -1;
            LoadMovies();
        }


        protected void gvMovies_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
          
            int id = Convert.ToInt32(gvMovies.DataKeys[e.RowIndex].Value);

            GridViewRow row = gvMovies.Rows[e.RowIndex];

            TextBox txtMovieName = (TextBox)row.FindControl("txtMovieName");
            TextBox txtGenre = (TextBox)row.FindControl("txtGenre");
            TextBox txtPrice = (TextBox)row.FindControl("txtPrice");

            SqlConnection con = new SqlConnection(cs);
            
                SqlCommand cmd = new SqlCommand(
                    "UPDATE movie SET moviename=@name, genre=@genre, price=@price WHERE movie_id=@id",
                    con);

                cmd.Parameters.AddWithValue("@name", txtMovieName.Text);
                cmd.Parameters.AddWithValue("@genre", txtGenre.Text);
                cmd.Parameters.AddWithValue("@price", txtPrice.Text);
                cmd.Parameters.AddWithValue("@id", id);

                con.Open();
                cmd.ExecuteNonQuery();
            

            gvMovies.EditIndex = -1;
            LoadMovies();
        }



        protected void gvMovies_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(gvMovies.DataKeys[e.RowIndex].Value);

            SqlConnection con = new SqlConnection(cs);
            
                 string sql1 = "SELECT COUNT(*) FROM book WHERE movie_id=@id"
                SqlCommand checkCmd = new SqlCommand(sql1, con);

                checkCmd.Parameters.AddWithValue("@id", id);

                con.Open();
                int count = (int)checkCmd.ExecuteScalar();

                if (count > 0)
                {
                    ScriptManager.RegisterStartupScript(
                        this, GetType(), "alert",
                        "alert('This movie is already booked. You cannot delete it.');",
                        true);
                    return;
                }

            String sql2 = "DELETE FROM movie WHERE movie_id=@id";
                SqlCommand delCmd = new SqlCommand(sql2, con);

                delCmd.Parameters.AddWithValue("@id", id);
                delCmd.ExecuteNonQuery();
            

            LoadMovies();
        }



        protected void gvMovies_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                foreach (Control ctrl in e.Row.Cells[e.Row.Cells.Count - 1].Controls)
                {
                    if (ctrl is LinkButton btn)
                    {
                        btn.CssClass = "action-btn";

                        if (btn.CommandName == "Edit" || btn.CommandName == "Update")
                            btn.CssClass += " edit";
                        else if (btn.CommandName == "Delete" || btn.CommandName == "Cancel")
                            btn.CssClass += " delete";
                    }
                }
            }
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin.aspx");
        }
    }
}
