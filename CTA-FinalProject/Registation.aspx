<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registation.aspx.cs" Inherits="CTA_FinalProject.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="Css/CustomStyles.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
                
 <header>
            <img src="imgs/CTA%20logo%202.png" width="30" height="30"  alt="CTA Tracker">
           
        </header>
         <div class="container">
           <img src="imgs\Loyola%20homepage%20image.jpg" alt="Outside Image" class="centered-image">
                   <div class="card">
            
                                <center>
                                    <img class="account-icon"src="imgs/Register%20icon.png" />
                                </center>
         <table>
                <tr>
                    <%--<a href="Registation.aspx">Registation.aspx</a>--%>
                    <th>LUC CTA Registration</th>                  
                </tr>
             <tr>
                <td>Student ID:</td>
                <td class="auto-style3"><asp:TextBox ID="StudentIDTextBox" runat="server"></asp:TextBox></td>
                   <td><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Display="Dynamic" ErrorMessage="* Student ID is required" ControlToValidate="StudentIDTextBox" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                  </td>                   
            </tr>
            <tr>
                <td>Luc Email:</td>
                <td class="auto-style3"><asp:TextBox ID="EmailTextBox" runat="server"></asp:TextBox></td>
                   <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic" ErrorMessage="* Student Email is required" ControlToValidate="EmailTextBox" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                   </td>               
                    <td><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="* Invalid email address!" ControlToValidate="EmailTextBox" ValidationExpression="^[a-zA-Z0-9._%+-]+@luc\.edu$" ForeColor="Red" SetFocusOnError="true"></asp:RegularExpressionValidator></td>
            </tr>
            <tr>
                <td class="auto-style2">Student Name:</td>
                <td class="auto-style4"><asp:TextBox ID="StudentName" runat="server"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" Display="Dynamic" ErrorMessage="* Student name is required" ForeColor="Red" ControlToValidate="PSWTextBox" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td>Ventra Card Number:</td>
                <td class="auto-style3"><asp:TextBox ID="VentraIDTextBox" runat="server"></asp:TextBox></td>
                   <td><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Display="Dynamic" ErrorMessage="* Ventra Card Number is required" ControlToValidate="VentraIDTextBox" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                  </td>                   
            </tr>
            <tr>
                <td class="auto-style2">Password:</td>
                <td class="auto-style4"><asp:TextBox ID="PSWTextBox" TextMode="Password" runat="server"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ErrorMessage="* Password is required" ForeColor="Red" ControlToValidate="PSWTextBox" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td class="auto-style2">Confirm Password:</td>
                <td class="auto-style4"><asp:TextBox ID="PSWConfirmTextBox" TextMode="Password" runat="server"></asp:TextBox></td>
                    <td><asp:CompareValidator runat="server" ID="ComparePass" controltovalidate="PSWTextBox" controltocompare="PSWConfirmTextBox" operator="equal" errormessage="* The Passwords do not match" ForeColor="Red"/><br />
                    </td>
            </tr>
             <tr>   
                <td></td>
                <td class="auto-style3"><asp:Button ID="SubBtn" runat="server" Text="Create" OnClick="SubmitData_Click"/></td>
                <td><asp:HyperLink ID="LoginLink" NavigateUrl="~/Login.aspx" runat="server">Log In</asp:HyperLink></td>
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
