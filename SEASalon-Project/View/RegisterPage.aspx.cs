using SEASalon_Project.Controller;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SEASalon_Project.View
{
    public partial class RegisterPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Btn_Submit_Click(object sender, EventArgs e)
        {
            string name = Tb_Name.Text;
            string email = Tb_Email.Text;
            string phone = Tb_Phone.Text;
            string password = Tb_Password.Text;
            Lbl_Status.Text = UserController.RegisterAuth(name, email, phone, password);

            if (Lbl_Status.Text == "Account has been registered.")
            {
                Lbl_Status.ForeColor = System.Drawing.Color.Green;
                Session["TempData"] = UserController.GetUser(name);
                Response.Redirect("LoginPage.aspx");
            }
            else
            {
                Lbl_Status.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}