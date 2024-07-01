using SEASalon_Project.Model;
using System;

namespace SEASalon_Project.Factory
{
    public static class UserFactory
    {
        public static User CreateUser(string fullName, string email, string phoneNumber, string password)
        {
            return new User
            {
                FullName = fullName,
                UserEmail = email,
                UserPhone = phoneNumber,
                UserPassword = password,
                UserRole = "Customer" 
            };
        }

    }
}
