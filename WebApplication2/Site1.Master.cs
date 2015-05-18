using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                if (Session.IsNewSession)
                {
                    Label1.Text = "Login";
                }
                else
                    Label1.Text = Convert.ToString(Session["email"]);

            }
            else
                Label1.Text = "Login";
           
        }
    }
}