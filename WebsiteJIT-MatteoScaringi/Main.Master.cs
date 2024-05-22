using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebsiteJIT_MatteoScaringi
{
    public partial class Main : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void homeButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        protected void serviceButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Services.aspx");
        }

        protected void aanmeldButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Inloggen.aspx");
        }
    }
}