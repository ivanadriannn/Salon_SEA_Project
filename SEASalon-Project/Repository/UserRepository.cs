using SEASalon_Project.Factory;
using SEASalon_Project.Model;
using System;
using System.Linq;

namespace SEASalon_Project.Repository
{
    public class UserRepository
    {
        private static LocalDatabaseSalonSEAEntities db = new LocalDatabaseSalonSEAEntities();
        public static User FindUserByEmail(string email)
        {
            if (db.Users == null) return null;

            return db.Users.FirstOrDefault(x => x.UserEmail == email);
        }

        public static User FindRegisteredUser(string email, string password)
        {
            if (db.Users == null) return null;

            return db.Users.FirstOrDefault(x => x.UserEmail == email && x.UserPassword == password);
        }

        public static void InsertNewUser(string fullName, string email, string phoneNumber, string password)
        {
            User newUser = UserFactory.CreateUser(fullName, email, phoneNumber, password);
            if (newUser == null) return;

            db.Users.Add(newUser);
            db.SaveChanges();
        }

        public static string GetUserName(int userID)
        {
            User user = db.Users.Find(userID);
            return user?.FullName;
        }

        public static void UpdateUser(int userID, string fullName, string email, string phoneNumber, string password)
        {
            User oldUser = db.Users.Find(userID);
            if (oldUser == null) return;

            oldUser.FullName = fullName;
            oldUser.UserEmail = email;
            oldUser.UserPhone = phoneNumber;
            oldUser.UserPassword = password;

            db.SaveChanges();
        }
    }
}
