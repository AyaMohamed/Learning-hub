using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Lhub_Project
{
    public class PersonClass
    {
        string username, firstName, lastName, email, password;

        public PersonClass()
        {
            username = "";
            firstName = "";
            lastName = "";
            email = "";
            password = "";
        }
        public PersonClass(string firstName, string lastName, string email, string password)
        {

            this.firstName = firstName;
            this.lastName = lastName;
            this.email = email;
            this.password = password;

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
    }
}