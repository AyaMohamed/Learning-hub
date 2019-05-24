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
        public static int count;
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

        protected void newGrid_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = requestsGrid.Rows[requestsGrid.SelectedRow.RowIndex];

            string title = row.Cells[0].Text.ToString();
            string date = row.Cells[1].Text.ToString();
            string author = row.Cells[2].Text.ToString();
            string name = "userName=" + nameLbl.Text;

            string queryStringTitle = "title=" + title;
            string queryStringAuthor = "author=" + author;
            string queryStringDate = "date=" + date;
            
                Response.Redirect("AdminRequests2.aspx?" + name + "&" + queryStringTitle + "&" + queryStringAuthor);
            
        }

        protected void editBtn_Click(object sender, EventArgs e)
        {

        }
       
    }
}