using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace CTA_FinalProject
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void SubmitButton_Click(object sender, EventArgs e)
        {

            string selectedFrom = ddlFrom.SelectedValue;
            string selectedTo = ddlTo.SelectedValue;
            showTrainsAsync(selectedFrom, selectedTo);

        }

        protected async Task showTrainsAsync(string from, string to) {
            string loyolaMapId = from == "LakeShore" ? "41300" : "41450";
            string redLineAPI = $"https://www.transitchicago.com/api/1.0/ttarrivals.aspx?key=c68cc7ab9421498 6b1eddff29b4390e8&mapid={loyolaMapId}&max=10&outputType=JSON";
            using (HttpClient client = new HttpClient())
            {
                try
                {
                    HttpResponseMessage response = client.GetAsync(redLineAPI).Result;

                    if (response.IsSuccessStatusCode)
                    {
                        string apiResponse = response.Content.ReadAsStringAsync().Result;
                    }
                }
                catch (Exception ex)
                {
                    Console.WriteLine($"An error occurred: {ex.Message}");
                }
            }

        }

        }
    }