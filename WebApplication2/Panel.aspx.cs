using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Formulario_web13 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session.IsNewSession)
            {
                Response.Redirect("~/Account/Login.aspx");
            }
        }

        protected void ButtonInsert_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/InsertFlat.aspx");
        }

        protected void ButtonCuenta_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Account/AccountPanel.aspx");
        }

        protected void ButtonPisos_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/MyFlat.aspx");
        }

        protected void ButtonCerrar_Click(object sender, EventArgs e)
        {
            Session["userId"] = null;
            Session["email"] = null;
            Session["LoggedIn"] = null;
            Session.Clear();
            Session.Abandon();
            Session.RemoveAll();

            Response.Redirect("~/Default.aspx");
        }


    }
}