using SEASalon_Project.Factory;
using SEASalon_Project.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SEASalon_Project.Repository
{
    public class BranchRepository
    {
        private static LocalDatabaseSalonSEAEntities db = new LocalDatabaseSalonSEAEntities();
        public static void InsertNewBranch(string name, string location, string open, string close)
        {
            Location newLocation = BranchFactory.CreateBranch(name, location, open, close);
            if (newLocation == null) return;

            db.Locations.Add(newLocation);
            db.SaveChanges();
        }

        public static List<Location> GetAllLocations()
        {
            return db.Locations.ToList();
        }
    }
}