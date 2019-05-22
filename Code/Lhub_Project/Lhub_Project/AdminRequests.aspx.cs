using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace Lhub_Project
{
    public partial class AdminRequests : System.Web.UI.Page
    {
        public static string option;

        protected void Page_Load(object sender, EventArgs e)
        {
            nameLbl.Text = Request.QueryString["userName"];
            if (txtsrch.Text != "")
            {
                string queryStringSrch = "srch=" + txtsrch.Text.ToString();
                string queryStringName = "name=" + nameLbl.Text.ToString();
                Response.Redirect("SearchResultsPage.aspx?" + queryStringSrch + "&" + queryStringName);
            }
        }

        protected void addCategoryBtn_Click(object sender, EventArgs e)
        {

        }


        protected void approveBtn_Click(object sender, EventArgs e)
        {
            option = "approve";
            

        }

        protected void rejectBtn_Click(object sender, EventArgs e)
        {
            option = "reject";
        }


        protected void newGrid_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = newGrid.Rows[newGrid.SelectedRow.RowIndex];
           
            string title = row.Cells[0].Text.ToString();
            string author = row.Cells[2].Text.ToString();
            string name = "username=" + nameLbl.Text;
            string queryStringTitle = "title=" + title;
            string queryStringAuthor = "author=" + author;
            Response.Redirect("AdminRequests2.aspx?userName=" + queryStringTitle + "&" + queryStringAuthor);
            AdminClass admin = new AdminClass();
            int result = admin.reviewArticle(option, author, title);
            if(result==1)
            {
                string script = "alert(\"Article approved :)\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
                newGrid.DataBind();
            }
            else if(result==0)
            {
                string script = "alert(\"Article rejected\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
                newGrid.DataBind();
            }
        }

        protected void editBtn_Click(object sender, EventArgs e)
        {

        }
    }
}