using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebsiteJIT_Domain.Business.Classes;
using WebsiteJIT_Domain.Business;
using WebsiteJIT_Domain.Business.Classes;

namespace WebsiteJIT_MatteoScaringi
{
    public partial class DashKlant : System.Web.UI.Page
    {
        Controller _controller = new Controller();

        protected async void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                if (Session["ingelogd"] == null || !Session["ingelogd"].Equals(true))
                {
                    Response.Redirect("Inloggen.aspx");
                }
            }

            if (!IsPostBack)
            {
                await LoadInschrijvingen();
            }
        }

        private async Task LoadInschrijvingen()
        {
            //Load inschriijvingdata
            List<Inschrijving> Inschrijvingdata = await _controller.getAllInschrijvingen();
            InschrijvingGrid.DataSource = Inschrijvingdata;
            InschrijvingGrid.DataBind();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {

        }

        protected void btnEditInschr_Click(object sender, EventArgs e)
        {

        }

        protected void btnAddInschr_Click(object sender, EventArgs e)
        {

        }

        protected async void InschrijvingGrid_SelectedIndexChanged(object sender, EventArgs e)
        {
            await LoadInschrijvingen();

            int selectedIndex = InschrijvingGrid.SelectedIndex;
            int selectedId = Convert.ToInt32(InschrijvingGrid.DataKeys[selectedIndex].Value);

            Session["SelectedIDInschrijving"] = selectedId;

            boxIdInschr.Text = InschrijvingGrid.SelectedRow.Cells[1].Text.ToString();
            boxVoorbereidNr.Text = InschrijvingGrid.SelectedRow.Cells[3].Text.ToString();
            boxAanmeldID.Text = InschrijvingGrid.SelectedRow.Cells[4].Text.ToString();
            calDatum.SelectedDate = DateTime.Parse(InschrijvingGrid.SelectedRow.Cells[2].Text);
            calDatum.VisibleDate = calDatum.SelectedDate;
        }
    }
}
