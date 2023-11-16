<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage.Master" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="CTA_frontend.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <img src="imgs/Homepage%20Image.png" class=img-flluid />
    </section>
    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="imgs/Trip%20planner.png" />
                                </center>
                            </div>
                            <div class="row">
                            <div class="col">
                                <center>
                                   <h2>Trip Planner</h2>
                                </center>
                            </div>
                                <div class="row">
                            <div class="col">
                                <center>
                                   <hr> 
                                </center>
                            </div>

                              <div class="row">
                            <div class="col">
                               
                                 <label>Your Location</label>
                                <div class="form group">
                                    <asp:TextBox Cssclass="form-control" ID="TextBox1" runat="server"
                                        placeholder="Starting Point">

                                    </asp:TextBox>
                                </div>
                                
                                 <label>Destination</label>
                                <div class="form group">
                                    <asp:TextBox Cssclass="form-control" ID="TextBox2" runat="server"
                                        placeholder="End Point">

                                    </asp:TextBox>
                                </div>



                            </div>


                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
   </div>
</div>
</div>
   



</asp:Content>
