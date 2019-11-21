using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for clsAdmin
/// </summary>
public class clsAdmin
{
	public clsAdmin()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public String Name
    {
        get;
        set;
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
    public String Address
    {
        get;
        set;
    }
    public int AddMember()
    {
        String query = "insert into tblAdmin(name,emailid,date_of_birth,password,phone,username, address)values('" + Name + "','" + EmailID + "','" + Date_Of_Birth + "','" + Password + "','" + Phone + "','"+Username+"','"+Address+"')";
        return clsDAL.InsertUpdateDelete(query);
    }
    public int UpdateMember()
    {
        String query = "update tblAdmin set name='" + Name + "', Date_Of_Birth='" + Date_Of_Birth + "',password='" + Password + "',address='" + Address + "',phone='" + Phone + "' where emailid='" + EmailID + "'";
        return clsDAL.InsertUpdateDelete(query);
    }

    public int DeleteMember()
    {
        String query = "delete from  tblAdmin where emailid='" + EmailID + "'";
        return clsDAL.InsertUpdateDelete(query);
    }
    public DataSet getAllMember()
    {
        //return clsDAL.getData("select * from tblAdmin order by memebername");
        String query = "select * from tblAdmin order by name";
        DataSet ds = clsDAL.getData(query);
        return ds;
    }

    public bool CheckEmailID()
    {
        //return clsDAL.getData("select * from tblAdmin order by memebername");
        String query = "select * from tblAdmin  where emailid='" + EmailID + "'";
        return clsDAL.CheckData(query);
    }
    public bool CheckUserAuthenticate()
    {
        //return clsDAL.getData("select * from tblAdmin order by memebername");
        String query = "select * from tblAdmin  where emailid='" + EmailID + "' and password='" + Password + "'";
        return clsDAL.CheckData(query);
    }
    public clsAdmin CheckUserAuthenticate(String username, String password)
    {
        //return clsDAL.getData("select * from tblAdmin order by memebername");
        String query = "select * from tblAdmin  where emailid='" + EmailID + "' and password='" + Password + "'";
        DataSet ds = clsDAL.getData(query);
        if (ds.Tables[0].Rows.Count > 0)
        {
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                this.Date_Of_Birth = dr["Date_Of_Birth"].ToString();
                this.Phone = dr["phone"].ToString();
                this.Name = dr["name"].ToString();
                this.Address = dr["address"].ToString();
                this.Username = dr["username"].ToString();
            }
        }
        else
        {
            return null;
        }
        return this;

    }
}