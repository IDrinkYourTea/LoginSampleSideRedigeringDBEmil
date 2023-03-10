using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;//for formsauth

namespace LoginSample
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
            DBLayer dBLayer= new DBLayer();
            int count=dBLayer.CheckAdmin(txtUserName.Value,txtUserPass.Value);


            if (count == 1)
            {

                FormsAuthentication.RedirectFromLoginPage(txtUserName.Value, chkPersistCookie.Checked);

            }
            else
                lblMsg.Text = "Incorrect login";
        }
    }
}