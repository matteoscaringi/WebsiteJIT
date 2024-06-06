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
            }
        }

        protected async void InschrijvingGrid_SelectedIndexChanged(object sender, EventArgs e)
        {
            await LoadInschrijvingen();
        }

        private async Task LoadInschrijvingen()
        {
            List<Inschrijving> data = await _controller.getAllInschrijvingen();
            InschrijvingGrid.DataSource = data;
            InschrijvingGrid.DataBind();
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