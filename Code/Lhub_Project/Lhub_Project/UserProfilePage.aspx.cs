using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lhub_Project
{
    public partial class UerProfilePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            nameLbl.Text = Request.QueryString["userName"];
        }

        protected void newGrid_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = newGrid.Rows[newGrid.SelectedRow.RowIndex];

            string title = row.Cells[0].Text.ToString();
            string date = row.Cells[2].Text.ToString();
            string name = "userName=" + nameLbl.Text;
            string queryStringTitle = "title=" + title;
            string queryStringDate = "date=" + date;
            Response.Redirect("ArticlesPage.aspx?" + name + "&" + queryStringTitle + "&" + queryStringDate);

        }

        

        protected void detailsBtn_Click(object sender, EventArgs e)
        {
        }
    }
}