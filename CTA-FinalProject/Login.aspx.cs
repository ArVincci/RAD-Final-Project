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
            {
                try
                {
                    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLConnection"].ConnectionString);

                    string SearchQuery = ("SELECT * FROM dbo.users where LUCMail=@lucmail and Password=@password");
                    SqlCommand cmd = new SqlCommand(SearchQuery, conn);

                    cmd.Parameters.AddWithValue("@lucmail", EmailTextBox.Text);
                    cmd.Parameters.AddWithValue("@password", PSWTextBox.Text);

                    SqlDataAdapter sda = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    sda.Fill(dt);

                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();

                    if (dt.Rows.Count > 0)
                    {
                        Response.Redirect("HomePage.aspx");
                    }
                    else
                    {
                        Response.Write("User email or password incorrect");
                    }
                }
                catch { Response.Write("No Connection!"); }
            }
        }
    }
}
    
