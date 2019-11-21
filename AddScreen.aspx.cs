using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class AddScreen : System.Web.UI.Page
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
            dropdownview1();
            dropdownview2();

        }

        
        
    }
    private void dropdownview1()
    {
        clsCity cityobj = new clsCity();
        DataSet ds1 = cityobj.getAllCity();
        DropDownList2.DataSource = ds1.Tables[0];
        DropDownList2.DataTextField = "CityName";
        DropDownList2.DataValueField = "CityID";
        DropDownList2.DataBind();

        
    }
    private void dropdownview2()
    {
        clsMultiplex multiobj = new clsMultiplex();
        multiobj.CityID = DropDownList2.SelectedItem.Value;
        DataSet ds = multiobj.getAllMultiplex();
        DropDownList1.DataSource = ds.Tables[0];
        DropDownList1.DataTextField = "InoxName";
        DropDownList1.DataValueField = "InoxID";
        DropDownList1.DataBind();
        BindGrid();
    }
    private void BindGrid()
    {
        clsScreen screenobj = new clsScreen();
        screenobj.InoxID = DropDownList1.Text;
        screenobj.CityID = DropDownList2.Text;
        DataSet ds = screenobj.getAllScreen();
        GridView1.DataSource = ds.Tables[0];
        //call the DataBind() to show the record
        GridView1.DataBind();
    }

    protected void btnadd_Click(object sender, EventArgs e)
    {
        clsScreen screenobj = new clsScreen();

        try
        {
            screenobj.CityID = DropDownList2.Text;
            screenobj.ScreenName = txtname.Text;
            screenobj.ScreenID = txtid.Text;
            screenobj.InoxID = DropDownList1.Text;
            screenobj.RSeats =int.Parse( trseat.Text);
            screenobj.ESeats = int.Parse(teseat.Text);
            int result = screenobj.AddScreen();
            if (result == 1)
            {
                lblmsg.Text = "Screen is Inserted Successfully";

                BindGrid();
            }
        }
        catch (Exception err)
        {
            lblmsg.Text = err.Message;
        }
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
        String tscreenid = GridView1.Rows[rowno].Cells[2].Text;
        TextBox trs = (TextBox)GridView1.Rows[rowno].Cells[3].Controls[0];
        TextBox tes = (TextBox)GridView1.Rows[rowno].Cells[4].Controls[0];
        String tinoxid = GridView1.Rows[rowno].Cells[5].Text;
        String tcityid = GridView1.Rows[rowno].Cells[6].Text;
        clsScreen screenobj = new clsScreen();
        screenobj.InoxID = tinoxid;
        screenobj.ScreenID = tscreenid;
        screenobj.ScreenName = tname.Text;
        screenobj.RSeats = int.Parse(trs.Text);
        screenobj.ESeats = int.Parse(tes.Text);
        int result = screenobj.UpdateScreen();
        GridView1.EditIndex = -1;
        BindGrid();

        //Refresh the gridview
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        //get the row to delete
        int rowno = e.RowIndex;
        //get the controls of the row cells

        clsScreen screenobj = new clsScreen();
        String tid = GridView1.Rows[rowno].Cells[2].Text;

        String tinoxid = DropDownList1.SelectedItem.Value;
        screenobj.InoxID = tinoxid;
        screenobj.ScreenID = tid;
        screenobj.deleteScreen();
        GridView1.EditIndex = -1;
        //Refresh the gridview

        BindGrid();
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        BindGrid();
    }
    public void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        BindGrid();
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        dropdownview2();
        //BindGrid();
    }
}