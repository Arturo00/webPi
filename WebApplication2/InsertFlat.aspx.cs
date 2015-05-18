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
    public partial class InsertFlat : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonInsert_Click(object sender, EventArgs e)
        {
            string cnx2 = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|PisosDB.mdf;Integrated Security=True;User Instance=True";
            Piso pis = new Piso();
            Piso pisaux = new Piso();

            pis.Alquilado = false;
            pis.Calle = TextBoxCalle.Text.Trim();
            pis.Ciudad = TextBoxCity.Text.Trim();
            pis.Codpos = Convert.ToInt32(TextBoxCodPos.Text);
            pis.Descripcion = TextBoxDescription.Text.Trim();
            pis.Eliminado = false;
            pis.Ocupantes = Convert.ToInt32(TextBoxPeople.Text);
            pis.Pais = "Spain";
            //revisar iduser
            pis.IdUser = 8;
            pis.Poblacion = TextBoxProvince.Text.Trim();


            pis.Precio = Convert.ToDecimal(TextBoxPrice.Text);
            pis.Puntuacion = 0;



            PisoBL.CreateFromEN(cnx2, pis);

            LabelError.Text = "Piso Introducido correctamente";
        }
    }
}