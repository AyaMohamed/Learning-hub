using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lhub_Project
{
    public partial class SearchResultsPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            nameLbl.Text = Request.QueryString["name"];
            txtsrch.Text = Request.QueryString["srch"];

        }

        protected void txtsrch_TextChanged(object sender, EventArgs e)
        {
            
        }
    }
}