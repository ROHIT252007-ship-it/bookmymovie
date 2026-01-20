using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bookmymovie
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddMovie_Click(object sender, EventArgs e)
        {
            Response.Redirect("addmovie.aspx");
        }

        protected void btnShowMovies_Click(object sender, EventArgs e)
        {
            Response.Redirect("showmovie.aspx");
        }

        protected void btnShowBookings_Click(object sender, EventArgs e)
        {
            Response.Redirect("showbooking.aspx");
        }
    }
}