using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class userSignup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        clsUser objuser = new clsUser();
        objuser.EmailID = txtemail.Text;
        objuser.Username = txtusername.Text;
        objuser.Date_Of_Birth = txtdob.Text;
        objuser.Phone = txtphone.Text;
        String password = txtpassword.Text;
        String cnfpassword = txtcpassword.Text;
        if (password == cnfpassword)
        {
            objuser.Password = password;
            int result = objuser.AddMember();
            if (result == 1)
            {

                lblmsg.Text = "Sign up successful!";
                Response.Redirect("Default.aspx");
            }
        }
        else
        {
            lblmsg.Text = "Password and Confirm Password fields didn't match";
        }
    }
}