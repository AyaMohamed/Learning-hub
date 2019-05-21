using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lhub_Project
{
    public partial class SignUpPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void SignUp_Click(object sender, EventArgs e)
        {
            DataAccessLayer dl = new DataAccessLayer();
            UserClass user = new UserClass();

            int count = user.signup_user(usernametxt.Text.ToString(), passwordtxt.Text.ToString(), FirstNametxt.Text.ToString(), LastNametxt.Text.ToString(), Emailtxt.Text.ToString());
            if (count == 1)
            {
                Response.Redirect("HomePage.aspx?userName=" + usernametxt.Text.ToString());
            }
            else
            {
                string script = "alert(\"Sign up failed , please try again\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }
    }
}