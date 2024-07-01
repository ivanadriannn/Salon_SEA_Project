using SEASalon_Project.Handler;
using SEASalon_Project.Model;
using SEASalon_Project.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SEASalon_Project.Controller
{
    public class RatingController
    {
        public static string CheckSubmission(string customerName, string ratingValue, string comment)
        {
            if (string.IsNullOrWhiteSpace(customerName))
            {
                return "Customer name cannot be empty.";
            }

            if (ratingValue == "0")
            {
                return "Please select a valid rating.";
            }

            if (string.IsNullOrWhiteSpace(comment))
            {
                return "Comment cannot be empty.";
            }

            // Call handler to insert rating into the database
            RatingHandler.InsertRating(customerName, ratingValue, comment);

            // Return success message if all validation passes
            return "Rating submitted successfully.";
        }
    }
}
