using SEASalon_Project.Handler;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SEASalon_Project.Controller
{
    public class ReservationController
    {
        public static string CheckReservation(string serviceType, string dateTime)
        {
            if (string.IsNullOrEmpty(serviceType))
            {
                return "Please select a Service Type!";
            }

            if (string.IsNullOrEmpty(dateTime))
            {
                return "Please enter Date and Time!";
            }

            ReservationHandler.InsertReservation(serviceType, dateTime);

            return "Reservation has been created!";
        }
    }
}