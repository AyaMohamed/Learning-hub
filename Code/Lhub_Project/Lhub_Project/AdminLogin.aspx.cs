using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lhub_Project
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginBtn_Click(object sender, EventArgs e)
        {
            AdminClass admin = new AdminClass();
            int result = admin.login_admin(usernameTxt.Text.ToString(), passwordTxt.Text.ToString());
            if (result == 1)
            {
                string queryString = "userName=" + usernameTxt.Text.ToString();
                Response.Redirect("AdminRequests.aspx?" + queryString);

            }
            else if (result == 0)
            {
                string script = "alert(\"Username or password is incorrect\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);

            }

        }
    }
}