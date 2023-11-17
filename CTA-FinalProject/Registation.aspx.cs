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
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitData_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLConnection"].ConnectionString);
                conn.Open();

                string InsertQuery = "INSERT INTO dbo.users(studentID,LUCMail,UserName,VentraCard,Password) VALUES (@studentid,@lucmail,@username,@ventracard,@password)";
                SqlCommand cmd = new SqlCommand(InsertQuery, conn);
                cmd.Parameters.AddWithValue("@studentid", StudentIDTextBox.Text);
                cmd.Parameters.AddWithValue("@lucmail", EmailTextBox.Text);
                cmd.Parameters.AddWithValue("@username", StudentName.Text);
                cmd.Parameters.AddWithValue("@ventracard", VentraIDTextBox.Text);
                cmd.Parameters.AddWithValue("@password", PSWTextBox.Text);
                cmd.ExecuteNonQuery();

                Response.Write("Student has be registed successfully!");

                conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error" + ex.ToString());
            }
        }
    }
}