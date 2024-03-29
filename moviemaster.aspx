﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="moviemaster.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            text-align: center;
        }
        .style3
        {
            text-align: center;
            width: 239px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" 
            onrowediting="GridView1_RowEditing1" onrowupdating="GridView1_RowUpdating1" 
            onselectedindexchanged="Page_Load" onrowdeleting="GridView1_RowDeleting" 
            onrowcancelingedit="GridView1_RowCancelingEdit" CellPadding="4" 
            ForeColor="#333333" GridLines="None" Width="1311px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="movieid" HeaderText="Movie ID" 
                    SortExpression="movieid" ReadOnly="True" />
                <asp:BoundField DataField="moviename" HeaderText="Movie Name" 
                    SortExpression="moviename" />
                
                <asp:BoundField DataField="details" HeaderText="Details" 
                    SortExpression="details" />
                <asp:TemplateField HeaderText="Photo" SortExpression="photo">
                    <EditItemTemplate>
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                        <asp:Image ID="Image2" runat="server" 
                            ImageUrl='<%# "movieimages/"+Eval("Photo") %>' Height="60px" 
                            Width="60px" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Height="100px" 
                            ImageUrl='<%# "movieimages/"+Eval("Photo") %>' Width="100px" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="releasedate" HeaderText="Release Date" 
                    SortExpression="releasedate" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
    
    </div>
    <table class="style1">
        <tr>
            <td class="style3">
                <asp:Label ID="Label1" runat="server" Text="MovieID"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label2" runat="server" Text="Movie Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label3" runat="server" Text="Movie Details"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" Width="554px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label4" runat="server" Text="Photo"></asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="FileUpload2" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label5" runat="server" Text="Release Date"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                <asp:Label ID="Label6" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Button ID="Button1" runat="server" Text="ADD MOVIE" 
                    onclick="Button1_Click" />
            </td>
            <td class="style2">
                <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/logos/homekey.jpg" 
                    NavigateUrl="~/Home.aspx">HyperLink</asp:HyperLink>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
