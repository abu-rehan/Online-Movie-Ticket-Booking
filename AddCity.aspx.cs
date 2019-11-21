using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class AddCity : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["member"] == null)
        {
            Response.Redirect("AdminLogin.aspx");
        }
        if (this.IsPostBack == false)
        {
            BindGrid();
        }
     
    }
    private void BindGrid()
    {
        clsCity cityobj = new clsCity();
        DataSet ds = cityobj.getAllCity();
        GridView1.DataSource = ds.Tables[0];
        //call the DataBind() to show the record
        GridView1.DataBind();
    }  
    protected void btnadd_Click1(object sender, EventArgs e)
    {
        clsCity cityobj = new clsCity();
        try
        {

            cityobj.CityName = txtcityname.Text;
            cityobj.CityID = txtcityid.Text;
            int result = cityobj.AddCity();
            if (result == 1)
            {
                lblmsg.Text = "City is Inserted Successfully";
                BindGrid();
            }
        }
        catch (Exception err)
        {
            lblmsg.Text = err.Message;
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        //get the row to edit
        int rowindex = e.NewEditIndex;
        //set the row to edit mode in gridview
        GridView1.EditIndex = rowindex;
        //refresh or bind the gridview again
        BindGrid();
    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        //get the row to update
        int rowno = e.RowIndex;
        //get the controls of the row cells
        TextBox tname = (TextBox)GridView1.Rows[rowno].Cells[1].Controls[0];

        String  tcityid = GridView1.Rows[rowno].Cells[2].Text ;
        clsCity cityobj = new clsCity();
        cityobj.CityName = tname.Text;
        cityobj.CityID = tcityid;
        int result = cityobj.UpdateCity();
        GridView1.EditIndex = -1;
        BindGrid();

        //Refresh the gridview
 
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

        //get the row to delete
        int rowno = e.RowIndex;
        //get the controls of the row cells


        String tcityid = GridView1.Rows[rowno].Cells[2].Text;
        clsCity cityobj = new clsCity();
        
        cityobj.CityID = tcityid;
        cityobj.deleteCity();
        GridView1.EditIndex = -1;
        //Refresh the gridview

        BindGrid();

    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        BindGrid();
    }
}