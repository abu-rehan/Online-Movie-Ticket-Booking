using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
/// <summary>
/// Summary description for clsMultiplex
/// </summary>
public class clsMultiplex
{
	//public clsMultiplex()
	//{
		//
		// TODO: Add constructor logic here
		//
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
    public String InoxName
    {
        get;
        set;
    }
    public String Address
    {
        get;
        set;
    }
    public String Phone
    {
        get;
        set;
    }
    public String EmailID
    {
        get;
        set;
    }
    public int AddMultiplex()
    {
        String query = "insert into tblMultiplex (CityID,InoxID,InoxName,Address,Phone,EmailID) values ('" + CityID + "','" + InoxID + "','" + InoxName  +"','" + Address + "','" + Phone + "','" + EmailID + "')";
        return clsIUDS.InsertUpdateDelete(query);

    }
    public int deleteMultiplex()
    {
        String query = "delete from tblMultiplex  where CityID='" + CityID + "' and InoxID= '" + InoxID+"'";
        return clsIUDS.InsertUpdateDelete(query);

    }
    public int UpdateMultiplex()
    {
        String query = "update tblMultiplex set InoxName='" + InoxName +"',Address = '"+Address+"',Phone='"+Phone+"',EmailID='"+EmailID+ "' where CityID='" + CityID + "' and InoxID= '" + InoxID+"'";
        return clsIUDS.InsertUpdateDelete(query);

    }
    public DataSet getAllMultiplex()
    {

        String query = "select * from tblMultiplex where CityID='"+CityID+"'";
        DataSet ds = clsIUDS.getData(query);
        return ds;
    }
    
    
}