using SEASalon_Project.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SEASalon_Project.View
{
    public partial class General : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            User Logged = (User)Session["UserData"];

            if (Logged == null)
            {
                Hl_Login.Visible = true;
                Hl_Register.Visible = true;
                Lbl_Profile.Visible = false;
                Btn_Profile.Visible = false;

                return;
            }
            else if (Logged.UserRole == "Customer")
            {
                Hl_Login.Visible = false;
                Hl_Register.Visible = false;
                Hl_Reservation.Visible = true;
                Hl_Logout.Visible = true;
                //Transaction Link to Transaction Page
                Lbl_Profile.Visible = true;
                Btn_Profile.Visible = true;

                Lbl_Profile.Text = "Hi, " + Logged.FullName;
            }
            else if (Logged.UserRole == "Admin")
            {
                Hl_Branch.Visible = true;
                Hl_Login.Visible = false;
                Hl_Register.Visible = false;
                //Transaction Link to Transaction Report
                Lbl_Profile.Visible = true;
                Btn_Profile.Visible = true;
                Hl_Logout.Visible = true;

                Lbl_Profile.Text = "Hi, " + Logged.FullName;
            }
        }

        protected void Img_Salon_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }

        protected void Btn_Profile_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void Btn_Logout_Click(object sender, EventArgs e)
        {

        }
    }
}