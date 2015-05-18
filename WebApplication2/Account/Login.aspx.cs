using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LibreriaPisos.BL;
using LibreriaPisos.EN;



namespace WebApplication2.Account
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
            string cnx2 = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|PisosDB.mdf;Integrated Security=True;User Instance=True";
            bool autenticado = false;

            User us = new User();
            User notas = new User();

            us.Email = TextBoxUserName.Text.Trim();
            us.Password = TextBoxPassword.Text.Trim();

            notas = UserBL.GetUserByMail(cnx2, us.Email);

            if (notas.Password == us.Password)
            {
                autenticado = true;

            }

            if (autenticado == true)
            {
                //Session.Clear();
                Session.Add("Email", notas.Email);
                Response.Redirect("~/Default.aspx");
                LabelError.Text = notas.Nombre;
            }
            else
            {
                LabelError.Text = "Contraseña/email incorrectos";
            }
        }
    }
}