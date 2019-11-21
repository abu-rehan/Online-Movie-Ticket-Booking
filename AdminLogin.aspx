<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="LoginPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 32%;
            height: 323px;
            margin-bottom: 78px;
        }
        .style2
        {
            font-size: x-large;
        }
        .style4
        {
            width: 352px;
            font-size: large;
        }
        .style5
        {
            width: 352px;
        }
        .style6
        {
            width: 172px;
        }
    </style>
</head>
<body style="height: 224px">
    <form id="form1" runat="server">
    <div>
    
    </div>
    <table class="style1" align="center">
        <tr>
            <td class="style2" colspan="2" 
                style="text-align: center; background-color: #BBF3FF" bgcolor="#006699">
                Admin
                Login</td>
        </tr>
        <tr>
            <td class="style4">
                EmailID:</td>
            <td class="style6">
                <asp:TextBox ID="TextBox1" runat="server" Height="30px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Password:</td>
            <td class="style6">
                <asp:TextBox ID="TextBox2" runat="server" Height="31px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:Label ID="lblMessage" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style5" style="text-align: center">
                <asp:Button ID="btnLogin" runat="server" Text="Login" Height="29px" 
                    onclick="btnLogin_Click" Width="65px" />
            </td>
            <td style="text-align: center" class="style6">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AdminSignUp.aspx">Sign Up</asp:HyperLink>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
