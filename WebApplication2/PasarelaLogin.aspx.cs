using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Formulario_web12 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session.IsNewSession)
            {
                Response.Redirect("~/Account/Login.aspx");
            }
            else
            {
                Response.Redirect("~/Account/AccountPanel.aspx");
            }
        }
    }
}