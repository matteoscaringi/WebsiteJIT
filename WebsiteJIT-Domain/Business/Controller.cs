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
        //getWerknemers method to get all werknemers from the database.
        public async Task<List<Aanmelden>> getWerknemers()
        {
            PersistAanmelden persistAanmelden = new PersistAanmelden(); 

            return await persistAanmelden.getWerknemers();
        }

        //addWerknemer method to add a new werknemer to the database.
        public async Task addWerknemer(Aanmelden werknemer)
        {
            PersistAanmelden persistAanmelden = new PersistAanmelden();

            await persistAanmelden.addWerknemer(werknemer);
        }

        //deleteWerknemer method to delete a werknemer from the database.
        public async Task deleteWerknemer(int id)
        {
            PersistAanmelden persistAanmelden = new PersistAanmelden();

            await persistAanmelden.deleteWerknemer(id);
        }
    }
}
