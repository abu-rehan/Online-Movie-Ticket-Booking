using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
/// <summary>
/// Summary description for clsUser
/// </summary>
public class clsUser
{
	public clsUser()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    
    public String Username
    {
        get;
        set;
    }
    public String Password
    {
        get;
        set;
    }
    public String EmailID
    {
        get;
        set;
    }
    public String Date_Of_Birth
    {
        get;
        set;
    }
    public String Phone
    {
        get;
        set;
    }
    public DataSet getUser()
    {

        String query = "select * from tblUser where Username="+Username+"'";
        DataSet ds = clsIUDS.getData(query);
        return ds;
    }
    public int UpdateUser()
    {
        String query = "update tblUser set Username='" + Username + "',Password='" + Password + "', Date_Of_Birth='" + Date_Of_Birth;
        query += "',Phone='" + Phone + "' where EmailID='" + EmailID + "'";
        return clsDAL.InsertUpdateDelete(query);
    }
    public int AddMember()
    {
        String query = "insert into tblUser(emailid,date_of_birth,password,phone,username)values('"+ EmailID + "','" + Date_Of_Birth + "','" + Password + "','" + Phone + "','" + Username + "')";
        return clsDAL.InsertUpdateDelete(query);
    }
    public bool CheckUserAuthenticate()
    {
        //return clsDAL.getData("select * from tblUser order by memebername");
        String query = "select * from tblUser  where emailid='" + EmailID + "' and password='" + Password + "'";
        return clsDAL.CheckData(query);
    }
    public clsUser CheckUserAuthenticate(String username, String password)
    {
        //return clsDAL.getData("select * from tblUser order by memebername");
        String query = "select * from tblUser  where emailid='" + EmailID + "' and password='" + Password + "'";
        DataSet ds = clsDAL.getData(query);
        if (ds.Tables[0].Rows.Count > 0)
        {
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                this.Date_Of_Birth = dr["Date_Of_Birth"].ToString();
                this.Phone = dr["phone"].ToString();
                this.Username = dr["Username"].ToString();
            }
        }
        else
        {
            return null;
        }
        return this;

    }
}