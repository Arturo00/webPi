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
    public partial class UserInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string cnx2 = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|PisosDB.mdf;Integrated Security=True;User Instance=True";

            if (!IsPostBack)
            {


                int id = Int32.Parse(Request.QueryString["id"]);

                User pi = UserBL.GetByIdToEN(cnx2, id);

                LabelEmailDB.Text = pi.Email;
                LabelPhoneDB.Text = Convert.ToString(pi.Telefono);
                LabelLastNameDB.Text = pi.Apellidos;
                LabelNameDB.Text = pi.Nombre;

            }
        }
    }
}
