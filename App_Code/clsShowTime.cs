using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
/// <summary>
/// Summary description for clsShowTime
/// </summary>
public class clsShowTime
{
    //public clsShowTime()
    //{
    //    //
    //    // TODO: Add constructor logic here
    //    //
    //}
    public String CityID
    {
        get;
        set;
    }
    public int ShowTime
    {
        get;
        set;
    }
   
    public String InoxID
    {
        get;
        set;
    }
    public String MovieID
    {
        get;
        set;
    }
    public String ScreenID
    {
        get;
        set;
    }
    public int RSeats
    {
        get;
        set;
    }
    public int ESeats
    {
        get;
        set;
    }
    public DateTime ShowDate
    {
        get;
        set;
    }
    public int AddShow()
    {
        String query = "insert into tblShowTime (CityID,InoxID,MovieID,ScreenID,ShowTime,RSeats,ESeats,ShowDate) values ('" + CityID + "','" + InoxID + "','" + MovieID + "','" + ScreenID + "','" + ShowTime + "','" + RSeats + "','" +ESeats + "','" + ShowDate + "')";
        return clsIUDS.InsertUpdateDelete(query);

    }
    public int deleteShow()
    {
        String query = "delete from tblShowTime  where InoxID='" + InoxID + "'and MovieID='" + MovieID + "'and ScreenID='" + ScreenID + "'and ShowTime='" + ShowTime + "' and CityID='" + CityID + "' and ShowDate='" + ShowDate + "'";
        return clsIUDS.InsertUpdateDelete(query);

    }
    public int UpdateShow()
    {
        String query = "update tblShowTime MovieID='"  + MovieID + "',ShowTime='" + ShowTime + "'"+" where InoxID='" + InoxID +  "'and ScreenID='" + ScreenID + "'and CityID='" + CityID + "'";
        return clsIUDS.InsertUpdateDelete(query);

    }
    public DataSet getAllShow()
    {

        String query = "select * from tblShowTime  where InoxID='" + InoxID + "'and ScreenID='" + ScreenID + "'and CityID='" + CityID + "'";
        DataSet ds = clsIUDS.getData(query);
        return ds;
    }
    public DataSet checkMovie()
    {

        String query = "select * from tblShowTime  where InoxID='" + InoxID + "'and CityID='" + CityID + "'";
        DataSet ds = clsIUDS.getData(query);
        return ds;
    }
    public DataSet checkDate()
    {

        String query = "select * from tblShowTime  where InoxID='" + InoxID + "'and MovieID='" + MovieID + "'and CityID='" + CityID + "'";
        DataSet ds = clsIUDS.getData(query);
        return ds;
    }
    public DataSet checkTime()
    {

        String query = "select * from tblShowTime  where InoxID='" + InoxID + "'and MovieID='" + MovieID + "'and CityID='" + CityID + "' and ShowDate='"+ShowDate+"'";
        DataSet ds = clsIUDS.getData(query);
        return ds;
    }
}