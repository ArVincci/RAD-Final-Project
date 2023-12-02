﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Threading.Tasks;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json.Linq;

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
            showBusessAsync(selectedFrom, selectedTo);

        }

        protected async Task showTrainsAsync(string from, string to)
        {
            string loyolaMapId = from == "LakeShore" ? "41300" : "41450";
            string redLineAPI = $"https://www.transitchicago.com/api/1.0/ttarrivals.aspx?key=c68cc7ab94214986b1eddff29b4390e8&mapid={loyolaMapId}&max=10&outputType=JSON";
            using (HttpClient client = new HttpClient())
            {
                try
                {
                    HttpResponseMessage response = client.GetAsync(redLineAPI).Result;

                    if (response.IsSuccessStatusCode)
                    {
                        string apiResponse = response.Content.ReadAsStringAsync().Result;
                        //RootObject rootObject = JsonConvert.DeserializeObject<RootObject>(apiResponse);
                        dynamic responseData = JObject.Parse(apiResponse);
                        string resultOutput = "";
                        if (responseData.ctatt != null && responseData.ctatt.eta != null)
                        {
                            foreach (var arrival in responseData.ctatt.eta)
                            {
                                if (from == "LakeShore")
                                {
                                    if (arrival.stpDe == "Service toward 95th/Dan Ryan")
                                    {
                                        string stationName = arrival.staNm;
                                        string lineName = arrival.rt;
                                        string destinationName = arrival.destNm;
                                        string aarivalTime = arrival.arrT;
                                        resultOutput += $"Station Name: {stationName}<br/>";
                                        resultOutput += $"Line Name: {lineName}<br/>";
                                        resultOutput += $"Destination Name: {destinationName}<br/>";
                                        resultOutput += $"Arrival Time: {aarivalTime}<br/><br/>";
                                        //Console.WriteLine($"Station Name: {stationName}");
                                        //Console.WriteLine($"Line Name: {lineName}");
                                        //Console.WriteLine($"Destination Name: {destinationName}");
                                        //Console.WriteLine($"Arrival Time: {aarivalTime}");
                                    }
                                }
                                else
                                {
                                    if (arrival.stpDe == "Service toward Howard")
                                    {
                                        string stationName = arrival.staNm;
                                        string lineName = arrival.rt;
                                        string destinationName = arrival.destNm;
                                        string aarivalTime = arrival.arrT;
                                        resultOutput += $"Station Name: {stationName}<br/>";
                                        resultOutput += $"Line Name: {lineName}<br/>";
                                        resultOutput += $"Destination Name: {destinationName}<br/>";
                                        resultOutput += $"Arrival Time: {aarivalTime}<br/><br/>";
                                        //Console.WriteLine($"Station Name: {stationName}");
                                        //Console.WriteLine($"Line Name: {lineName}");
                                        //Console.WriteLine($"Station Name: {destinationName}");
                                        //Console.WriteLine($"Station Name: {aarivalTime}");
                                    }
                                }
                            }
                            litResults.Text = resultOutput;
                        }

                    }
                }
                catch (Exception ex)
                {
                    Console.WriteLine($"An error occurred: {ex.Message}");
                }
            }

        }
        protected async Task showBusessAsync(string from, string to)
        {
            string loyolaStpId = from == "LakeShore" ? "1031" : "1127";
            string busAPI = $"http://ctabustracker.com/bustime/api/v2/getpredictions?key=hAZWFBedtxYmzhejPDhZCaSjA&stpid={loyolaStpId},1024&format=json";
            using (HttpClient client = new HttpClient())
            {
                try
                {
                    HttpResponseMessage response = client.GetAsync(busAPI).Result;

                    if (response.IsSuccessStatusCode)
                    {
                        string apiResponse = response.Content.ReadAsStringAsync().Result;
                        //RootObject rootObject = JsonConvert.DeserializeObject<RootObject>(apiResponse);
                        dynamic responseData = JObject.Parse(apiResponse);
                        var dataBus = responseData["bustime-response"]?["prd"];
                        var demodata = responseData.prd;
                        string resultOutput = "";
                        if (responseData["bustime-response"]?["prd"] != null)
                        {
                            foreach (var arrival in responseData["bustime-response"]?["prd"])
                            {

                                string stopName = arrival.stpnm;
                                string route = arrival.rt;
                                string destinationName = arrival.des;
                                string aarivalTime = arrival.prdtm;
                                resultOutput += $"Station Name: {stopName}<br/>";
                                resultOutput += $"Line Name: {route}<br/>";
                                resultOutput += $"Destination Name: {destinationName}<br/>";
                                resultOutput += $"Arrival Time: {aarivalTime}<br/><br/>";
                            }
                            busLiteral.Text = resultOutput;
                        }
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