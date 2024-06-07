using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WebsiteJIT_Domain.Business.Classes
{
    public class Aanmelden
    {
        public int _id { get; set; }
        public String _naam { get; set; }
        public String _telnr { get; set; }
        public String _adres { get; set; }
        public String _email { get; set; }
        public String _wachtwoord { get; set; }
        public String _rol { get; set; }

        //Empty constructor
        public Aanmelden()
        {
        }

        //Constructor with ID
        public Aanmelden(int id, String naam, String telnr, String adres, String email, String wachtwoord, String rol)
        {
            _id = id;
            _naam = naam;
            _telnr = telnr;
            _adres = adres;
            _email = email;
            _wachtwoord = wachtwoord;
            _rol = rol;
        }

        //Constructor for the use of logging in
        public Aanmelden(String email, String wachtwoord, String rol)
        {
            _email = email;
            _wachtwoord = wachtwoord;
            _rol = rol;
        }

        //Constructor without ID
        public Aanmelden(String naam, String telnr, String adres, String email, String wachtwoord, String rol)
        {
            _naam = naam;
            _telnr = telnr;
            _adres = adres;
            _email = email;
            _wachtwoord = wachtwoord;
            _rol = rol;
        }
    }
}
