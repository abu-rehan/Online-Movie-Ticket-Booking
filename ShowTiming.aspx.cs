using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class ShowTiming : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["member"] == null)
        {
            Response.Redirect("AdminLogin.aspx");
        }
        if (this.IsPostBack == false)
        {
         
            dropdownview1();
            dropdownview2();
            dropdownview3();
            dropdownview4();
            BindGrid();
        }

    }
   
    private void dropdownview1()
    {
        clsCity cityobj = new clsCity();
        DataSet ds1 = cityobj.getAllCity();
        ddlcity.DataSource = ds1.Tables[0];
        ddlcity.DataTextField = "CityName";
        ddlcity.DataValueField = "CityID";
        ddlcity.DataBind();
    }
    private void dropdownview2()
    {
        clsMultiplex multiobj = new clsMultiplex();
        multiobj.CityID = ddlcity.SelectedItem.Value;
        DataSet ds = multiobj.getAllMultiplex();
        ddlinox.DataSource = ds.Tables[0];
        ddlinox.DataTextField = "InoxName";
        ddlinox.DataValueField = "InoxID";
        ddlinox.DataBind();
    }
    private void dropdownview3()
    {
        clsMovieMaster movieobj = new clsMovieMaster();
        DataSet ds = movieobj.getAllMovies();
        ddlmovie.DataSource = ds.Tables[0];
        ddlmovie.DataTextField = "MovieName";
        ddlmovie.DataValueField = "MovieID";
        ddlmovie.DataBind();
    }
    private void dropdownview4()
    {
        clsScreen screenobj = new clsScreen();
        screenobj.CityID = ddlcity.SelectedItem.Value;
        screenobj.InoxID = ddlinox.SelectedItem.Value;
       
        DataSet ds = screenobj.getAllScreen();
        ddlscreen.DataSource = ds.Tables[0];
        ddlscreen.DataTextField = "ScreenName";
        ddlscreen.DataValueField = "ScreenID";
      
        ddlscreen.DataBind();
    }

    protected void ddlcity_SelectedIndexChanged(object sender, EventArgs e)
    {
       
        dropdownview2();
    }
    protected void ddlinox_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        dropdownview3();
    }
    protected void ddlmovie_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        dropdownview4();
    }
    protected void ddlscreen_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        BindGrid();
    }
    private void BindGrid()
    {
        clsShowTime showobj = new clsShowTime();
        showobj.CityID = ddlcity.SelectedItem.Value;
        showobj.InoxID = ddlinox.SelectedItem.Value;
        showobj.MovieID = ddlmovie.SelectedItem.Value;
        showobj.ScreenID = ddlscreen.SelectedItem.Value;
        DataSet ds = showobj.getAllShow();
        GridView1.DataSource = ds.Tables[0];
        //call the DataBind() to show the record
        GridView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        for (int i = 0; i < CheckBoxList1.Items.Count; i++)
        {
            if (CheckBoxList1.Items[i].Selected)
            {
                clsShowTime showobj = new clsShowTime();
                showobj.CityID = ddlcity.SelectedItem.Value;
                showobj.InoxID = ddlinox.SelectedItem.Value;
                showobj.MovieID = ddlmovie.SelectedItem.Value;
                showobj.ScreenID = ddlscreen.SelectedItem.Value;
                showobj.ShowDate = DateTime.Parse(txtshowdate.Text);
                clsScreen scobj = new clsScreen();
                scobj.CityID = showobj.CityID;
                scobj.InoxID = showobj.InoxID;
                scobj.ScreenID = showobj.ScreenID;
                DataSet ds = scobj.getAllScreen();
                if (ds.Tables[0].Rows.Count > 0)
                {
                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                        showobj.ESeats = int.Parse(dr["ESeats"].ToString());
                        
                        showobj.RSeats = int.Parse(dr["RSeats"].ToString());
                    }
                }
                showobj.ShowTime = int.Parse(CheckBoxList1.Items[i].Value);
                int result = showobj.AddShow();
                if (result != 0)
                {
                    lblmsg.Text = "Show Added";
                    BindGrid();
                }
            }
        }
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        

        //get the row to delete
        int rowno = e.RowIndex;
        //get the controls of the row cells
        clsShowTime showobj = new clsShowTime();
        
        String tcityid = GridView1.Rows[rowno].Cells[1].Text;
        String tinoxid = GridView1.Rows[rowno].Cells[2].Text;
        String tmovieid = GridView1.Rows[rowno].Cells[3].Text;
        String tscreenid = GridView1.Rows[rowno].Cells[4].Text;
        String tshowslot = GridView1.Rows[rowno].Cells[5].Text;
        DateTime tshowdate = DateTime.Parse(GridView1.Rows[rowno].Cells[8].Text);
        showobj.CityID = tcityid;
        showobj.InoxID = tinoxid;
        showobj.MovieID = tmovieid;
        showobj.ScreenID = tscreenid;
        showobj.ShowTime = int.Parse(tshowslot);
        showobj.ShowDate = tshowdate;
        showobj.deleteShow();
        GridView1.EditIndex = -1;
        //Refresh the gridview

        BindGrid();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}