using SEASalon_Project.Factory;
using SEASalon_Project.Handler;
using SEASalon_Project.Model;
using SEASalon_Project.View;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SEASalon_Project.Controller
{
    public class BranchController
    {
        public static string CheckBranch(string name, string location, string open, string close)
        {
            if (string.IsNullOrEmpty(name) || string.IsNullOrEmpty(location) || string.IsNullOrEmpty(open) || string.IsNullOrEmpty(close))
            {
                return "All fields are required.";
            }

            BranchHanlder.InsertBranch(name, location, open, close);

            return "Branch has been created!";
        }
    }
}