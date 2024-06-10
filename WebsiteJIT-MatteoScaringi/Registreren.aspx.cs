using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebsiteJIT_Domain.Business;

namespace WebsiteJIT_MatteoScaringi
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        Controller _controller = new Controller();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            _controller.addGebruiker(txtNaam.Text, txtTelefoonNummer.Text, txtAdres.Text, txtEmail.Text, txtWachtwoordBevestigen.Text, "klant");
        }
    }
}