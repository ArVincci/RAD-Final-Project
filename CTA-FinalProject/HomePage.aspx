<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="CTA_FinalProject.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title></title>
    <style>
       
 body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-color: #fff; /* Set your desired background color */
        }

        header {
            background-color: #862041; /* Black header background color */
            color: #fff; /* Text color for the header */
            padding: 10px;
            text-align: center;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        header img {
            max-height: 50px; /* Adjust the height as needed */
        }

        footer {
            background-color: #862041; /* Black footer background color */
            color: #fff; /* Text color for the footer */
            padding: 10px;
            text-align: center;
            position: fixed;
            bottom: 0;
            width: 100%;
        }

        .container {
            display: flex;
            justify-content: flex-start;
            align-items: center;
            /* height: 100vh; */
            flex-direction: column;
        }

        .card {
            border: 1px solid #000;
            padding: 20px;
            text-align: center;
            width: 80%; /* Set the width as needed */
            max-width: 400px; /* Set the maximum width of the card */
margin-bottom: 100px;
        }

        .card img {
            max-width: 100%; /* Make sure the image doesn't exceed the card width */
            margin-bottom: 15px; /* Adjust the margin as needed */
        }

        .centered-image {
            max-width: 100%; /* Make sure the image doesn't exceed the viewport width */
            max-height: 100%; /* Make sure the image doesn't exceed the viewport height */            
            /* position: absolute; 
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            */
        }

.footerlinks {
    color: #ffffff;
  
}

    .footerlinks:hover {
        color: #ffd800;
    }

#resultsContainer {
    background: orange;
text-align: left;
    border: 1px orange solid;
    padding: 10px;
    margin-top: 10px;
}

    </style>
</head>
<body>
    <form id="form1" runat="server">

 <header>
            <img src="imgs/CTA%20logo%202.png" width="30" height="30"  alt="CTA Tracker>
           
        </header>

        <div class="container">
            <img src="imgs\Loyola%20homepage%20image.jpg" alt="Outside Image" class="centered-image">
            <div class="card">
       
 <center>
                                    <img src="imgs/Trip%20planner.png" />
                                </center>
                  <label for="ddlFrom">From:</label>
            <asp:DropDownList ID="ddlFrom" runat="server">
                <asp:ListItem Value="LakeShore">Lake Shore Campus</asp:ListItem>
                <asp:ListItem Value="Downtown">Downtown Campus</asp:ListItem>
            </asp:DropDownList>
                 <br/>
                 <br/>
            <label for="ddlTo">To:</label>
            <asp:DropDownList ID="ddlTo" runat="server">
                <asp:ListItem Value="LakeShore">Lake Shore Campus</asp:ListItem>
                <asp:ListItem Value="Downtown">Downtown Campus</asp:ListItem>
            </asp:DropDownList>
                   <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="SubmitButton_Click" />
             <div id="resultsContainer" runat="server">
                <asp:Literal ID="litResults" runat="server"></asp:Literal>
                <asp:Literal ID="busLiteral" runat="server"></asp:Literal>
            </div>
        </div>
         
    <footer>
            <p>&copy; CTA Tracker All rights reserved. <a class="footerlinks" href="https://www.luc.edu/">Loyola University Chicago</a></p>
        </footer>
    </form>
   
</body>
</html>
