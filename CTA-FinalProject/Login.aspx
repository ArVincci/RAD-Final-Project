<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CTA_FinalProject.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   
    <%--Bootstrap CSS--%>
    <link href="Bootstrap/CSS/bootstrap.min.css" rel="stylesheet" />
     <%--DataTables CSS--%>
    <link href="Datatables/CSS/jquery.dataTables.min.css" rel="stylesheet" />
       <%--FontAwesome CSS--%>
    <link href="Fontawesome/css/all.css" rel="stylesheet" />
     <%--Custom CSS--%>
    <link href="CSS/CustomStyleSheet.css" rel="stylesheet" />
      <%--jquery--%>
    <script src="Bootstrap/JS/jquery-3.2.1.slim.min.js"></script>
      <%--popper js--%>
    <script src="Bootstrap/JS/popper.min.js"></script>
      <%--Bootstrap js--%>
    <script src="Bootstrap/JS/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">

        <div>
           <nav class="navbar navbar-expand-lg navbar-light">

            <a class="navbar-brand" href="#">
            <img src="Images/CTA%20logo%202.png" width="30" height="30" />
            CTA tracker
            </a>

            <button class="navbar-toggler" type="button" data-toggle="collapse" 
                data-target="#navbarSupportedContent" aria-controls="navbarSuppportedContent" 
                aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
              
               <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href=".aspx">Home</a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="#">About Us</a>
                    </li>

                    </ul>

                    <ul class="navbar-nav">
                        
                     
                        <li class="nav-item active">
                            <asp:LinkButton class="nav-link" ID="LinkButton3" runat="server">Logout</asp:LinkButton>
                            </li>
                    
                    </ul>
                </div>

               </nav>
            </div>


         <table>
                <tr>
                    <th>LUC CTA Login</th>                  
                </tr>
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
    </form>
</body>
</html>
