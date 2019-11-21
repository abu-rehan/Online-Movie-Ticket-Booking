<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userSignup.aspx.cs" Inherits="userSignup" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    .style20
    {
        width: 100%;
    }
    .style22
    {
        height: 38px;
            text-align: center;
        }
    .style23
    {
        height: 38px;
    }
    .style24
    {
        height: 40px;
            text-align: center;
        }
    .style25
    {
        height: 40px;
    }
    .style26
    {
        width: 218px;
        height: 39px;
            text-align: center;
        }
    .style27
    {
        height: 39px;
    }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table cellpadding="0" cellspacing="0" class="style1">
            <tr>
                <td style="text-align: center">
                    <asp:Image ID="Image1" runat="server" Height="129px" 
                        ImageUrl="~/logos/Screenshot (5).png" />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:Label ID="Label12" runat="server" Font-Bold="True" ForeColor="#009999" 
                        Text="SIGN UP"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
            <table class="style20">
                <tr>
                    <td class="style26">
                        <asp:Label ID="Label9" runat="server" Text="USERNAME :"></asp:Label>
                    </td>
                    <td class="style27">
                        <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style24">
                        <asp:Label ID="Label6" runat="server" Text="DATE OF BIRTH :"></asp:Label>
                    </td>
                    <td class="style25">
                        <asp:TextBox ID="txtdob" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style22">
                        <asp:Label ID="Label7" runat="server" Text="EMAIL ADDRESS :"></asp:Label>
                    </td>
                    <td class="style23">
                        <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style22">
                        <asp:Label ID="Label8" runat="server" Text="CONTACT NUMBER :"></asp:Label>
                    </td>
                    <td class="style23">
                        <asp:TextBox ID="txtphone" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style24">
                        <asp:Label ID="Label10" runat="server" Text="PASSWORD :"></asp:Label>
                    </td>
                    <td class="style25">
                        <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style24">
                        <asp:Label ID="Label11" runat="server" Text="CONFIRM PASSWORD :"></asp:Label>
                    </td>
                    <td class="style25">
                        <asp:TextBox ID="txtcpassword" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style24" colspan="2">
                        <asp:Label ID="lblmsg" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style24" colspan="2">
                        <asp:Button ID="btnadd" runat="server" onclick="btnupdate_Click" 
                            Text="SIGNUP" />
                    </td>
                </tr>
            </table>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
