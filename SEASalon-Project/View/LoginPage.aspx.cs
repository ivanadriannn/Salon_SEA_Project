using SEASalon_Project.Controller;
using SEASalon_Project.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SEASalon_Project.View
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Btn_ShowPassword_Click(object sender, ImageClickEventArgs e)
        {
            string showImageUrl = ResolveUrl("~/Aset/show.png");
            string hideImageUrl = ResolveUrl("~/Aset/hide.png");

            string password = Tb_Password.Text;

            if (Btn_ShowPassword.Attributes["Show"] == "0")
            {
                Btn_ShowPassword.ImageUrl = hideImageUrl;
                Tb_Password.Attributes["type"] = "SingleLine";
                Btn_ShowPassword.Attributes["Show"] = "1";
            }
            else if (Btn_ShowPassword.Attributes["Show"] == "1")
            {
                Btn_ShowPassword.ImageUrl = showImageUrl;
                Tb_Password.Attributes["type"] = "password";
                Btn_ShowPassword.Attributes["Show"] = "0";
            }

            Tb_Password.Text = password;
        }

        protected void Btn_Submit_Click(object sender, EventArgs e)
        {
            string email = Tb_Email.Text;
            string password = Tb_Password.Text;
            Lbl_Status.Text = UserController.LoginAuth(email, password);

            if (Lbl_Status.Text == "Login Success.")
            {
                if (Cb_Cookies.Checked)
                {
                    HttpCookie cookie = new HttpCookie("UserLogged");
                    cookie.Value = UserController.CheckRegisteredUser(email, password).UserEmail;
                    cookie.Expires = DateTime.Now.AddDays(1);
                    Response.Cookies.Add(cookie);
                }
                Lbl_Status.ForeColor = System.Drawing.Color.Green;
                Session["UserData"] = UserController.CheckRegisteredUser(email, password);
                Response.Redirect("HomePage.aspx");
            }
            else
            {
                Lbl_Status.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}