using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LibreriaPisos.BL;
using LibreriaPisos.EN;
using System.Web.Security;



namespace WebApplication2.Account
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session.IsNewSession || Session["LogguedIn"] != null)
            {

               
                
            }
            else {

                if (Session["LoggedIn"] != null)
                {
                    Response.Redirect("~/Panel.aspx");
                }
             
            }

        }

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
            string cnx2 = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|PisosDB.mdf;Integrated Security=True;User Instance=True";
            bool autenticado = false;
            int id = 0;
            User us = new User();
            User notas = new User();

            us.Email = TextBoxUserName.Text.Trim();
            us.Password = TextBoxPassword.Text.Trim();

            notas = UserBL.GetUserByMail(cnx2, us.Email);



            if(notas == null)
                Response.Redirect("/Account/Login.aspx");
            if (notas.Password == us.Password)
            {

                us = notas;
                autenticado = true;

            }
            else
            {
                Response.Redirect("/Account/Login.aspx");
            }

            if (autenticado)
            {
                Session.Clear();

                Session["email"] = notas.Email;
                Session["userId"] = notas.Id;
                Session["LoggedIn"] = true;

                HttpCookie myCookie = new HttpCookie("myCookie");
                Boolean remember = CheckBoxRememberMe.Checked;

                if (remember)
                {
                    Int32 persistDays = 30;
                    myCookie.Expires = DateTime.Now.AddDays(persistDays);
                }
                Response.Cookies.Add(myCookie);
            
                Response.Redirect("~/Panel.aspx");
            }
            else
            {
                LabelError.Text = "Contraseña/email incorrectos";
            }    
        }
    }
}