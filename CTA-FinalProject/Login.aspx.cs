using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;


namespace CTA_FinalProject
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void LogIn_Click(object sender, EventArgs e)
        {
            //this is for test the connection
            //from here
            {
                try
                {
                    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLConnection"].ConnectionString);
                    conn.Open();

                    if (conn.State == ConnectionState.Open)
                    {
                        Response.Write("Connection OK!");
                        conn.Close();
                    }
                    else
                    {
                        Response.Write("No Connection!");
                    }
                }
                catch { Response.Write("No Connection!"); }
            }
            //to here can be deleted
        }
    }
}
    
