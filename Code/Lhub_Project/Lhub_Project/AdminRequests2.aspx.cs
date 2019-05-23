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
        protected void Page_Load(object sender, EventArgs e)
        {
            //check if the page is first time to load
           
                nameLbl.Text = Request.QueryString["username"];
                
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
            
            AdminClass admin = new AdminClass();
            int result = admin.reviewArticle(option, author, title);
            if (result == 1)
            {
                string script = "alert(\"Article approved :)\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
                newGrid.DataBind();
            }
            else if (result == 0)
            {
                string script = "alert(\"Article rejected\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
                newGrid.DataBind();
            }
        }
    }
}