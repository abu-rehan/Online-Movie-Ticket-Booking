using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class showMovie : System.Web.UI.Page
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
        if (this.IsPostBack == false)
        {
            BindGrid();
        }
    }
    private void BindGrid()
    {
        clsMovieMaster memberobj = new clsMovieMaster();
        DataSet ds = memberobj.getAllMovies();
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}