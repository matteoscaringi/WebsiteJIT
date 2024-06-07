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
        }

        protected async void VoorbereidingGrid_SelectedIndexChanged(object sender, EventArgs e)
        {
            await LoadVoorbereidingen();
        }

        protected async void GebruikerGrid_SelectedIndexChanged(object sender, EventArgs e)
        {
            await LoadAanmelden();
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

        protected async void InschrijvingGrid_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int rowIndex = e.RowIndex;
            int id = Convert.ToInt32(InschrijvingGrid.DataKeys[rowIndex].Values["_id"]);
            await _controller.deleteInschrijving(id);
            await LoadInschrijvingen();
        }
    }
}