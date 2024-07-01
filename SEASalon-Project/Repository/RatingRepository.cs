using SEASalon_Project.Factory;
using SEASalon_Project.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SEASalon_Project.Repository
{
    public class RatingRepository
    {
        private static LocalDatabaseSalonSEAEntities db = new LocalDatabaseSalonSEAEntities();
        public static void InsertNewRating(string customerName, string ratingValue, string comment)
        {
            Rating newRating = RatingFactory.CreateRating(customerName, ratingValue, comment);
            if (newRating == null) return;

            db.Ratings.Add(newRating);
            db.SaveChanges();
        }

        public static List<Rating> GetAllRatings()
        {
            return db.Ratings.ToList();
        }
    }
}