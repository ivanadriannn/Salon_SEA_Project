using SEASalon_Project.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SEASalon_Project.Handler
{
    public class ReservationHandler
    {
        public static void InsertReservation(string serviceType, string dateTime)
        {
            ReservationRepository.InsertNewReservation(serviceType, dateTime);
        }
    }
}