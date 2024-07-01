using SEASalon_Project.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SEASalon_Project.Factory
{
    public class ReservationFactory
    {
        public static Reservation CreateReservation(string serviceType, string dateTime)
        {
            return new Reservation
            {
                ServisType = serviceType,
                DateTime = dateTime
            };
        }
    }
}