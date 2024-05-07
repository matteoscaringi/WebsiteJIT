using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WebsiteJIT_Domain.Business.Classes
{
    public class Voorbereiding
    {
        public int _id { get; set; }
        public int _medewerkerid { get; set; }
        public String _inhoud { get; set; }
        public double _duur { get; set; }

        //Constructor with ID
        public Voorbereiding(int id, int medewerkerid, String inhoud, double duur)
        {
            _id = id;
            _medewerkerid = medewerkerid;
            _inhoud = inhoud;
            _duur = duur;
        }

        //Constructor without ID
        public Voorbereiding(int medewerkerid, String inhoud, double duur)
        {
            _medewerkerid = medewerkerid;
            _inhoud = inhoud;
            _duur = duur;
        }
    }
}
