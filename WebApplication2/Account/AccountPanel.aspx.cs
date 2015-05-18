using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LibreriaPisos.EN;
using LibreriaPisos.BL;


namespace WebApplication2.Account
{
    public partial class AccountPanel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string cnx2 = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|PisosDB.mdf;Integrated Security=True;User Instance=True";
            int id = 4;
            //recuperar id de la sesion
            User us = new User();

            us = UserBL.GetByIdToEN(cnx2, id);

            TextBoxCity.Text = us.Ciudad;
            TextBoxCodPos.Text = Convert.ToString(us.Codpos);


            TextBoxLastName.Text = us.Apellidos;
            TextBoxName.Text = us.Nombre;
            TextBoxPhone.Text = Convert.ToString(us.Telefono);
            TextBoxProvince.Text = us.Provincia;
            TextBoxUserName.Text = us.Usuario;

        }

        protected void ButtonModify_Click(object sender, EventArgs e)
        {
            string cnx2 = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|PisosDB.mdf;Integrated Security=True;User Instance=True";
            int id = 4;
            //recuperar id de la sesion

            User us2 = new User();
            us2 = UserBL.GetByIdToEN(cnx2, id);

            us2.Apellidos = TextBoxLastName.Text.Trim();
            us2.Ciudad = TextBoxCity.Text.Trim();
            us2.Codpos = Convert.ToInt32(TextBoxCodPos.Text);
            us2.Eliminado = false;

            us2.Nombre = TextBoxName.Text.Trim();

            us2.Propietario = false;
            us2.Provincia = TextBoxProvince.Text.Trim();
            us2.Telefono = Convert.ToInt32(TextBoxPhone.Text);
            us2.Usuario = TextBoxUserName.Text.Trim();

            UserBL.UpdateFromEN(cnx2, us2);

            LabelError.Text = "actualizado";
        }
    }
}