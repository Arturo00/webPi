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

            if (Session["LoggedIn"] == null)
                Response.Redirect("/Account/Login.aspx");
            
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
            pis.IdUser = Convert.ToInt32(Session["userId"]);
            pis.Poblacion = TextBoxProvince.Text.Trim();

            
            pis.Precio = Convert.ToDecimal(TextBoxPrice.Text);
            pis.Puntuacion = 0;
            if (FileUploadPhoto.HasFile) {

                FileUploadPhoto.PostedFile.SaveAs(Server.MapPath("~/Images/") + FileUploadPhoto.FileName);
                pis.ImgPiso = "/Images/" + FileUploadPhoto.FileName;
            }
           
            
                PisoBL.CreateFromEN(cnx2, pis);
           
                LabelError.Text = "Piso Introducido correctamente";
        }
    }
}