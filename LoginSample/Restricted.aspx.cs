using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginSample
{
    public partial class Restricted : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!string.IsNullOrEmpty(Request.QueryString["ReturnUrl"]))
            //{
            //    Response.Redirect(Request.Url.AbsolutePath);
            //}
            if(!User.Identity.IsAuthenticated)
            {
                Response.Redirect("ResFailed.aspx");
            }

            DBLayer layer = new DBLayer();
            if (!Page.IsPostBack)
            {
                TextBoxToDB.Text = layer.GetArlyText();
                TextBoxTrineText.Text = layer.GetTrineText();
            }

        }

        protected void ButtonSave_Click(object sender, EventArgs e)
        {
            //lagre text til db
            DBLayer layer = new DBLayer();
            layer.UpdateArlyText(TextBoxToDB.Text);
        }

        protected void ButtonArlyHeaderSave_Click(object sender, EventArgs e)
        {
            //lagre text til db
            DBLayer layer = new DBLayer();
            layer.UpdateArlyHeader(TextBoxArlyHeader.Text);
        }

        //trines stuff
        protected void ButtonTrineTextSave_Click(object sender, EventArgs e)
        {
            //lagre text til db
            DBLayer layer = new DBLayer();
            layer.UpdateTrineText(TextBoxTrineText.Text);
        }

        protected void ButtonTrineOverskriftSave_Click1(object sender, EventArgs e)
        {
            //lagre text til db
            DBLayer layer = new DBLayer();
            layer.UpdateTrineHeader(TextBoxTrineOverskrift.Text);
        }
    }
}