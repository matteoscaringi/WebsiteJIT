using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Text;
using System.Threading.Tasks;

namespace WebsiteJIT_Domain.Business.Classes
{
    public class Inschrijving
    {
        public int _id { get; set; }
        public DateTime _datum { get; set; }
        public int _voorbereidingid { get; set; }
        public int _aanmeldid { get; set; }

        //Empty constructor
        public Inschrijving()
        {

        }

        //Constructor with ID
        public Inschrijving(int id, DateTime datum, int voorbereidingid, int aanmeldid)
        {
            _id = id;
            _datum = datum;
            _voorbereidingid = voorbereidingid;
            _aanmeldid = _aanmeldid;
        }

        //Constructor whithout ID
        public Inschrijving(DateTime datum, int voorbereidingid, int aanmeldid)
        {
            _datum = datum;
            _voorbereidingid = voorbereidingid;
            _aanmeldid = _aanmeldid;
        }
    }
}
