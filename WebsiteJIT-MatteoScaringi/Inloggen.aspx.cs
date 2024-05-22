using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebsiteJIT_MatteoScaringi
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((bool)Session["loggedin"])
            {
                RoleCheck();
            }
            else
            {
                Response.Redirect("Inloggen.aspx");
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {

        }

        private void RoleCheck()
        {
            if (/*Session["role"] != null && */ (int)Session["role"] == 1)
            {
                Response.Redirect("DashWerknemer.aspx");
            }
            else if (/*Session["role"] != null && */ (int)Session["role"] == 0)
            {
                Response.Redirect("DashKlant.aspx");
            }
        }
    }
}