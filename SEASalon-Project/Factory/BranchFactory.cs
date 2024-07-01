using SEASalon_Project.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SEASalon_Project.Factory
{
    public class BranchFactory
    {
        public static Location CreateBranch(string name, string location, string open, string close)
        {
            return new Location
            {
                BranchName = name,
                BranchLocation = location,
                OpeningTime = open,
                ClosingTime = close
            };
        }
    }
}