<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addMultiplex.aspx.cs" Inherits="addMultiplex" %>

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
        }
        .style3
        {
            width: 135px;
        }
        .style4
        {
            width: 135px;
            height: 35px;
        }
        .style5
        {
            height: 35px;
        }
        .style6
        {
            width: 1210px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td>
                    <table cellspacing="0" class="style2">
                        <tr>
                            <td bgcolor="#006699" class="style6" style="text-align: center">
                                <asp:Label ID="Label1" runat="server" Text="MANAGE MULTIPLEX" 
                                    style="text-align: center"></asp:Label>
                            </td>
                            <td bgcolor="#006699" style="text-align: center">
                                <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/logos/homekey.jpg" 
                                    NavigateUrl="~/AdminHome.aspx">HyperLink</asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <table class="style2">
                                    <tr>
                                        <td class="style4" valign="top">
                                            <asp:Label ID="Label2" runat="server" Text="city name:"></asp:Label>
                                        </td>
                                        <td class="style5">
                                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                                                onselectedindexchanged="DropDownList1_SelectedIndexChanged1">
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style3">
                                            <asp:Label ID="Label3" runat="server" Text="multiplex name :"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtname" runat="server" Width="285px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style3">
                                            <asp:Label ID="Label4" runat="server" Text="multiplex id :"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtid" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style3" valign="top">
                                            <asp:Label ID="Label5" runat="server" Text="multiplex address:"></asp:Label>
                                        </td>
                                        <td valign="top">
                                            <asp:TextBox ID="txtaddress" runat="server" Height="82px" TextMode="MultiLine" 
                                                Width="281px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style3">
                                            <asp:Label ID="Label6" runat="server" Text="multiplex phone:"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtphone" runat="server" Width="137px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style3">
                                            <asp:Label ID="Label7" runat="server" Text="email id:"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtemail" runat="server" Width="278px"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnadd" runat="server" onclick="btnadd_Click" 
                        Text="ADD MULTIPLEX" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblmsg" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label8" runat="server" Text="LIST:"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" ForeColor="#333333" GridLines="None" 
                        AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" 
                        onrowcancelingedit="GridView1_RowCancelingEdit" 
                        onrowdeleting="GridView1_RowDeleting" onrowediting="GridView1_RowEditing" 
                        onrowupdating="GridView1_RowUpdating">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="InoxName" HeaderText="Multiplex Name" />
                            <asp:BoundField DataField="InoxID" HeaderText="Multiplex ID" ReadOnly="True" />
                            <asp:BoundField DataField="Address" HeaderText="Address" />
                            <asp:BoundField DataField="Phone" HeaderText="Phone No." />
                            <asp:BoundField DataField="EmailID" HeaderText="Email ID" />
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
