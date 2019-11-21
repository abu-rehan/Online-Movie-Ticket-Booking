using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
/// <summary>
/// Summary description for clsIUDS
/// </summary>
public class clsIUDS
{

    static String connectionstring = "Data Source=.\\sqlexpress;Initial Catalog=employeedb;Integrated Security=True;Pooling=False";

    private static SqlConnection MyConnection()
    {
        SqlConnection con = new SqlConnection(connectionstring);
        return con;
    }
    public static int InsertUpdateDelete(String query)
    {
        int result = 0;
        SqlConnection con = MyConnection();

        con.Open();
        SqlCommand com = new SqlCommand(query, con);
        result = com.ExecuteNonQuery();
        con.Close();
        return result;
    }
    public static DataSet getData(String query)
    {
        DataSet ds = new DataSet();
        SqlConnection con = MyConnection();


        SqlDataAdapter da = new SqlDataAdapter(query, con);
        da.Fill(ds);

        return ds;
    }
}