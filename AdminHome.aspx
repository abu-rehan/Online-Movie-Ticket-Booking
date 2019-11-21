<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminHome.aspx.cs" Inherits="Home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 641px;
            border: 3px solid #0000FF;
            margin-bottom: 0px;
        }
        .style3
        {
            width: 100%;
            border-style: solid;
            border-width: 1px;
        }
        .style4
        {
            height: 115px;
        }
        .style5
        {
            height: 115px;
            width: 141px;
        }
        .style6
        {}
        .style7
        {
            height: 115px;
            width: 910px;
        }
        .style8
        {
            width: 100%;
            height: 392px;
        }
        .style13
        {
            height: 372px;
        }
        .style14
        {
            width: 158px;
            height: 275px;
        }
        .style15
        {
            height: 275px;
        }
        .style16
        {
            height: 32px;
            text-align: center;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style13">
                    <table cellpadding="3" cellspacing="0" class="style3">
                        <tr>
                            <td bgcolor="White" class="style5">
                                <asp:Image ID="Image1" runat="server" 
                                    ImageUrl="~/logos/movie-clip-art-free-royalty-free-clip-art-vector-logo-of-a-movie-film-reel-and-strips-pictures.jpg" 
                                    Width="134px" />
                            </td>
                            <td bgcolor="#006699" class="style7" valign="middle">
                                <asp:Label ID="Label1" runat="server" 
                                    style="font-size: xx-large; font-family: Papyrus; font-weight: 700" 
                                    Text="ADMINISTRATOR    HOME"></asp:Label>
                            </td>
                            <td bgcolor="White" class="style4" valign="top">
                                <asp:Label ID="lblwelcome" runat="server" Font-Bold="True" ForeColor="Maroon" 
                                    Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <br />
                                <asp:Image ID="Image2" runat="server" Height="118px" 
                                    ImageUrl="~/logos/manager.png" Width="228px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style6" colspan="3">
                                <hr />
                            </td>
                        </tr>
                        <tr>
                            <td class="style6" colspan="3">
                                &nbsp;</td>
                        </tr>
                    </table>
                    <table cellpadding="0" cellspacing="0" class="style8">
                        <tr>
                            <td class="style14" valign="top">
                                <br />
                                <br />
                                <br />
                                <asp:HyperLink ID="HyperLink7" runat="server" ImageUrl="~/logos/logadmin.jpg" 
                                    NavigateUrl="~/AdminLogin.aspx">HyperLink</asp:HyperLink>
                                <br />
                                <br />
                                <br />
                                <br />
                                <asp:Image ID="Image3" runat="server" Height="111px" 
                                    ImageUrl="~/logos/325399-film.jpg" Width="138px" />
                            </td>
                            <td class="style15" valign="top">
                                <br />
                                <br />
                                <br />
                                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/AddCity.aspx">MANAGE CITY</asp:HyperLink>
                                <br />
                                <br />
                                <br />
                                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/addMultiplex.aspx">MANAGE MULTIPLEX</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <br />
                                <br />
                                <br />
                                <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/AddScreen.aspx">MANAGE SCREENS</asp:HyperLink>
                                <br />
                                <br />
                                <br />
                                <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/moviemaster.aspx">MANAGE MOVIES</asp:HyperLink>
                                <br />
                                <br />
                                <br />
                                <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/ShowTiming.aspx">MANAGE SHOWS</asp:HyperLink>
                                <br />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td bgcolor="Black" class="style16">
                    <asp:Label ID="Label2" runat="server" ForeColor="#666666" 
                        
                        Text="DEVELOPED BY AYUSH SHUKLA,ABU REHAN,GOVIND SHUKLA,GAURAV KUMAR,SPANDAN MAJI"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
