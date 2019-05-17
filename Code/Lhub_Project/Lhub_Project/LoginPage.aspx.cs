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

            //Response.Redirect("HomePage.aspx");
            DataAccessLayer dataAccessLayer = new DataAccessLayer();
            int flag = dataAccessLayer.login(usernameTxt.Text.ToString(), passwordTxt.Text.ToString());
            if (flag == 1)
            {
                Response.Redirect("HomePage.aspx");
            }
            else
            {
                string script = "alert(\"Username or password is incorrect\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
                //display alert"username or password incorrect"
            }
        }

        protected void forgetPassBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("ResetPasswordPage.aspx");
        }
    }
}