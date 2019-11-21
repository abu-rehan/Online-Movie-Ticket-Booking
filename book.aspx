<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="book.aspx.cs" Inherits="book" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style18
        {
            width: 100%;
            height: 484px;
        }
        .style19
        {
            height: 12px;
        }
        .style20
        {
            height: 10px;
        }
        .style21
        {
            width: 100%;
        }
        .style22
        {
            width: 186px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="style18">
        <tr>
            <td class="style19">
            </td>
        </tr>
        <tr>
            <td class="style20">
            </td>
        </tr>
        <tr>
            <td valign="top">
                <table cellpadding="0" cellspacing="0" class="style21">
                    <tr>
                        <td class="style22">
                            <asp:Label ID="Label3" runat="server" ForeColor="#009999" Text="Select City :"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlcity" runat="server" AutoPostBack="True" 
                                onselectedindexchanged="ddlcity_SelectedIndexChanged">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style22">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style22">
                            <asp:Label ID="Label10" runat="server" ForeColor="#009999" 
                                Text="Select Multiplex :"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlinox" runat="server" AutoPostBack="True" 
                                onselectedindexchanged="ddlinox_SelectedIndexChanged">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style22">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style22">
                            <asp:Label ID="Label11" runat="server" ForeColor="#009999" 
                                Text="Select Movie :"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlmovie" runat="server" AutoPostBack="True" 
                                onselectedindexchanged="ddlmovie_SelectedIndexChanged">
                            </asp:DropDownList>
&nbsp;&nbsp;
                            <asp:Label ID="lblmovie" runat="server" Font-Size="Small" ForeColor="#009999"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style22">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style22">
                            <asp:Label ID="Label12" runat="server" ForeColor="#009999" Text="Select Date :"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddldate" runat="server" AutoPostBack="True" 
                                onselectedindexchanged="ddldate_SelectedIndexChanged">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style22">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style22">
                            <asp:Label ID="Label13" runat="server" ForeColor="#009999" 
                                Text="Select Time Slot :"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddltime" runat="server" AutoPostBack="True">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style22">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style22">
                            <asp:Label ID="Label14" runat="server" ForeColor="#009999" 
                                Text="Select Seat Class :"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlseat" runat="server" AutoPostBack="True">
                                <asp:ListItem Value="1">Exclusive</asp:ListItem>
                                <asp:ListItem Value="2">Royal</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style22">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style22">
                            <asp:Label ID="Label15" runat="server" ForeColor="#009999" 
                                Text="Number Of Seats :"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtseat" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style22">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style22">
                            <asp:Label ID="Label16" runat="server" ForeColor="#009999" Text="Amount :"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label17" runat="server" ForeColor="#009999"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style22">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style22">
                            &nbsp;</td>
                        <td>
                            <asp:Button ID="Button1" runat="server" Text="BOOK" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

