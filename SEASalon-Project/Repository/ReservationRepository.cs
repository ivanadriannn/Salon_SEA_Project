using SEASalon_Project.Factory;
using SEASalon_Project.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SEASalon_Project.Repository
{
    public class ReservationRepository
    {
        private static LocalDatabaseSalonSEAEntities db = new LocalDatabaseSalonSEAEntities();
        public static void InsertNewReservation(string serviceType, string dateTime)
        {
            Reservation newReservation = ReservationFactory.CreateReservation(serviceType, dateTime);
            if (newReservation == null) return;

            db.Reservations.Add(newReservation);
            db.SaveChanges();
        }
        public static List<Reservation> GetAllReservations()
        {
            return db.Reservations.ToList();
        }
    }
}