using SEASalon_Project.Model;
using SEASalon_Project.Repository;

namespace SEASalon_Project.Handler
{
    public class UserHandler
    {
        public static void UpdateUser(int userID, string fullName, string email, string phoneNumber, string password)
        {
            UserRepository.UpdateUser(userID, fullName, email, phoneNumber, password);
        }

        public static User FindUserByEmail(string email)
        {
            return UserRepository.FindUserByEmail(email);
        }

        public static void InsertUser(string fullName, string email, string phoneNumber, string password)
        {
            UserRepository.InsertNewUser(fullName, email, phoneNumber, password);
        }

        public static User FindRegisteredUser(string email, string password)
        {
            return UserRepository.FindRegisteredUser(email, password);
        }

        public static string GetUserName(int userID)
        {
            return UserRepository.GetUserName(userID);
        }
    }
}
