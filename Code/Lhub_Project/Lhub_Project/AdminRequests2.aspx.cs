using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lhub_Project
{
    public partial class AdminRequests2 : System.Web.UI.Page
    {
        public static string option;
        public static int count;
        public static int review;
        protected void Page_Load(object sender, EventArgs e)
        {
            //check if the page is first time to load

            nameLbl.Text = Request.QueryString["userName"];

        }


        protected void approveBtn_Click(object sender, EventArgs e)
        {
            review = 2;
            option = "approve";

        }

        protected void rejectBtn_Click(object sender, EventArgs e)
        {
            review = 2;
            option = "reject";
        }


        protected void newGrid_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = requestsGrid.Rows[requestsGrid.SelectedRow.RowIndex];

            string title = row.Cells[0].Text.ToString();
            string author = row.Cells[2].Text.ToString();
            string date = row.Cells[1].Text.ToString();
            string name = "userName=" + nameLbl.Text;
            string queryStringTitle = "title=" + title;
            string queryStringAuthor = "author=" + author;
            string queryStringDate = "date=" + date;
            AdminClass admin = new AdminClass();
            DataAccessLayer dl = new DataAccessLayer();
            
            if (review == 2 && count == 0)
            {
                int result = admin.reviewArticle(option, author, title);
                if (result == 1)
                {
                    requestsGrid.DataBind();
                    string script = "alert(\"Article approved :)\");";
                    ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
                    
                    //requestsGrid.DataSource=SqlDataSource1;
                    //Response.Redirect("AdminRequests.aspx?" + name);
                }
                else if (result == 0)
                {
                    string script = "alert(\"Article rejected\");";
                    ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
                    requestsGrid.DataBind();
                }
            }




            else if (count == 1 && review == 0)
            {
                count = 0;
                Response.Redirect("ArticlesPage.aspx?" + name + "&" + queryStringAuthor + "&" + queryStringTitle + "&" + queryStringDate);

            }
            
        }

        protected void detailsBtn_Click(object sender, EventArgs e)
        {
            count = 1;
        }
    }
}