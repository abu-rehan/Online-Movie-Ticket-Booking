<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShowTiming.aspx.cs" Inherits="ShowTiming" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            border-style: solid;
            border-width: 1px;
        }
        .style2
        {
            height: 128px;
        }
        .style3
        {
            width: 100%;
        }
        .style4
        {
            width: 153px;
            margin-left: 80px;
        }
        .style5
        {
            height: 86px;
        }
        .style6
        {
            height: 32px;
            text-align: left;
        }
        .style7
        {
            width: 1180px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style2" valign="top">
                    <table cellspacing="0" class="style1">
                        <tr>
                            <td style="text-align: center" bgcolor="#006699" class="style7">
                                <asp:Label ID="Label1" runat="server" Text="SHOW TIMINGS"></asp:Label>
                            </td>
                            <td style="text-align: center" bgcolor="#006699">
                                <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/logos/homekey.jpg" 
                                    NavigateUrl="~/Home.aspx">HyperLink</asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <table cellpadding="3" cellspacing="0" class="style3">
                                    <tr>
                                        <td class="style4">
                                            <asp:Label ID="Label2" runat="server" Text="City"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="ddlcity" runat="server" AutoPostBack="True" 
                                                onselectedindexchanged="ddlcity_SelectedIndexChanged">
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style4">
                                            <asp:Label ID="Label3" runat="server" Text="Multiplex"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="ddlinox" runat="server" AutoPostBack="True" 
                                                onselectedindexchanged="ddlinox_SelectedIndexChanged">
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style4">
                                            <asp:Label ID="Label4" runat="server" Text="Movie"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="ddlmovie" runat="server" AutoPostBack="True" 
                                                onselectedindexchanged="ddlmovie_SelectedIndexChanged">
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style4">
                                            <asp:Label ID="Label5" runat="server" Text="Screen"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="ddlscreen" runat="server" AutoPostBack="True" 
                                                onselectedindexchanged="ddlscreen_SelectedIndexChanged" style="height: 22px">
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style4">
                                            <asp:Label ID="Label7" runat="server" Text="Show Date"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtshowdate" runat="server"></asp:TextBox>
                                            <asp:Label ID="Label8" runat="server" Text="(mm-dd-yyyy)"></asp:Label>
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
                    <asp:Label ID="Label6" runat="server" Text="time slots:"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style5" valign="top">
                    <asp:CheckBoxList ID="CheckBoxList1" runat="server" AutoPostBack="True">
                        <asp:ListItem Value="1">9:00-12:00</asp:ListItem>
                        <asp:ListItem Value="2">12:00-3:00</asp:ListItem>
                        <asp:ListItem Value="3">3:00-6:00</asp:ListItem>
                        <asp:ListItem Value="4">6:00-9:00</asp:ListItem>
                    </asp:CheckBoxList>
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style6" valign="top">
                    <asp:Label ID="lblmsg" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style6" valign="top">
                    <asp:Button ID="Button1" runat="server" Text="ADD SHOW" 
                        onclick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td class="style6" valign="top">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        AutoGenerateDeleteButton="True" CellPadding="4" ForeColor="#333333" 
                        GridLines="None" onrowdeleting="GridView1_RowDeleting" 
                        onselectedindexchanged="GridView1_SelectedIndexChanged">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="CityID" HeaderText="City" />
                            <asp:BoundField DataField="InoxID" HeaderText="Multiplex" />
                            <asp:BoundField DataField="MovieID" HeaderText="Movie" />
                            <asp:BoundField DataField="ScreenID" HeaderText="Screen" />
                            <asp:BoundField DataField="ShowTime" HeaderText="Show Slot" />
                            <asp:BoundField DataField="RSeats" HeaderText="Royal Seats" />
                            <asp:BoundField DataField="ESeats" HeaderText="Exclusive Seats" />
                            <asp:BoundField DataField="ShowDate" HeaderText="Show Date" />
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
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
