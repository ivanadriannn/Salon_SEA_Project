using SEASalon_Project.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SEASalon_Project.Factory
{
    public class RatingFactory
    {
        public static Rating CreateRating(string customerName, string ratingValue, string comment)
        {
            return new Rating
            {
                CustomerName = customerName,
                Value = ratingValue,
                Comment = comment
            };
        }
    }
}