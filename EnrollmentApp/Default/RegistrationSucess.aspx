<%@ Page Title="RegistrationSuccess" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegistrationSucess.aspx.cs" Inherits="EnrollmentApp.Default.RegistrationSucess" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <br />
        <br />
       <asp:Label runat="server" Text="Registration Successful.!!!" Font-Bold="True" Font-Size="X-Large"></asp:Label><br />
       <asp:Label runat="server" Text="Please use the username and password from your email to login."></asp:Label><br /><br />
        
       <asp:HyperLink runat="server" Text="Click here to Login!" ID="hyplLogin" NavigateUrl="~/Default/default.aspx"></asp:HyperLink>
    </div>
</asp:Content>
