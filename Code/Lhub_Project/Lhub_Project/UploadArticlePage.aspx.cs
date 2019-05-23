using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lhub_Project
{
    public partial class UploadArticlePage : System.Web.UI.Page
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

        protected void uploadArticleBtn_Click(object sender, EventArgs e)
        {

            UserClass user = new UserClass();
            string name = nameLbl.Text.ToString();
            string text = texttxt.Value.ToString();
            string title = titletxt.Value.ToString();
            string categoryname = catList.SelectedValue.ToString();
            user.uploadArticle(name, text, title, categoryname);
        }
    }
}