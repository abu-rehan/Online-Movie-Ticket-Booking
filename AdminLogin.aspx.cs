using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LoginPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["member"] = null;
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        clsAdmin objadmin = new clsAdmin();
        objadmin.EmailID= TextBox1.Text;
        objadmin.Password = TextBox2.Text;
        objadmin = objadmin.CheckUserAuthenticate(TextBox1.Text, TextBox2.Text);
        if (objadmin == null)
        {
            lblMessage.Text = "EmailID and Password incorrect";
        }
        else
        {
            //store the object in the sesssion
            Session["member"] = objadmin;
            Response.Redirect("AdminHome.aspx");
        }
    }
}