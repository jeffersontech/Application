<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="EnrollmentApp.Default.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <table>
            <tr>
                <td colspan="2" style="text-align:center; height: 57px; font-weight:bold; font-size:larger">
                    Registration Form
                </td>
            </tr>
            <tr>
                <td style="width: 199px; height: 49px">
                    First Name:
                </td>
                <td style="width: 596px; height: 49px">
                    <asp:TextBox runat="server" ID="txtFirstName" MaxLength="25"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqFirstName" ErrorMessage="First Name is required" 
                        ControlToValidate="txtFirstName" runat="server" ForeColor="Red"
                        >*</asp:RequiredFieldValidator>
                 </td>
            </tr>
            <tr>
                <td style="width: 199px; height: 49px">
                    Last Name:
                </td>
                <td style="width: 596px; height: 49px">
                    <asp:TextBox runat="server" ID="txtLastName" MaxLength="25"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqLastName" ErrorMessage="Last Name is required" 
                        ControlToValidate="txtLastName" runat="server" ForeColor="Red"
                        >*</asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td style="width: 199px; height: 49px">
                    User Name:
                </td>
                <td style="width: 596px; height: 49px">
                    <asp:TextBox runat="server" ID="txtUserName" OnTextChanged="txtUserName_TextChanged" MaxLength="10"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqUserName" ErrorMessage="User Name is required" 
                        ControlToValidate="txtUserName" runat="server" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
                
            </tr>
            
            <tr>
                <td style="width: 199px; height: 49px">
                    Email Id:
                </td>
                <td style="width: 596px; height: 49px">
                    <asp:TextBox runat="server" ID="txtEmail" TextMode="Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqEmail" ErrorMessage="Email ID is required" 
                        ControlToValidate="txtEmail" runat="server" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator runat="server" ID="reqexpEmail" ForeColor="Red" 
                        ErrorMessage="Invalid Email" 
                        ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 199px; height: 49px">
                    Phone Number:
                </td>
                <td style="width: 596px; height: 49px">
                    <asp:TextBox runat="server" ID="txtPhoneNo" TextMode="Phone" MaxLength="10"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqPhone" ErrorMessage="Phone Number is required" 
                        ControlToValidate="txtPhoneNo" runat="server" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator runat="server" ID="regexPhone" ForeColor="Red" 
                        ErrorMessage="Invalid Phone Number" 
                        ControlToValidate="txtPhoneNo" ValidationExpression="\d{10}">*</asp:RegularExpressionValidator>
 
                </td>
            </tr>
            <tr>
                <td style="width: 199px; height: 49px">
                    Security Question1:
                </td>
                <td style="width: 596px; height: 49px">
                   <asp:DropDownList ID="ddlQuestion1" runat="server" DataTextField="Questions" DataValueField="QuestionID"></asp:DropDownList>
                    <asp:RequiredFieldValidator ID="reqQuestion1" ErrorMessage="Security Question1 is required" 
                        ControlToValidate="ddlQuestion1" runat="server" ForeColor="Red"
                        InitialValue="-1" Text="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 199px; height: 49px">
                    Answer1:
                </td>
                <td style="width: 596px; height: 49px">
                    <asp:TextBox runat="server" ID="txtAnswer1"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqAnswer1" ErrorMessage="Asnwer for Security Question1 is required" 
                        ControlToValidate="txtAnswer1" runat="server" ForeColor="Red" Text="*"
                        ></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 199px; height: 49px">
                    Security Question2:
                </td>
                <td style="width: 596px; height: 49px">
                    <asp:DropDownList ID="ddlQuestion2" runat="server" DataTextField="Questions" DataValueField="QuestionID"></asp:DropDownList>
                    <asp:RequiredFieldValidator ID="reqQuestion2" ErrorMessage="Security Question2 is required" 
                        ControlToValidate="ddlQuestion2" runat="server" ForeColor="Red" Text="*"
                        InitialValue="-1"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 199px; height: 49px">
                    Answer2:
                </td>
                <td style="width: 596px; height: 49px">
                    <asp:TextBox runat="server" ID="txtAnswer2"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqAnswer2" ErrorMessage="Answer for Security Question2 is required" 
                        ControlToValidate="txtAnswer2" runat="server" ForeColor="Red" Text="*">
                    </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
                </td>
                
            </tr>
            <tr>
                <td colspan="2" style= "height: 49px; text-align:center">
                    <asp:Button ID="btnSubmit" Text="Submit" runat="server" OnClick="btnSubmit_Click" />
                </td>
               
            </tr>
 
        </table>
    </div>
</asp:Content>
