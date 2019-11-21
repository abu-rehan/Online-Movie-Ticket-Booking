using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class showMultiplex : System.Web.UI.Page
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
            dropdownview();
            BindGrid();
            
        }
    }
    private void BindGrid()
    {
        clsMultiplex multiobj = new clsMultiplex();
        multiobj.CityID = ddlcity.SelectedItem.Value; 
        DataSet ds = multiobj.getAllMultiplex();
        GridView1.DataSource = ds.Tables[0];
        //call the DataBind() to show the record
        GridView1.DataBind();
    }
    public void dropdownview()
    {
        clsCity cityobj = new clsCity();
        DataSet ds = cityobj.getAllCity();
        ddlcity.DataSource = ds.Tables[0];
        ddlcity.DataTextField = "CityName";
        ddlcity.DataValueField = "CityID";
        ddlcity.DataBind();
        
    }
    protected void ddlcity_SelectedIndexChanged(object sender, EventArgs e)
    {
        BindGrid();
    }
}