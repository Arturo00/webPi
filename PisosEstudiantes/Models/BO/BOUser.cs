using PisosEstudiantes.Models.DAO;
using PisosEstudiantes.Models.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PisosEstudiantes.Models.BO
{
    public class BOUser:IUser
    {
        private DAOUser du = new DAOUser();
        public bool login(User u)
        {
            return du.login(u);
        }
        public bool register(User u)
        {
            return du.InsertarUsuario(u);
        }
        public bool checkPassword(User u)
        {
            return du.checkPassword(u);
        }
    }
}