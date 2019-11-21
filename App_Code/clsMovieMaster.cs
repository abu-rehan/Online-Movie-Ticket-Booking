using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for clsMovieMaster
/// </summary>
public class clsMovieMaster
{
	public clsMovieMaster()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public String MovieID
    {
        get;
        set;
    }
    public String MovieName
    {
        get;
        set;
    }
    public String MovieDetails
    {
        get;
        set;
    }
    public String Photo
    {
        get;
        set;
    }
    public String Date_Of_Release
    {
        get;
        set;
    }
    public int AddMovie()
    {
        String query= "Insert into moviemaster(movieid, moviename, details, photo, releasedate) values('"+MovieID+"', '"+MovieName+"', '"+MovieDetails;
            query+="','"+Photo+"','"+Date_Of_Release+"')";
        return clsDAL.InsertUpdateDelete(query);
    }
    public int UpdateMovie()
    {
        String query = "update moviemaster set moviename='" + MovieName + "',details='" + MovieDetails + "', photo='" + Photo;
        query += "',releasedate='" + Date_Of_Release + "' where movieid='" + MovieID + "'";
        return clsDAL.InsertUpdateDelete(query);
    }

    public int DeleteMovie()
    {
        String query = "delete from  moviemaster where movieid='" + MovieID + "'";
        return clsDAL.InsertUpdateDelete(query);
    }
    public DataSet getAllMovies()
    {
        String query = "select * from moviemaster order by movieid";
        DataSet ds = clsDAL.getData(query);
        return ds;
    }
    public DataSet getPhoto()
    {
        String query = "select Photo from moviemaster where movieid='"+MovieID+"'";
        DataSet ds = clsDAL.getData(query);
        return ds;
    }
}