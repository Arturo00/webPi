﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using LibreriaPisos.BL;
using LibreriaPisos.EN;

namespace WebApplication2
{
    public partial class Formulario_web11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int j = 0;
            //string conex = "Data Source=.\SQLEXPRESS;AttachDbFilename=\"C:\Documents and Settings\Administrador\Escritorio\Backup hada\WebApplication2\WebApplication2\App_Data\PisosDB.mdf\";Integrated Security=True;User Instance=True";
            string cnx2 = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|PisosDB.mdf;Integrated Security=True;User Instance=True";
            
            Piso us = new Piso();
            us.IdUser = 1;

            PisoBL.CreateFromEN(cnx2, us);
            
           // UserBL.Delete(cnx2, 1);
            //UserBL.CreateFromEN(cnx2, us);
            
        }
    }
}