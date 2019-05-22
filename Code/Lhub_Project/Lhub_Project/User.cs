using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Lhub_Project
{
    public class User
    {
        string username, firstName, lastName, email, password;
        int userID;

        public User(string username, string firstName, string lastName, string email, string password, int userID)
        {
            this.username = username;
            this.firstName = firstName;
            this.lastName = lastName;
            this.email = email;
            this.password = password;
            this.userID = userID;
        }

        public void setUserName(string uname)
        {
            this.username = uname;
        }

        public void setPassword(string pass)
        {
            this.password = pass;
        }

        public void setLastName(string lname)
        {
            this.lastName = lname;
        }

        public void setFirstName(string fname)
        {
            this.firstName = fname;
        }

        public void setEmail(string email)
        {
            this.email = email;
        }

        public void setID(int uID)
        {
            this.userID = uID;
        }

        public string getUserName()
        {
            return this.username;
        }

        public string getFirstName()
        {
            return this.firstName;
        }

        public string getLastName()
        {
            return this.lastName;
        }

        public string getEmail()
        {
            return this.email;
        }

        public string getPassword()
        {
            return this.password;
        }

        public int getID()
        {
            return this.userID;
        }
    }
}