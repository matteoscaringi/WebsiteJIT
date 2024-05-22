using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebsiteJIT_Domain.Business;
using WebsiteJIT_Domain.Business.Classes;

namespace WebsiteJIT_MatteoScaringi
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        private Controller _controller = new Controller();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["loggedin"] != null && (bool)Session["loggedin"])
            {
                RoleCheck();
            }
            else
            {
                if (!IsPostBack && Request.UrlReferrer == null)
                {
                    // Check if the session variable "redirected" is null or false
                    if (Session["redirected"] == null || !(bool)Session["redirected"])
                    {
                        // Set the session variable "redirected" to true
                        Session["redirected"] = true;
                        Response.Redirect("Inloggen.aspx");
                    }
                }
            }
        }

        protected async void btnLogin_Click(object sender, EventArgs e)
        {
            await LoginHandler();
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

        private void LoginHandler()
        {
            List<Aanmelden> gegevens = new List<Aanmelden>();

            Session.Clear();

            gegevens = await _controller.getLoginGegevens(txtUsername.Text);

            if (gegevens.Any(a => a._email == txtUsername.Text && a._wachtwoord == txtPassword.Text))
            {
                int role = gegevens.FirstOrDefault(a => a._email == txtUsername.Text && a._wachtwoord == txtPassword.Text)._rol;

                Session["role"] = role;

                RoleCheck();
            }
            else
            {
                Response.Redirect("Inloggen.aspx");
            }
        }
    }
}