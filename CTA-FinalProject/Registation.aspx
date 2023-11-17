<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registation.aspx.cs" Inherits="CTA_FinalProject.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
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
                <td class="auto-style4"><asp:TextBox ID="PSWTextBox" runat="server"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ErrorMessage="* Password is required" ForeColor="Red" ControlToValidate="PSWTextBox" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td class="auto-style2">Confirm Password:</td>
                <td class="auto-style4"><asp:TextBox ID="PSWConfirmTextBox" runat="server"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Display="Dynamic" ErrorMessage="* Password Confirmation is required" ForeColor="Red" ControlToValidate="PSWConfirmTextBox" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
            </tr>
             <tr>   
                <td></td>
                <td class="auto-style3"><asp:Button ID="SubBtn" runat="server" Text="Create" OnClick="SubmitData_Click"/></td>
                <td><asp:HyperLink ID="LoginLink" NavigateUrl="~/Login.aspx" runat="server">Log In</asp:HyperLink></td>
             </tr>
         </table>

    </form>
</body>
</html>
