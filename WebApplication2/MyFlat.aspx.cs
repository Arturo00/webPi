using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LibreriaPisos.EN;
using LibreriaPisos.BL;


namespace WebApplication2
{
    public partial class Formulario_web14 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string cnx2 = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|PisosDB.mdf;Integrated Security=True;User Instance=True";
            int idBorrar = -1;

            if (Request.QueryString["eliminar"] != null)
            {
                idBorrar = Int32.Parse(Request.QueryString["eliminar"]);
                if (idBorrar != -1)
                {
                    PisoBL.Delete(cnx2, idBorrar);

                }
            }
            int id = Convert.ToInt32(Session["userId"]);
            

            if (!IsPostBack)
            {
                List<Piso> listaPisos = PisoBL.GetPisoByIdUsers(cnx2, id);


                Repeater1.DataSource = listaPisos;
                Repeater1.DataBind();
            }
           
        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }
    }
}