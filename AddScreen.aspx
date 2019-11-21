<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddScreen.aspx.cs" Inherits="AddScreen" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            border-style: solid;
            border-width: 5px;
        }
        .style2
        {
            width: 100%;
            border-style: solid;
            border-width: 2px;
        }
        .style4
        {
            height: 125px;
        }
        .style6
        {
            height: 30px;
            text-align: center;
        }
        .style7
        {
            width: 100%;
            border-style: solid;
            border-width: 1px;
        }
        .style8
        {
            width: 178px;
        }
        .style9
        {
            height: 33px;
        }
        .style10
        {
            width: 1231px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        `<table class="style1">
            <tr>
                <td class="style9">
                    <table class="style2">
                        <tr>
                            <td style="text-align: center" bgcolor="#006699" class="style10">
                                <asp:Label ID="Label1" runat="server" style="text-align: center" 
                                    Text="MANAGE SCREEN"></asp:Label>
                            </td>
                            <td style="text-align: center" bgcolor="#006699">
                                <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/logos/homekey.jpg" 
                                    NavigateUrl="~/AdminHome.aspx">HyperLink</asp:HyperLink>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="style4" valign="top">
                    <table cellspacing="0" class="style7">
                        <tr>
                            <td class="style8">
                                <asp:Label ID="Label7" runat="server" Text="City ID:"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                                    onselectedindexchanged="DropDownList2_SelectedIndexChanged">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="style8">
                                <asp:Label ID="Label2" runat="server" Text="Multiplex:"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                                    onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="style8">
                                <asp:Label ID="Label3" runat="server" Text="Screen Name :"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style8">
                                <asp:Label ID="Label4" runat="server" Text="Screen ID:"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtid" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style8">
                                <asp:Label ID="Label5" runat="server" Text="Royal Seats:"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="trseat" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style8">
                                <asp:Label ID="Label6" runat="server" Text="Exclusive Seats:"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="teseat" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="style6" valign="top">
                    <asp:Label ID="lblmsg" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style6" valign="top">
                    <asp:Button ID="btnadd" runat="server" onclick="btnadd_Click" 
                        Text="ADD SCREEN" />
                </td>
            </tr>
            <tr>
                <td class="style6" valign="top">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" 
                        ForeColor="#333333" GridLines="None" 
                        onrowcancelingedit="GridView1_RowCancelingEdit" 
                        onrowdeleting="GridView1_RowDeleting" onrowediting="GridView1_RowEditing" 
                        onrowupdating="GridView1_RowUpdating">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="ScreenName" HeaderText="Screen Name" />
                            <asp:BoundField DataField="ScreenID" HeaderText="Screen ID" ReadOnly="True" />
                            <asp:BoundField DataField="RSeats" HeaderText="Royal Seats" />
                            <asp:BoundField DataField="ESeats" HeaderText="Exclusive Seats" />
                            <asp:BoundField DataField="InoxID" HeaderText="Multiplex" ReadOnly="True" />
                            <asp:BoundField DataField="CityID" HeaderText="city" ReadOnly="True" />
                        </Columns>
                        <EditRowStyle BackColor="#7C6F57" />
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F8FAFA" />
                        <SortedAscendingHeaderStyle BackColor="#246B61" />
                        <SortedDescendingCellStyle BackColor="#D4DFE1" />
                        <SortedDescendingHeaderStyle BackColor="#15524A" />
                    </asp:GridView>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
