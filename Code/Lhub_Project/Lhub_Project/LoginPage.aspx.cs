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

            DataAccessLayer dataAccessLayer = new DataAccessLayer();
            int flag = dataAccessLayer.login(usernameTxt.Text.ToString(), passwordTxt.Text.ToString());
            if (flag == 1)
            {
                Response.Redirect("HomePage.aspx");
            }
            else
            {
                //display alert"username or password incorrect"
            }
        }

        protected void forgetPassBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("ResetPasswordPage.aspx");
        }
    }
}