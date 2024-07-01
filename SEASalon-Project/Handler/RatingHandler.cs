using SEASalon_Project.Controller;
using SEASalon_Project.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SEASalon_Project.Handler
{
    public class RatingHandler
    {
        private RatingController ratingController = new RatingController();

        public static void InsertRating(string customerName, string ratingValue, string comment)
        {
            RatingRepository.InsertNewRating(customerName, ratingValue, comment);
        }
    }
}