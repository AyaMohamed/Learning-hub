using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
namespace Lhub_Project
{
    public class UserClass : PersonClass
    {
        string UserID;

        public UserClass()
        {
            UserID = "";
        }

        public UserClass(string firstNameU, string lastNameU, string emailU, string passwordU, string userID) : base(firstNameU, lastNameU, emailU, passwordU)
        {
            firstNameU = getFirstName();
            lastNameU = getLastName();
            emailU = getEmail();
            passwordU = getPassword();
            this.UserID = userID;


        }

        public void setUserID(string userid)
        {
            this.UserID = userid;
        }

        public string getUserID()
        {
            return this.UserID;
        }

        public int login_user(string username, string password)
        {
            DataAccessLayer dl = new DataAccessLayer();
            int result = dl.login(username, password);
            return result;
        }

        public int signup_user(string username, string password, string fname, string lname, string email)
        {
            int result = 0;
            DataAccessLayer dl = new DataAccessLayer();
            result = dl.register(username, password, fname, lname, email);
            return result;
        }

        public void followcategory(string username, string categoryName)
        {
            DataAccessLayer dl = new DataAccessLayer();
            dl.followCategory(username, categoryName);
        }
        public void unfollowCategory(string username, string categoryName)
        {
            DataAccessLayer dl = new DataAccessLayer();
            dl.unfollowCategory(username, categoryName);

        }
        public DataTable searchArticle(string word)
        {
            DataAccessLayer dataAccessLayer = new DataAccessLayer();
            DataTable dt = dataAccessLayer.searchArticle(word);
            return dt;
        }
    }
}