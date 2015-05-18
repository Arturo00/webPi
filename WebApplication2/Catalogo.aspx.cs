using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LibreriaPisos.BL;
using LibreriaPisos.EN;

namespace WebApplication2
{
    public partial class Formulario_web1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string cnx2 = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|PisosDB.mdf;Integrated Security=True;User Instance=True";
            if (!IsPostBack)
            {
                List<Piso> listaPisos = PisoBL.GetByCiudad(cnx2, "alicante");


                Repeater1.DataSource = listaPisos;
                Repeater1.DataBind();
            }
            TextBox1.Text = "";
            TextBoxCod.Text = "";
        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string cnx2 = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|PisosDB.mdf;Integrated Security=True;User Instance=True";

             List<Piso> listaPisos;
             if (TextBoxCod.Text == "")
             {


                 listaPisos = PisoBL.GetByCiudad(cnx2, TextBox1.Text.Trim());

                 Repeater1.DataSource = listaPisos;
                 Repeater1.DataBind();


             }
             else
             {

                 listaPisos = PisoBL.GetUserByCodPos(cnx2, Convert.ToInt32(TextBoxCod.Text.Trim()));
                 Repeater1.DataSource = listaPisos;
                 Repeater1.DataBind();
             }
             
            
        }
    }
}