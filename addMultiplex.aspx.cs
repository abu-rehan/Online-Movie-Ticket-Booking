using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class addMultiplex : System.Web.UI.Page
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
            dropdownview();   

        }
    }
    private void BindGrid()
    {
        clsMultiplex multiobj = new clsMultiplex();
        multiobj.CityID = DropDownList1.Text;
        DataSet ds = multiobj.getAllMultiplex();
        GridView1.DataSource = ds.Tables[0];
        //call the DataBind() to show the record
        GridView1.DataBind();
    } 
    protected void btnadd_Click(object sender, EventArgs e)
    {
        clsMultiplex multiobj = new clsMultiplex();
       
        try
        {

            multiobj.InoxName = txtname.Text;
            multiobj.InoxID = txtid.Text;
            multiobj.Phone = txtphone.Text;
            multiobj.Address = txtaddress.Text;
            multiobj.EmailID = txtemail.Text;
            multiobj.CityID = DropDownList1.Text;
            
            int result = multiobj.AddMultiplex();
            if (result == 1)
            {
                lblmsg.Text = "Multiplex is Inserted Successfully";
                
                BindGrid();
            }
        }
        catch (Exception err)
        {
            lblmsg.Text = err.Message;
        }
        
    }
    protected void txtcityid_TextChanged(object sender, EventArgs e)
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
        String tid = GridView1.Rows[rowno].Cells[2].Text;
        TextBox tadd = (TextBox)GridView1.Rows[rowno].Cells[3].Controls[0];
        TextBox tphone = (TextBox)GridView1.Rows[rowno].Cells[4].Controls[0];
        TextBox temail = (TextBox)GridView1.Rows[rowno].Cells[5].Controls[0];
        String tcityid = DropDownList1.SelectedItem.Value ;
        clsMultiplex multiobj = new clsMultiplex();
        multiobj.CityID = tcityid;
        multiobj.InoxID = tid;
        multiobj.Phone = tphone.Text;
        multiobj.Address = tadd.Text;
        multiobj.EmailID = temail.Text;
        multiobj.InoxName = tname.Text;
        int result = multiobj.UpdateMultiplex();
        GridView1.EditIndex = -1;
        BindGrid();

        //Refresh the gridview
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        //get the row to delete
        int rowno = e.RowIndex;
        //get the controls of the row cells

        clsMultiplex multiobj = new clsMultiplex();
        String tinoxid = GridView1.Rows[rowno].Cells[2].Text;

        String tcityid = DropDownList1.SelectedItem.Value;
        multiobj.InoxID = tinoxid;
        multiobj.CityID = tcityid;
        multiobj.deleteMultiplex();
        GridView1.EditIndex = -1;
        //Refresh the gridview

        BindGrid();
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        BindGrid();
    }
    public void dropdownview()
    {
        clsCity cityobj = new clsCity();
        DataSet ds = cityobj.getAllCity();
        DropDownList1.DataSource = ds.Tables[0];
        DropDownList1.DataTextField = "CityName";
        DropDownList1.DataValueField = "CityID";
        DropDownList1.DataBind();
    }

    protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        BindGrid();
    }
}