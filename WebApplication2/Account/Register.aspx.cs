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
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonRegister_Click(object sender, EventArgs e)
        {
            string cnx2 = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|PisosDB.mdf;Integrated Security=True;User Instance=True";
            User us2 = new User();
            User usaux = new User();
            //bool valido = false;
            us2.Apellidos = TextBoxLastName.Text.Trim();
            us2.Ciudad = TextBoxCity.Text.Trim();
            us2.Codpos = Convert.ToInt32(TextBoxCodPos.Text);
            us2.Eliminado = false;
            us2.Email = TextBoxEmail.Text.Trim();
            us2.Nombre = TextBoxName.Text.Trim();
            us2.Password = TextBoxPassword.Text.Trim();
            us2.Propietario = false;
            us2.Provincia = TextBoxProvince.Text.Trim();
            us2.Telefono = Convert.ToInt32(TextBoxPhone.Text);
            us2.Usuario = TextBoxUserName.Text.Trim();


            usaux = UserBL.GetUserByMail(cnx2, us2.Email);
            if (usaux == null || usaux.Email != us2.Email)
                UserBL.CreateFromEN(cnx2, us2);
            else
                LabelError.Text = "El Email ya existe";

        }
    }
}