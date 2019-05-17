using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace Lhub_Project
{
    public partial class CategoryOage : System.Web.UI.Page
    {
        public static string category;
        DataAccessLayer dataAccessLayer;
        protected void Page_Load(object sender, EventArgs e)
        {
            category = Request.QueryString["catName"];
            categoryNamelbl.Text = category;
            dataAccessLayer = new DataAccessLayer();
            DataTable dt = dataAccessLayer.getArticlesFromCategory(category); 
            newGrid.DataSource = dataAccessLayer.getArticlesFromCategory(category);
            newGrid.DataBind();
           
        }


        protected void followBtn_Click(object sender, EventArgs e)
        {
            
            if(followBtn.Text.ToLower().ToString()=="follow")
            {
                followBtn.Text = "Unfollow";
                
            }
            else if (followBtn.Text.ToLower().ToString() == "unfollow")
            {

                //add user icon
                //place label that contains name below it, to be able to get name in each page
                //call function followCategory by username and category name
              
                followBtn.Text = "Follow";
            }
        }
    }
}