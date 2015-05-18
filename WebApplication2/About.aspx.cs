using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LibreriaPisos.BL;
using LibreriaPisos.EN;
using LibreriaPisos.CAD;
using System.Data.SqlClient;
using LibreriaPisos.Utilities;

namespace WebApplication2
{
    public partial class Formulario_web11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int j = 0;
            //string conex = "Data Source=.\SQLEXPRESS;AttachDbFilename=\"C:\Documents and Settings\Administrador\Escritorio\Backup hada\WebApplication2\WebApplication2\App_Data\PisosDB.mdf\";Integrated Security=True;User Instance=True";
            string cnx2 = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|PisosDB.mdf;Integrated Security=True;User Instance=True";
            
            User us = new User();
            us.Nombre = "gfbv";
            us.Email = "lalalal@gmail.com";
            us.Password = "lol";

            
            
           // UserBL.Delete(cnx2, 1);
            UserBL.CreateFromEN(cnx2, us);
            
        }
    }
}