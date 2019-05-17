using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lhub_Project
{
    public partial class AdminRequests : System.Web.UI.Page
    {
        public static string option;

        protected void Page_Load(object sender, EventArgs e)
        {
            if(newGrid.Rows.Count==0)
            {
                string script = "alert(\"There's no pending articles\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);

            }
        }

        protected void addCategoryBtn_Click(object sender, EventArgs e)
        {

        }


        protected void approveBtn_Click(object sender, EventArgs e)
        {
            option = "approve";
            ////GridViewRow row = newGrid.SelectedRow;
            //string id = "hello";
            //string script = "alert(\"" + id + "\");";
            //ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);

        }

        protected void rejectBtn_Click(object sender, EventArgs e)
        {
            option = "reject";
        }


        protected void newGrid_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = newGrid.Rows[newGrid.SelectedRow.RowIndex];
            
            string title = row.Cells[0].Text.ToString();
            string author = row.Cells[1].Text.ToString();
            DataAccessLayer dataAccessLayer = new DataAccessLayer();
            int result = dataAccessLayer.reviewArticle(option, author, title);
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
    }
}