using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
/// <summary>
/// Summary description for clsDAL
/// </summary>
public static class clsDAL
{
    static String connectionString = "Data Source=.\\sqlexpress;Initial Catalog=employeedb;Integrated Security=True;Pooling=False";

    private static SqlConnection mysqlConnection()
    {
        SqlConnection con = new SqlConnection(connectionString);
        return con;
    }
    public static int InsertUpdateDelete(String query)
    {
        SqlConnection con = mysqlConnection();
        int result = 0;
        try
        {
            con.Open();
            SqlCommand com = new SqlCommand(query, con);
            result = com.ExecuteNonQuery();
        }
        catch (Exception err)
        {
            throw err;
        }
        finally
        {
            con.Close();
        }
        return result;
    }
    public static DataSet getData(String query)
    {
        SqlConnection con = mysqlConnection();
        int result = 0;
        DataSet ds = new DataSet();
        try
        {
            SqlDataAdapter da = new SqlDataAdapter(query, con);

            da.Fill(ds);
        }
        catch (Exception err)
        {
            throw err;
        }
        finally
        {

        }
        return ds;

    }
    public static bool CheckData(String query)
    {
        SqlConnection con = mysqlConnection();
        bool result = false;
        try
        {
            con.Open();
            SqlCommand com = new SqlCommand(query, con);
            SqlDataReader dr = com.ExecuteReader();
            result = dr.Read();
            dr.Close();
        }
        catch (Exception err)
        {
            throw err;
        }
        finally
        {
            con.Close();
        }
        return result;
    }
}