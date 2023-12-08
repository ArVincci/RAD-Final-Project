<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CTA_FinalProject.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style> a {
            color:white;
            text-decoration: none;
        }
        </style>
        <link href="Css/CustomStyles.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">

        
 <header>
            <img src="imgs/CTA%20logo%202.png" width="30" height="30"  alt="CTA Tracker">
           <a href="CampusShuttle.aspx">Campus shuttle</a>
        </header>

      <div class="container">
           <img src="imgs\Loyola%20homepage%20image.jpg" alt="Outside Image" class="centered-image">
                   <div class="card">
            
                                <center>
                                    <img class="account-icon" src="imgs\black%20account%20icon.jpg" />
                                </center>
                       <span>LUC CTA Login</span>
         <table>
             
             <tr>
                <td>Luc Email:</td>
                <td class="auto-style3"><asp:TextBox ID="EmailTextBox" runat="server"></asp:TextBox></td>
                   <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic" ErrorMessage="* Student Email is required" ControlToValidate="EmailTextBox" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                   </td>    
                <td><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="* Invalid email address!" ControlToValidate="EmailTextBox" ValidationExpression="^[a-zA-Z0-9._%+-]+@luc\.edu$" ForeColor="Red" SetFocusOnError="true"></asp:RegularExpressionValidator></td>

            </tr>
            <tr>
                <td class="auto-style2">Password:</td>
                <td class="auto-style4"><asp:TextBox ID="PSWTextBox" TextMode="Password" runat="server" OnTextChanged="PSWTextBox_TextChanged"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ErrorMessage="* Password is required" ForeColor="Red" ControlToValidate="PSWTextBox" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
            </tr>
             <tr>   
                <td></td>
                <td class="auto-style3"><asp:Button ID="SubBtn" runat="server" Text="Login" OnClick="LogIn_Click"/></td> <%--currently test the connection to the SQL server--%>
                <td><asp:HyperLink ID="RegisterLink" NavigateUrl="~/Registation.aspx" runat="server">Register</asp:HyperLink></td>
             </tr>
         </table>
            </div>
          </div>
        <footer>
            <p>&copy; CTA Tracker All rights reserved. <a class="footerlinks" href="https://www.luc.edu/">Loyola University Chicago</a></p>
        </footer>
    </form>
</body>
</html>
