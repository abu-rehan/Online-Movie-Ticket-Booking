using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["member"] == null)
        {
            Response.Redirect("AdminLogin.aspx");
        }
        bool pagestate = this.IsPostBack;
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
    
    //protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    //{
    //    int rowno = e.RowIndex;
    //    TextBox TextBox1 = (TextBox)GridView1.Rows[rowno].Cells[2].Controls[0];
    //    String MovieID = GridView1.Rows[rowno].Cells[1].Text;
    //    TextBox TextBox2 = (TextBox)GridView1.Rows[rowno].Cells[3].Controls[0];
    //    TextBox TextBox3 = (TextBox)GridView1.Rows[rowno].Cells[4].Controls[0];
    //    TextBox TextBox4 = (TextBox)GridView1.Rows[rowno].Cells[5].Controls[0];
    //    clsMovieMaster movie = new clsMovieMaster();
    //    movie.MovieName = TextBox1.Text;
    //    movie.MovieID = MovieID;
    //    movie.MovieDetails = TextBox2.Text;
    //    movie.Photo = TextBox3.Text;
    //    movie.Date_Of_Release = TextBox4.Text;
    //    int result = movie.UpdateMovie();
    //    BindGrid();
    //}
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
    protected void GridView1_RowEditing1(object sender, GridViewEditEventArgs e)
    {
        int rowindex = e.NewEditIndex;
        GridView1.EditIndex = rowindex;
        BindGrid();
    }
    protected void GridView1_RowUpdating1(object sender, GridViewUpdateEventArgs e)
    {
        int rowno = e.RowIndex;
        TextBox TextBox1 = (TextBox)GridView1.Rows[rowno].Cells[2].Controls[0];
        String MovieID = GridView1.Rows[rowno].Cells[1].Text;
        TextBox TextBox2 = (TextBox)GridView1.Rows[rowno].Cells[3].Controls[0];
        TextBox TextBox4 = (TextBox)GridView1.Rows[rowno].Cells[5].Controls[0];
        FileUpload newfile = (FileUpload)GridView1.Rows[rowno].FindControl("FileUpload1");
        Image oldimg = (Image)GridView1.Rows[rowno].FindControl("Image2");
        clsMovieMaster movie = new clsMovieMaster();
        String oldimgurl = oldimg.ImageUrl;
        String[] arrold = oldimgurl.Split('/');
        String filename = arrold[arrold.Length - 1];
        if(newfile.HasFile)
        {
            
            //first get the filename client upload
            filename = System.IO.Path.GetFileName(newfile.PostedFile.FileName);
            //now get the server current path
            //Server.MapPath() returns the current 
            //path of theserver
            //String filename1 = filename.Substring(0, filename.Length - 4);
            //String filename1 = filename.Substring(0, filename.IndexOf(".")-1);
            //filename=filename1+
            String[] arrfilename = filename.Split('.');
            filename = arrfilename[0] + DateTime.Now.ToString("hhmmssyyyyMMdd") + "." + arrfilename[1];
            String serverpath = Server.MapPath("movieimages\\" + filename);
            //need to save the file
            newfile.PostedFile.SaveAs(serverpath);
            
        }
        movie.MovieName = TextBox1.Text;
        movie.MovieID = MovieID;
        movie.MovieDetails = TextBox2.Text;
        movie.Photo = filename;
        movie.Date_Of_Release = TextBox4.Text;
        int result = movie.UpdateMovie();
        GridView1.EditIndex = -1;
        BindGrid();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int rowno = e.RowIndex;
        String MovieID = GridView1.Rows[rowno].Cells[1].Text;
        clsMovieMaster movie = new clsMovieMaster();
        movie.MovieID = MovieID;
        int result = movie.DeleteMovie();
        BindGrid();
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        BindGrid();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String MovieID = TextBox1.Text;
        String moviename = TextBox2.Text;
        String moviedetails = TextBox3.Text;
        String releasedate = TextBox4.Text;
        String filename = "";
        if (FileUpload2.HasFile)
        {

            //first get the filename client upload
            filename = System.IO.Path.GetFileName(FileUpload2.PostedFile.FileName);
            //now get the server current path
            //Server.MapPath() returns the current 
            //path of theserver
            //String filename1 = filename.Substring(0, filename.Length - 4);
            //String filename1 = filename.Substring(0, filename.IndexOf(".")-1);
            //filename=filename1+
            String[] arrfilename = filename.Split('.');
            filename = arrfilename[0] + DateTime.Now.ToString("hhmmssyyyyMMdd") + "." + arrfilename[1];
            String serverpath = Server.MapPath("movieimages\\" + filename);
            //need to save the file
            FileUpload2.PostedFile.SaveAs(serverpath);

        }
        clsMovieMaster movie = new clsMovieMaster();
        movie.MovieName = moviename;
        movie.MovieID = MovieID;
        movie.MovieDetails = moviedetails;
        movie.Photo = filename;
        movie.Date_Of_Release = releasedate;
        int result = movie.AddMovie();
        GridView1.EditIndex = -1;
        BindGrid();

    }
}