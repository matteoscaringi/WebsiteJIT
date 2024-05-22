using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WebsiteJIT_Domain.Persistence;
using WebsiteJIT_Domain.Business.Classes;
using WebsiteJIT_Domain.Persistence.Categories;

namespace WebsiteJIT_Domain.Business
{
    public class Controller
    {
        //Conectionstring in business layer to avoid 3 seperate vaeriables in the persistence layer.
        private string _connectionString = @"server=localhost;user id=root;persistsecurityinfo=True;database=project;password=test123";


        ////////////////////////////////////////////////////////////////////////////////////////////////////////
        // All fucntions for the user class.                                                                  //
        ////////////////////////////////////////////////////////////////////////////////////////////////////////

        public async Task<List<Aanmelden>> getAllGebruikers()
        {
            PersistAanmelden persistAanmelden = new PersistAanmelden(); 

            return await persistAanmelden.getAllGebruikers(_connectionString);
        }

        public async Task addGebruiker(string naam, string telnr, string adres, string email, string wachtwoord, int rol)
        {
            PersistAanmelden persistAanmelden = new PersistAanmelden();

            Aanmelden gebruiker = new Aanmelden(naam, telnr, adres, email, wachtwoord, rol);

            await persistAanmelden.addGebruiker(gebruiker, _connectionString);
        }

        public async Task deleteGebruiker(int id)
        {
            PersistAanmelden persistAanmelden = new PersistAanmelden();

            await persistAanmelden.deleteGebruiker(id, _connectionString);
        }

        ////////////////////////////////////////////////////////////////////////////////////////////////////////
        // All fucntions for the inschrijving class.                                                          //
        ////////////////////////////////////////////////////////////////////////////////////////////////////////

        public async Task<List<Inschrijving>> getAllInschrijvingen()
        {
            PersistInschrijving persistInschrijving = new PersistInschrijving();

            return await persistInschrijving.getAllInschrijvingen(_connectionString);
        }

        public async Task addInschrijving(DateTime datum, int voorbereidingid, int aanmeldid)
        {
            PersistInschrijving persistInschrijving = new PersistInschrijving();

            Inschrijving inschrijving = new Inschrijving(datum, voorbereidingid, aanmeldid);

            await persistInschrijving.addInschrijving(inschrijving, _connectionString);
        }

        public async Task deleteInschrijving(int id)
        {
            PersistInschrijving persistInschrijving = new PersistInschrijving();

            await persistInschrijving.deleteInschrijving(id, _connectionString);
        }

        ////////////////////////////////////////////////////////////////////////////////////////////////////////
        // All fucntions for the voorbereiding class.                                                         //
        ////////////////////////////////////////////////////////////////////////////////////////////////////////

        public async Task<List<Voorbereiding>> getAllVoorbereidingen()
        {
            PersistVoorbereiding persistVoorbereiding = new PersistVoorbereiding();

            return await persistVoorbereiding.getAllVoorbereidingen(_connectionString);
        }

        public async Task addVoorbereiding(int medewerkerid, string inhoud, int duur)
        {
            PersistVoorbereiding persistVoorbereiding = new PersistVoorbereiding();

            Voorbereiding voorbereiding = new Voorbereiding(medewerkerid, inhoud, duur);

            await persistVoorbereiding.addVoorbereiding(voorbereiding, _connectionString);
        }

        public async Task deleteVoorbereiding(int id)
        {
            PersistVoorbereiding persistVoorbereiding = new PersistVoorbereiding();

            await persistVoorbereiding.deleteVoorbereiding(id, _connectionString);
        }
    }
}
