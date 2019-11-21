<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="updateAccount.aspx.cs" Inherits="updateAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style18
    {
        width: 100%;
        height: 475px;
    }
    .style19
    {
        height: 2px;
        text-align: center;
    }
    .style20
    {
        width: 100%;
    }
    .style22
    {
        width: 218px;
        height: 38px;
    }
    .style23
    {
        height: 38px;
    }
    .style24
    {
        height: 40px;
            text-align: left;
        }
    .style25
    {
        height: 40px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="style18">
    <tr>
        <td class="style19">
            <table cellpadding="0" cellspacing="0" class="style20">
                <tr>
                    <td style="text-align: right">
                        <asp:Label ID="lbluser" runat="server" ForeColor="#009999"></asp:Label>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td class="style19">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style19">
            <asp:Label ID="Label4" runat="server" Font-Bold="True" 
                Font-Names="Franklin Gothic Demi Cond" ForeColor="#009999" 
                Text="UPDATE ACCOUNT DETAILS"></asp:Label>
        </td>
    </tr>
    <tr>
        <td valign="top">
            <table class="style20">
                <tr>
                    <td class="style22">
                        <asp:Label ID="Label12" runat="server" Text="USERNAME :"></asp:Label>
                    </td>
                    <td class="style23">
                        <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style24">
                        <asp:Label ID="Label6" runat="server" Text="DATE OF BIRTH :" 
                            style="text-align: left"></asp:Label>
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
                        <asp:TextBox ID="txtemail" runat="server" Enabled="False"></asp:TextBox>
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
                        <asp:TextBox ID="txtpassword" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style24">
                        <asp:Label ID="Label11" runat="server" Text="CONFIRM PASSWORD :"></asp:Label>
                    </td>
                    <td class="style25">
                        <asp:TextBox ID="txtcpassword" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style24" colspan="2">
                        <asp:Label ID="lblmsg" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style24" colspan="2">
                        <asp:Button ID="btnupdate" runat="server" onclick="btnupdate_Click" 
                            Text="UPDATE" />
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

