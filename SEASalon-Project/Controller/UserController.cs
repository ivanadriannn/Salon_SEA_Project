using SEASalon_Project.Handler;
using SEASalon_Project.Model;
using System;
using System.Linq;

namespace SEASalon_Project.Controller
{
    public class UserController
    {
        public static string RegisterAuth(string fullName, string email, string phoneNumber, string password)
        {
            if (string.IsNullOrEmpty(fullName) || string.IsNullOrEmpty(email) || string.IsNullOrEmpty(phoneNumber) || string.IsNullOrEmpty(password))
            {
                return "All fields must be filled!";
            }
            else if (IsDuplicateEmail(email))
            {
                return "Email has already been used.";
            }
            else if (!password.Any(char.IsLetter) || !password.Any(char.IsDigit))
            {
                return "Password must be alphanumeric.";
            }
            else if (fullName.Length < 5 || fullName.Length > 50)
            {
                return "Full Name must be between 5 and 50 characters.";
            }

            UserHandler.InsertUser(fullName, email, phoneNumber, password);

            return "Account has been registered.";
        }

        public static string LoginAuth(string email, string password)
        {
            if (string.IsNullOrEmpty(email) || string.IsNullOrEmpty(password))
            {
                return "All fields must be filled!";
            }
            else if (CheckRegisteredUser(email, password) == null)
            {
                return "Wrong Credentials.";
            }

            return "Login Success.";
        }

        public static User CheckRegisteredUser(string email, string password)
        {
            return UserHandler.FindRegisteredUser(email, password);
        }

        public static bool IsDuplicateEmail(string email)
        {
            User user = UserHandler.FindUserByEmail(email);
            return user != null;
        }

        public static User GetUser(string email)
        {
            return UserHandler.FindUserByEmail(email);
        }

        public static string GetUserName(int userID)
        {
            return UserHandler.GetUserName(userID);
        }
    }
}
