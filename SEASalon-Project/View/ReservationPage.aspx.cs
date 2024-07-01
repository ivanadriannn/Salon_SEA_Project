using SEASalon_Project.Controller;
using SEASalon_Project.Model;
using SEASalon_Project.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SEASalon_Project.View
{
    public partial class CartPage : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridView();
            }
        }

        protected void Btn_Reserve_Click(object sender, EventArgs e)
        {
            string serviceType = Ddl_ServisType.SelectedValue;
            string dateTime = Tb_DateTime.Text;

            // Buat reservasi menggunakan ReservationController
            ReservationController.CheckReservation(serviceType, dateTime);
            BindGridView();
        }

        private void BindGridView()
        {
            // Fetch reservations from database
            List<Reservation> reservations = ReservationRepository.GetAllReservations();

            // Bind to GridView
            GridViewReservations.DataSource = reservations;
            GridViewReservations.DataBind();
        }
    }
}