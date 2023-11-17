using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Configuration;

namespace DataLayer
{
    public class MainSQLConnection
    {
        private SqlConnection conn;

        public MainSQLConnection()
        {
            conn = new SqlConnection();
            conn.ConnectionString = "Server=sql.cs.luc.edu;uid=avaldivieso1;pwd=p84754";
            conn.Open();
        }
    }
}
