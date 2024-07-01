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
    public partial class BranchPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridView();
            }
        }

        protected void Btn_AddBranch_Click(object sender, EventArgs e)
        {
            string name = Tb_BranchName.Text;
            string location = Tb_BranchLocation.Text;
            string open = Tb_OpeningTime.Text;
            string close = Tb_ClosingTime.Text;

            BranchController.CheckBranch(name, location, open, close);
            BindGridView();
        }

        private void BindGridView()
        {
            // Fetch Branchs from database
            List<Location> locations = BranchRepository.GetAllLocations();

            // Bind to GridView
            GridViewBranchs.DataSource = locations;
            GridViewBranchs.DataBind();
        }
    }
}