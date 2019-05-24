﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lhub_Project
{
    public partial class ResetPasswordPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void confirmBtn_Click(object sender, EventArgs e)
        {
            UserClass user = new UserClass();
            string email = emailTxt.Text.ToLower().ToString();
            string password = newpasswordTxt.Text.ToString();
            int line = user.resetPassword(email, password);
            if(line==0)
            {
                Response.Redirect("ResetPassword.aspx");
            }
            else if(line==1)
            {
                string script = "alert(\"Password changed successfully\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
                DataAccessLayer dal = new DataAccessLayer();
                string name = dal.getUserNameFromEmail(email);
                Response.Redirect("HomePage.aspx?userName=" + name);
            }
        }
    }
}