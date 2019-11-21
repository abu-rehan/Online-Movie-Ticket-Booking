<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="userHome.aspx.cs" Inherits="userHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style18
        {
            width: 100%;
            height: 473px;
        }
        .newStyle1
        {
            font-family: Leelawadee;
        }
        .style19
        {
            font-family: Leelawadee;
            height: 165px;
            font-size: large;
            color: #009999;
        }
    .style20
    {
        font-family: Leelawadee;
        height: 21px;
        font-size: large;
        color: #009999;
        text-align: right;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="style18">
        <tr>
            <td class="style20" valign="top">
                <asp:Label ID="lbluser" runat="server" Font-Size="Small" ForeColor="#669999"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style19" valign="top">
                &nbsp; Welcome to Mymovie<br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mymovie is a website that allows you to book your 
                movie tickets for your favorite and latest movies,and in no time. It is a very 
                simple to use website that has features like available multiplexes and movies that help you 
                locate multiplexes in your city and see the upcoming movies alongwith the movie details. Now book your movie tickets at your ease and with ease. Your 
                movie bookings are just a few clicks away.</td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:Image ID="Image2" runat="server" ImageUrl="~/logos/mymovieguy.png" 
                    ForeColor="#669999" />
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

