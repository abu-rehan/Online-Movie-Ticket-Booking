using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
/// <summary>
/// Summary description for clsCity
/// </summary>
public class clsCity
{
	
    public String CityID
    {
        get;
        set;
    }
    public String CityName
    {
        get;
        set;
    }
    
    public int AddCity()
    {
        String query = "insert into tblCity (CityID,CityName) values ('"+ CityID + "','" + CityName + "')";
        return clsIUDS.InsertUpdateDelete(query);

    }
    public int deleteCity()
    {
        String query = "delete from tblCity  where CityID='" + CityID + "'";
        return clsIUDS.InsertUpdateDelete(query);

    }
    public int UpdateCity()
    {
        String query = "update tblCity set CityName='" + CityName + "' where CityID='" + CityID + "'";
        return clsIUDS.InsertUpdateDelete(query);

    }
    public DataSet getAllCity()
    {
        
        String query = "select * from tblCity";
        DataSet ds = clsIUDS.getData(query);
        return ds;
    }
    
}