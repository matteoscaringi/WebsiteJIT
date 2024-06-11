using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebsiteJIT_MatteoScaringi
{
    public partial class DashKlant : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ingelogd"] == null || !Session["ingelogd"].Equals(true))
            {
                Response.Redirect("Inloggen.aspx");
            }
        }
    }
}