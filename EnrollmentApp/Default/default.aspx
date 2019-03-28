<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="EnrollmentApp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server" >
    <h1><%:Title %></h1>
    <h2>Maargam</h2>
    <p class="lead">
        Travel Agency Application
    </p>

    <table>
            <tr style="text-align: center; font-size: large; font-weight: bold">
                <td colspan="2" style="height: 40px">Employee Login
                </td>
            </tr>
            <tr>
                <td style="font-size: large; font-weight: bold; width: 149px; height: 52px;">User Name:
                </td>
                <td style="text-align: center; height: 52px; width: 287px;">
                    <asp:TextBox runat="server" ID="txtUserName"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="font-size: large; font-weight: bold; width: 149px; height: 49px;">Password:
                </td>
                <td style="text-align: center; height: 49px; width: 287px;">
                    <asp:TextBox runat="server" ID="txtPassword" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr style="text-align: center">
                
                <td  colspan="2" style="height: 63px">
                    
                    <asp:Button runat="server" ID="btnLogin" Text="Login" Width="150px" Font-Bold="true" OnClick="btnLogin_Click" />
                </td>
                      
            </tr>
        <tr style="text-align: center">
                
                <td  colspan="2" style="height: 63px">
                    <ASP:CheckBox id="CheckBox1" runat="server" autopostback="false" text="Remember Me"/>
                   
                </td>
                      
            </tr>
            <tr style="text-align: center">
                <td colspan="2" style="height: 41px">
                    <asp:label runat="server" ID="lblMessage"></asp:label>
                </td>
            </tr>
            <tr style="text-align: center">
                <td colspan="2" style="height: 41px">
                    <asp:HyperLink runat="server" NavigateUrl="Register.aspx" Text="Click here to Register!" ID="HyperLink1"></asp:HyperLink>
                </td>
            </tr>
            <tr style="text-align: center">
                <td colspan="2" style="height: 41px">
                    &nbsp;</td>
            </tr>
        </table>

    
    </asp:Content>