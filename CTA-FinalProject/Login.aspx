<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CTA_FinalProject.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            height: 29px;
        }
        .auto-style3 {
            width: 178px;
        }
        .auto-style4 {
            height: 29px;
            width: 178px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <table>
                <tr>
                    <th>LUC CTA Login</th>                  
                </tr>
             <tr>
                <td>Luc Email:</td>
                <td class="auto-style3"><asp:TextBox ID="EmailTextBox" runat="server"></asp:TextBox></td>
                   <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic" ErrorMessage="* Student Email is required" ControlToValidate="EmailTextBox" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                   </td>                   
            </tr>
            <tr>
                <td class="auto-style2">Password:</td>
                <td class="auto-style4"><asp:TextBox ID="PSWTextBox" runat="server"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ErrorMessage="* Password is required" ForeColor="Red" ControlToValidate="PSWTextBox" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
            </tr>
             <tr>   
                <td></td>
                <td class="auto-style3"><asp:Button ID="SubBtn" runat="server" Text="Login" OnClick="LogIn_Click"/></td>
                <td><asp:HyperLink ID="RegisterLink" NavigateUrl="~/Registation.aspx" runat="server">Register</asp:HyperLink></td>
             </tr>
         </table>
    </form>
</body>
</html>
