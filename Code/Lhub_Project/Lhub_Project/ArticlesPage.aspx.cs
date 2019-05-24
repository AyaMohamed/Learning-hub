using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lhub_Project
{
    public partial class ArticlesPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataAccessLayer dal = new DataAccessLayer();
            nameLbl.Text = Request.QueryString["userName"].ToString();
            titletxt.Value = Request.QueryString["title"].ToString();
            authortxt.Value = Request.QueryString["author"].ToString();
            datetxt.Value = Request.QueryString["date"].ToString();
            string categoryname = dal.getCategory(titletxt.Value, authortxt.Value, Convert.ToDateTime(datetxt.Value));
            texttxt.Value = dal.getArticleText(authortxt.Value, titletxt.Value, Convert.ToDateTime(datetxt.Value));
            categorytxt.Value = categoryname;
            if (txtsrch.Text != "")
            {
                string queryStringSrch = "srch=" + txtsrch.Text.ToString();
                string queryStringName = "name=" + nameLbl.Text.ToString();
                Response.Redirect("SearchResultsPage.aspx?" + queryStringSrch + "&" + queryStringName);
            }
        }
    }
}