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

        }

        protected async void btnLogin_Click(object sender, EventArgs e)
        {
            string gebruikersnaam = await _controller.getGebruikersnaam(txtUsername.Text);
            string wachtwoord = await _controller.getWachtwoord(txtUsername.Text);


            if (txtUsername.Text == gebruikersnaam && txtPassword.Text == wachtwoord)
            {
                Session["role"] = await _controller.getRol(gebruikersnaam);
                Session["id"] = await _controller.getId(gebruikersnaam);

                if (Convert.ToInt32(Session["role"]) == 1)
                {
                    Response.Redirect("DashWerknemer.aspx");
                }
                else if (Convert.ToInt32(Session["role"]) ==0)
                {
                    Response.Redirect("DashKlant.aspx");
                }
            }
        }
    }
}