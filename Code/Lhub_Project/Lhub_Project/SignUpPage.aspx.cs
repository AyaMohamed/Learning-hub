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
            dl.Registertion(usernametxt.Text.ToString(), FirstNametxt.Text.ToString(), LastNametxt.Text.ToString(), Emailtxt.Text.ToString(), passwordtxt.Text.ToString(), Confrim_passtxt.Text.ToString());
        }
    }
}