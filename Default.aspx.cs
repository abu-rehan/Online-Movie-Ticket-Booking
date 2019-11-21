using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["member"] = null;
    }

    protected void txtlogin_Click(object sender, EventArgs e)
    {
        clsUser objuser = new clsUser();
        objuser.EmailID = TextBox1.Text;
        objuser.Password = TextBox2.Text;
        objuser= objuser.CheckUserAuthenticate(TextBox1.Text, TextBox2.Text);
        if (objuser== null)
        {
            lblmsg.Text = "EmailID and Password don't match";
        }
        else
        {
            //store the object in the sesssion
            Session["member"] = objuser;
            Response.Redirect("userHome.aspx");
        }
    }
}