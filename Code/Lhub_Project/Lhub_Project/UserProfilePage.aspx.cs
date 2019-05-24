using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lhub_Project
{
    public partial class UserProfilePage : System.Web.UI.Page
    {
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

        protected void newGrid_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = newGrid.Rows[newGrid.SelectedRow.RowIndex];

            string title = row.Cells[0].Text.ToString();
            string author = row.Cells[2].Text.ToString();
            string date = row.Cells[3].Text.ToString();
            string name = "userName=" + nameLbl.Text;
            string queryStringTitle = "title=" + title;
            string queryStringDate = "date=" + date;
            string queryStringAuthor = "author=" + author;
            Response.Redirect("ArticlesPage.aspx?" + name + "&" + queryStringTitle + "&" + queryStringDate+"&"+queryStringAuthor);

        }

        

        protected void detailsBtn_Click(object sender, EventArgs e)
        {
        }
    }
}