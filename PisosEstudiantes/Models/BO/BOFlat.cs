using PisosEstudiantes.Models.DAO;
using PisosEstudiantes.Models.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PisosEstudiantes.Models.BO
{
    public class BOFlat : IFlat
    {
        private DAOFlat df = new DAOFlat();
        public List<Flat> getFlatsByProvince(string city)
        {
            return df.getFlatsByProvince(city);
        }

        public List<Flat> getLastFlats()
        {
            return df.getLastFlats();
        }
    }
}