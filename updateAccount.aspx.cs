using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class updateAccount : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["member"] == null)
        {
            Response.Redirect("Default.aspx");
        }

        clsUser memobj = (clsUser)Session["member"];
        String s = "Logged in as " + memobj.Username;
        lbluser.Text = s;
        txtname.Text = memobj.Username;
        txtemail.Text = memobj.EmailID;
        txtdob.Text = memobj.Date_Of_Birth;
        txtphone.Text = memobj.Phone;
        txtcpassword.Text = memobj.Password;
        txtpassword.Text = memobj.Password;
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        
        clsUser objuser = new clsUser();
        objuser.EmailID = txtemail.Text;
        objuser.Username = txtname.Text;
        objuser.Date_Of_Birth = txtdob.Text;
        objuser.Phone = txtphone.Text;
        String password = txtpassword.Text;
        String cnfpassword = txtcpassword.Text;
        if (password == cnfpassword)
        {
            objuser.Password = password;
            int result = objuser.UpdateUser();
            if (result == 1)
            {

                lblmsg.Text = "Member successfully updated!";
            }
        }
        else
        {
            lblmsg.Text = "Password and Confirm Password fields didn't match";
        }
    }
}