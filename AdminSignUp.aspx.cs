using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSignUp_Click(object sender, EventArgs e)
    {
        clsAdmin objnewadmin = new clsAdmin();
        objnewadmin.Name = txtName.Text;
        objnewadmin.Address = txtAddress.Text;
        objnewadmin.Date_Of_Birth = txtDOB.Text;
        objnewadmin.EmailID = txtEmailAddress.Text;
        objnewadmin.Username = txtUsername.Text;
        String password = txtPassword.Text;
        String cnfpassword = txtCnfPassword.Text;
        if (password == cnfpassword)
        {
            objnewadmin.Password = password;
            int result= objnewadmin.AddMember();
            if (result == 1)
            {
                lblMessage.Text = "Member successfully added!";
            }
        }
        else
        {
            lblMessage.Text = "Password and Confirm Password fields didn't match";
        }
    }
}