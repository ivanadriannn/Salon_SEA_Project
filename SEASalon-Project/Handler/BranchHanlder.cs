using SEASalon_Project.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SEASalon_Project.Handler
{
    public class BranchHanlder
    {
        public static void InsertBranch(string name, string location, string open, string close)
        {
            BranchRepository.InsertNewBranch(name, location, open, close);
        }
    }
}