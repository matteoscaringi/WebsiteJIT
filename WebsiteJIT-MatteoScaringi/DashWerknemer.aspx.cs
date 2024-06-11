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
    public partial class DashWerknemer : System.Web.UI.Page
    {
        Controller _controller = new Controller();

        protected async void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                await LoadInschrijvingen();
                await LoadVoorbereidingen();
                await LoadAanmelden();
            }
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

        protected async void VoorbereidingGrid_SelectedIndexChanged(object sender, EventArgs e)
        {
            await LoadVoorbereidingen();

            int selectedIndex = VoorbereidingGrid.SelectedIndex;
            int selectedId = Convert.ToInt32(VoorbereidingGrid.DataKeys[selectedIndex].Value);

            Session["SelectedIDVoorbereiding"] = selectedId;

            boxIDVoorber.Text = VoorbereidingGrid.SelectedRow.Cells[1].Text.ToString();
            boxMedewerkerID.Text = VoorbereidingGrid.SelectedRow.Cells[2].Text.ToString();
            boxInhoud.Text = VoorbereidingGrid.SelectedRow.Cells[3].Text.ToString();
            boxDuur.Text = VoorbereidingGrid.SelectedRow.Cells[4].Text.ToString();
        }

        protected async void GebruikerGrid_SelectedIndexChanged(object sender, EventArgs e)
        {
            await LoadAanmelden();

            int selectedIndex = GebruikerGrid.SelectedIndex;
            int selectedId = Convert.ToInt32(GebruikerGrid.DataKeys[selectedIndex].Value);

            Session["SelectedIDGebruiker"] = selectedId;

            boxId.Text = GebruikerGrid.SelectedRow.Cells[1].Text.ToString();
            boxNaam.Text = GebruikerGrid.SelectedRow.Cells[2].Text.ToString();
            boxTelNr.Text = GebruikerGrid.SelectedRow.Cells[3].Text.ToString();
            boxAdres.Text = GebruikerGrid.SelectedRow.Cells[4].Text.ToString();
            boxEmail.Text = GebruikerGrid.SelectedRow.Cells[5].Text.ToString();
            boxWachtwoord.Text = GebruikerGrid.SelectedRow.Cells[6].Text.ToString();
            boxRol.Text = GebruikerGrid.SelectedRow.Cells[7].Text.ToString();

        }

        private async Task LoadInschrijvingen()
        {
            //Load inschriijvingdata
            List<Inschrijving> Inschrijvingdata = await _controller.getAllInschrijvingen();
            InschrijvingGrid.DataSource = Inschrijvingdata;
            InschrijvingGrid.DataBind();
        }

        private async Task LoadVoorbereidingen()
        {
            //Load voorbereidingdata
            List<Voorbereiding> voorbereidingData = await _controller.getAllVoorbereidingen();
            VoorbereidingGrid.DataSource = voorbereidingData;
            VoorbereidingGrid.DataBind();
        }

        private async Task LoadAanmelden()
        {
            //Load aanmelddata
            List<Aanmelden> aanmeldData = await _controller.getAllGebruikers();
            GebruikerGrid.DataSource = aanmeldData;
            GebruikerGrid.DataBind();
        }

        protected async void btnDelete_Click(object sender, EventArgs e)
        {
            await _controller.deleteInschrijving(Convert.ToInt32(Session["SelectedIDInschrijving"]));

            await LoadInschrijvingen();
        }

        protected async void btnDeleteVoorber_Click(object sender, EventArgs e)
        {
            await _controller.deleteVoorbereiding(Convert.ToInt32(Session["SelectedIDVoorbereiding"]));

            await LoadVoorbereidingen();
        }

        protected async void btnDeleteGebruiker_Click(object sender, EventArgs e)
        {
            await _controller.deleteGebruiker(Convert.ToInt32(Session["SelectedIDGebruiker"]));

            await LoadAanmelden();
        }

        protected void btnAddInschr_Click(object sender, EventArgs e)
        {
            _controller.addInschrijving(calDatum.SelectedDate, Convert.ToInt32(boxVoorbereidNr.Text), Convert.ToInt32(boxAanmeldID.Text));

            LoadInschrijvingen();
        }

        protected void btnEditInschr_Click(object sender, EventArgs e)
        {
            _controller.alterInschrijving(Convert.ToInt32(Session["SelectedIDInschrijving"]), calDatum.SelectedDate, Convert.ToInt32(boxVoorbereidNr.Text), Convert.ToInt32(boxAanmeldID.Text));
        }
    }
}