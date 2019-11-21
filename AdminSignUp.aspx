<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminSignUp.aspx.cs" Inherits="AdminLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 77%;
            height: 295px;
        }
        .style2
        {
            color: #000000;
            background-color: #BBF3FF;
        }
        .style3
        {
            width: 160px;
        }
        .style5
        {
            color: #FF0000;
        }
        .style6
        {
            background-color: #FFFFFF;
        }
        .style7
        {
            color: #FF0000;
            background-color: #FFFFFF;
        }
        .style8
        {
            width: 160px;
            height: 124px;
        }
        .style9
        {
            height: 124px;
        }
        .style10
        {
            width: 157px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1" align="center">
            <tr>
                <td bgcolor="#3333FF" class="style2" colspan="3" style="text-align: center">
                    <strong style="font-size: large; background-color: #BBF3FF;">Sign Up</strong></td>
            </tr>
            <tr>
                <td bgcolor="#006699" class="style2" colspan="3" 
                    style="text-align: right; font-size: small">
                    <span class="style6">All Fields marked (</span><span class="style7">*</span><span 
                        class="style6">) are mandatory</span></td>
            </tr>
            <tr>
                <td class="style3">
                    Name<span class="style5">*</span>:</td>
                <td class="style10">
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                            ControlToValidate="txtName" 
                        ErrorMessage="Fill the Name field" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AdminLogin.aspx">Already Registered? Go back to Login Page!</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="style8">
                    Address:</td>
                <td class="style9" colspan="2">
                    <asp:TextBox ID="txtAddress" runat="server" Height="98px" TextMode="MultiLine" 
                        Width="292px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Date of birth:</td>
                <td class="style10">
                    <asp:TextBox ID="txtDOB" runat="server"></asp:TextBox>
                </td>
                <td>
                    (mm/dd/yyyy)</td>
            </tr>
            <tr>
                <td class="style3">
                    Email Address:</td>
                <td colspan="2">
                    <asp:TextBox ID="txtEmailAddress" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Phone Number:</td>
                <td colspan="2">
                    <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Username<span class="style5">*</span>:</td>
                <td colspan="2">
                    <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                            ControlToValidate="txtUsername" ErrorMessage="Fill the Username field" 
                                                            ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Password<span class="style5">*</span>:</td>
                <td colspan="2">
                    <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                                            ControlToValidate="txtPassword" ErrorMessage="Fill the Password field" 
                                                            ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Confirm Password<span class="style5">*</span>:</td>
                <td colspan="2">
                    <asp:TextBox ID="txtCnfPassword" runat="server"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                                            ControlToValidate="txtCnfPassword" ErrorMessage="Fill the Confirm Password field" 
                                                            ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="3" style="text-align: center">
                    <asp:Label ID="lblMessage" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="3" style="text-align: center">
                    <asp:Button ID="btnSignUp" runat="server" Text="Sign Up" 
                        onclick="btnSignUp_Click" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
