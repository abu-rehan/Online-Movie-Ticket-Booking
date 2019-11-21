using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class userHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["member"] == null)
        {
            Response.Redirect("Default.aspx");
        }
         clsUser memobj = (clsUser)Session["member"];
         String s = "Logged in as "+memobj.Username;
         lbluser.Text = s;
    }
}