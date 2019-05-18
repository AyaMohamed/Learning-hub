using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Lhub_Project
{
    public class CategoryClass
    {
        string CategoryID;
        string CategoryName;
        public CategoryClass(string CategoryID, string Categoryname)
        {

            this.CategoryID = CategoryID;
            this.CategoryName = Categoryname;

        }

        public void setCategoryID(string Categoryid)
        {
            this.CategoryID = Categoryid;
        }
        public string getCategoryID()
        {
            return this.CategoryID;
        }
        public void setCategoryname(string Categoryname)
        {
            this.CategoryName = Categoryname;
        }
        public string getCategoryname()
        {
            return this.CategoryName;
        }
    }
}
