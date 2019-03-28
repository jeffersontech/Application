<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewCustomer.aspx.cs" Inherits="EnrollmentApp.NewCustomer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title><%: Page.Title %></title>

    <webopt:bundlereference runat="server" path="~/Content/css" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />
    <style type="text/css">
        .auto-style1 {
            width: 309px;
        }
    </style>
    </head>
<body>
            <form runat="server">
        <asp:ScriptManager runat="server">
            <Scripts>
                <%--To learn more about bundling scripts in ScriptManager see https://go.microsoft.com/fwlink/?LinkID=301884 --%>
                <%--Framework Scripts--%>
                <asp:ScriptReference Name="MsAjaxBundle" />
                <asp:ScriptReference Name="jquery" />
                <asp:ScriptReference Name="bootstrap" />
                <asp:ScriptReference Name="WebForms.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebForms.js" />
                <asp:ScriptReference Name="WebUIValidation.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebUIValidation.js" />
                <asp:ScriptReference Name="MenuStandards.js" Assembly="System.Web" Path="~/Scripts/WebForms/MenuStandards.js" />
                <asp:ScriptReference Name="GridView.js" Assembly="System.Web" Path="~/Scripts/WebForms/GridView.js" />
                <asp:ScriptReference Name="DetailsView.js" Assembly="System.Web" Path="~/Scripts/WebForms/DetailsView.js" />
                <asp:ScriptReference Name="TreeView.js" Assembly="System.Web" Path="~/Scripts/WebForms/TreeView.js" />
                <asp:ScriptReference Name="WebParts.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebParts.js" />
                <asp:ScriptReference Name="Focus.js" Assembly="System.Web" Path="~/Scripts/WebForms/Focus.js" />
                <asp:ScriptReference Name="WebFormsBundle" />
                <%--Site Scripts--%>
            </Scripts>
        </asp:ScriptManager>
        
            
        
        <div class="navbar navbar-dark navbar-expand-sm navbar-fixed-top bg-dark">
            <div class="container">
                <div class="navbar-header">

                </div>
                <asp:Label ID="lblUser" runat="server" Font-Bold="True" ForeColor="White" ></asp:Label>
                <asp:Label ID="lblUser2" runat="server"></asp:Label>
                <div class="navbar-collapse collapse" id="#navbarSupportedContent">
                    <ul class="nav navbar-nav mr-auto">
                        <li class="nav-item"><a runat="server" href="~/Application.aspx" class="nav-link">Home</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div>
           <h3>Please fill the below form to add the customer</h3>
           <table>
               <tr>
                   <td>
                       First Name:
                   </td>
                   <td class="auto-style1">
                       <asp:TextBox ID="txtFirstName" runat="server" TextMode="SingleLine" MaxLength="25"></asp:TextBox>
                       <asp:RequiredFieldValidator  ID="reqFirstName" runat="server" Text="*" ControlToValidate="txtFirstName" ErrorMessage="First Name is required"></asp:RequiredFieldValidator>
                   </td>
               </tr>
               <tr>
                   <td>
                       Last Name:
                   </td>
                   <td class="auto-style1">
                       <asp:TextBox ID="txtLastName" runat="server" TextMode="SingleLine" MaxLength="25"></asp:TextBox>
                       <asp:RequiredFieldValidator id="reqLastName" runat="server" Text="*" ControlToValidate="txtFirstName" ErrorMessage="First Name is required"></asp:RequiredFieldValidator>
                   </td>
               </tr>
               <tr>
                   <td>
                       Gender:
                   </td>
                   <td class="auto-style1">
                       <asp:RadioButtonList ID="radioGender" runat="server" RepeatDirection="Horizontal" Width="243px">
                           <asp:ListItem Value="1">Male</asp:ListItem>
                           <asp:ListItem Value="2">Female</asp:ListItem>
                           <asp:ListItem Value="3">Unknown</asp:ListItem>
                       </asp:RadioButtonList>
                       <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" Text="*" ControlToValidate="txtFirstName" ErrorMessage="First Name is required"></asp:RequiredFieldValidator>
                   </td>
               </tr>
           </table>
            
        </div>
           
        <div class="container body-content">
            <footer>
                <p>&copy; <%: DateTime.Now.Year %> - PlusWin Solutions</p>
            </footer>
        </div>


    </form>
</body>
</html>
