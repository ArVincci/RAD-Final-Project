<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="CTA_FinalProject.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
       
    </style>
</head>
<body>
    <form id="form1" runat="server">
       
             <div class="container">
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
        </div>
    </form>
</body>
</html>
