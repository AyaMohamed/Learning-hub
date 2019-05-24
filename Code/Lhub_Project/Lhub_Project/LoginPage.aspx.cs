using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Lhub_Project
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void loginBtn_Click(object sender, EventArgs e)
        {
            UserClass user = new UserClass();
            string username = usernameTxt.Text.ToString();
            string password = passwordTxt.Text.ToString();
            if (username == "" || password == "")
            {
                string script = "alert(\"Please enter full data\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
            }
            else
            {
                int flag = user.login_user(username, password);
                if (flag == 1)
                {
                    string queryString = "userName=" + username;
                    Response.Redirect("HomePage.aspx?" + queryString);
                }
                else
                {
                    string script = "alert(\"Username or password is incorrect\");";
                    ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
                    //display alert"username or password incorrect"
                }
            }
        }

        protected void forgetPassBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("ResetPasswordPage.aspx");
        }
    }
}