using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
/// <summary>
/// Summary description for clsScreen
/// </summary>
public class clsScreen
{
    //public clsScreen()
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
    public String InoxID
    {
        get;
        set;
    }
    public String ScreenID
    {
        get;
        set;
    }
    public String ScreenName
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
    
    public int AddScreen()
    {
        String query = "insert into tblScreen (CityID,InoxID,ScreenID,ScreenName,RSeats,ESeats) values ('"+ CityID+"','" + InoxID + "','" + ScreenID + "','" + ScreenName + "','" + RSeats +"','"+ESeats+ "')";
        return clsIUDS.InsertUpdateDelete(query);

    }
    public int deleteScreen()
    {
        String query = "delete from tblScreen  where InoxID='" + InoxID+ "' and CityID='"+CityID+"'";
        return clsIUDS.InsertUpdateDelete(query);

    }
    public int UpdateScreen()
    {
        String query = "update tblScreen set ScreenName='" + ScreenName + "',RSeats = '" + RSeats + "',ESeats = '" + ESeats + "' where InoxID= '" + InoxID + "' and ScreenID='"+ScreenID+"' and CityID='"+CityID+"'";
        return clsIUDS.InsertUpdateDelete(query);

    }
    public DataSet getAllScreen()
    {

        String query = "select * from tblScreen where InoxID='" + InoxID + "'and CityID='"+CityID+"'";
        DataSet ds = clsIUDS.getData(query);
        return ds;
    }
    public DataSet getAllRseat()
    {

        String query = "select RSeats from tblScreen where InoxID='" + InoxID + "'and CityID='" + CityID + "' and ScreenID='"+ScreenID+"'";
        DataSet ds = clsIUDS.getData(query);
        return ds;
    }
    public DataSet getAllEseat()
    {

        String query = "select ESeats from tblScreen where InoxID='" + InoxID + "'and CityID='" + CityID + "' and ScreenID='"+ScreenID+"'";
        DataSet ds = clsIUDS.getData(query);
        return ds;
    }
}