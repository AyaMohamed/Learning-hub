using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Lhub_Project
{
    public class AdminClass : PersonClass
    {
        public AdminClass()
        {

        }
        public AdminClass(string firstNameA, string lastNameA, string emailA, string passwordA) : base(firstNameA, lastNameA, emailA, passwordA)
        {
            firstNameA = getFirstName();
            lastNameA = getLastName();
            emailA = getEmail();
            passwordA = getPassword();
        }
        public void login_admin(string username, string password)
        {
            DataAccessLayer dl = new DataAccessLayer();
            dl.login(username, password);
        }
        public int reviewArticle(string option, string articleauthor, string articletitle)
        {
            DataAccessLayer dl = new DataAccessLayer();
            int result = dl.reviewArticle(option, articleauthor, articletitle);
            return result;
        }
    }
}