using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Connect
/// </summary>
public class GlobalConnection
{

    public SqlConnection cnn;

    public GlobalConnection()
    {
        string strConnString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        cnn = new SqlConnection(strConnString);
        cnn.Open();
    }

    

}
