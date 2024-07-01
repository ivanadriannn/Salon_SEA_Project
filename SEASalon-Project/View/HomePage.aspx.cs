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
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridView();
            }
        }

        protected void Btn_SubmitRating_Click(object sender, EventArgs e)
        {
            string customerName = Tb_CustomerName.Text;
            string ratingValue = Ddl_Rating.SelectedValue;
            string comment = Tb_Comment.Text;

            // Insert rating into database
            string submissionStatus = RatingController.CheckSubmission(customerName, ratingValue, comment);

            if (submissionStatus == "Rating submitted successfully.")
            {
                // Optionally display the submitted rating value
                submissionStatus += $" Rating Value: {ratingValue}";
                Lbl_RatingStatus.ForeColor = System.Drawing.Color.White;

                // Clear form fields
                Tb_CustomerName.Text = "";
                Ddl_Rating.SelectedIndex = 0;
                Tb_Comment.Text = "";

                // Reload and bind ratings to GridView
                BindGridView();
            }
            else
            {
                Lbl_RatingStatus.ForeColor = System.Drawing.Color.Red;
            }

            Lbl_RatingStatus.Text = submissionStatus;
        }

        private void BindGridView()
        {
            // Fetch ratings from database
            List<Rating> ratings = RatingRepository.GetAllRatings();

            // Bind to GridView
            GridViewRatings.DataSource = ratings;
            GridViewRatings.DataBind();
        }
    }
}