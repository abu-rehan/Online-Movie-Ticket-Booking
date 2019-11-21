using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class book : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (this.IsPostBack == false)
        {
            dropdownviewcity();
            dropdownviewinox();
            dropdownviewmovie();
            dropdownviewdate();
            

        }
    }
    private void dropdownviewcity()
    {
        clsCity cityobj = new clsCity();
        DataSet ds1 = cityobj.getAllCity();
        ddlcity.DataSource = ds1.Tables[0];
        ddlcity.DataTextField = "CityName";
        ddlcity.DataValueField = "CityID";
        ddlcity.DataBind();
    }
    private void dropdownviewinox()
    {
        clsMultiplex multiobj = new clsMultiplex();
        multiobj.CityID = ddlcity.SelectedItem.Value;
        DataSet ds = multiobj.getAllMultiplex();
        ddlinox.DataSource = ds.Tables[0];
        ddlinox.DataTextField = "InoxName";
        ddlinox.DataValueField = "InoxID";
        ddlinox.DataBind();
    }
    private void dropdownviewmovie()
    {
        clsMovieMaster movieobj = new clsMovieMaster();
        DataSet ds = movieobj.getAllMovies();
        ddlmovie.DataSource = ds.Tables[0];
        ddlmovie.DataTextField = "MovieName";
        ddlmovie.DataValueField = "MovieID";
        ddlmovie.DataBind();
    }
    protected void ddlmovie_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        clsShowTime showobj=new clsShowTime();
        showobj.CityID=ddlcity.SelectedItem.Value;
        showobj.InoxID=ddlinox.SelectedItem.Value;
        showobj.MovieID = ddlmovie.SelectedItem.Value;
        DataSet ds = showobj.checkDate();
        if (ds.Tables[0].Rows.Count == 0)
        {
            lblmovie.Text = "Sorry ! This Movie is not featured in this multiplex";
        }
        else
        {
            dropdownviewdate();
        }
       
            
       
    }
    private void dropdownviewdate()
    {

        clsShowTime showobj = new clsShowTime();
        showobj.CityID = ddlcity.SelectedItem.Value;
        showobj.InoxID = ddlinox.SelectedItem.Value;
        showobj.MovieID = ddlmovie.SelectedItem.Value;
        DataSet ds = showobj.checkDate();
        ddldate.DataSource = ds.Tables[0];
        ddldate.DataTextField = "ShowDate";
        ddldate.DataValueField = "ShowDate";
       
        ddldate.DataBind();
       
       
    }
    private void dropdownviewtime()
    {

        clsShowTime showobj = new clsShowTime();
        showobj.CityID = ddlcity.SelectedItem.Value;
        showobj.InoxID = ddlinox.SelectedItem.Value;
        showobj.MovieID = ddlmovie.SelectedItem.Value;
        showobj.ShowDate = DateTime.Parse( ddldate.SelectedItem.Text);
        DataSet ds = showobj.checkTime();
        ddltime.DataSource = ds.Tables[0];
        ddltime.DataTextField = "ShowTime";
        ddltime.DataValueField = "ShowTime";
        ddltime.DataBind();
    }

    protected void ddlinox_SelectedIndexChanged(object sender, EventArgs e)
    {
        clsShowTime showobj = new clsShowTime();
        showobj.CityID = ddlcity.SelectedItem.Value;
        showobj.InoxID = ddlinox.SelectedItem.Value;
        
        DataSet ds = showobj.checkMovie();
        if (ds.Tables[0].Rows.Count == 0)
        {
            lblmovie.Text = "Sorry ! No Movie featured in this multiplex";
        }
        else
        {
            dropdownviewmovie();
        }
    }
    protected void ddlcity_SelectedIndexChanged(object sender, EventArgs e)
    {
        dropdownviewinox();
    }
    protected void ddldate_SelectedIndexChanged(object sender, EventArgs e)
    {

        dropdownviewtime();
    }
}