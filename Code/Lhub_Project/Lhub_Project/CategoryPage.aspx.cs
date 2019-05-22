using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace Lhub_Project
{
    public partial class CategoryPage : System.Web.UI.Page
    {
        public static string category;
        DataAccessLayer dataAccessLayer;
        UserClass user;
        public static string name;
        protected void Page_Load(object sender, EventArgs e)
        {


            category = Request.QueryString["catName"];
            categoryNamelbl.Text = category;
            dataAccessLayer = new DataAccessLayer();
            DataTable dt = dataAccessLayer.getArticlesFromCategory(category);
            if (txtsrch.Text != "")
            {
                string queryStringSrch = "srch=" + txtsrch.Text.ToString();
                string queryStringName = "name=" + nameLbl.Text.ToString();
                Response.Redirect("SearchResultsPage.aspx?" + queryStringSrch + "&" + queryStringName);
            }
            if (name == null || dt == null)
            {

                newGrid.DataSource = dt;
                newGrid.DataBind();
            }
            if(dt.Rows.Count==0)
            {
                Response.Write("<script>alert('No articles yet in this category !')</script>");
            }
            else
            {
                newGrid.DataSource = dt;
                newGrid.DataBind();
            }
            name = Request.QueryString["userName"];
            nameLbl.Text = name;


        }
     
        protected void followBtn_Click(object sender, EventArgs e)
        {

            if (followBtn.Text.ToLower().ToString() == "follow")
            {
                followBtn.Text = "Unfollow";
                user = new UserClass();
                user.followcategory(name, category);

            }
            else if (followBtn.Text.ToLower().ToString() == "unfollow")
            {

                //add user icon
                //place label that contains name below it, to be able to get name in each page
                //call function followCategory by username and category name
                user = new UserClass();
                user.unfollowCategory(name, category);
                followBtn.Text = "Follow";
            }
        }
    }
}