<%@ Page Language="C#" AutoEventWireup="true" CodeFile="privacy.aspx.cs" Inherits="privacy" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 472px;
            border-style: solid;
            border-width: 2px;
            background-color: #99CCFF;
        }
        .style2
        {
            height: 156px;
        }
        .style3
        {
            height: 19px;
            text-align: center;
        }
p.MsoTitle
	{border-style: none;
            border-color: inherit;
            border-width: medium;
            margin-top:0in;
	        margin-right:0in;
	        margin-bottom:15.0pt;
	        margin-left:0in;
	        padding:0in;
	        font-size:26.0pt;
	        font-family:"Cambria","serif";
	        color:#17365D;
	        letter-spacing:.25pt;
	}
 p.MsoNormal
	{margin-top:0in;
	margin-right:0in;
	margin-bottom:10.0pt;
	margin-left:0in;
	line-height:115%;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	}
h1
	{margin-top:24.0pt;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:0in;
	margin-bottom:.0001pt;
	line-height:115%;
	page-break-after:avoid;
	font-size:14.0pt;
	font-family:"Cambria","serif";
	color:#365F91;
	}
        .style4
        {
            height: 19px;
            text-align: center;
            width: 1063px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table cellpadding="0" cellspacing="0" class="style1">
            <tr>
                <td bgcolor="#006699" class="style4">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" 
                        ForeColor="White" Text="PRIVACY POLICIES"></asp:Label>
                </td>
                <td bgcolor="#0066FF" class="style3">
                    <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/logos/homekey.jpg" 
                        NavigateUrl="~/Home.aspx">HyperLink</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="style2" colspan="2" valign="top">
                    <div style="mso-element:para-border-div;border:none;border-bottom:solid #4F81BD 1.0pt;
mso-border-bottom-themecolor:accent1;padding:0in 0in 4.0pt 0in">
                        <p class="MsoTitle">
                            Privacy Policies</p>
                    </div>
                    <p class="MsoNormal">
                        &lt;Multiplex&gt; respects your privacy and commits to providing you a safe experience 
                        on our website. Please read this Privacy Policy.</p>
                    <h1>
                        What we collect and how we use the information we collect</h1>
                    <p class="MsoNormal">
                        Our primary aim of collecting your information is to provide you a smooth and 
                        friendly experience with our Services. For this purpose we collect your data 
                        provided at the time of registeration and later transactions. We use your name 
                        and related data to maintain your record in our Database. You can access part of 
                        your data and modify in your accounts as is encouraged to allow us to be updated 
                        with your current information. &lt;Multiplex&gt; does not release it&#39;s user&#39;s 
                        information to any third party and keeps the contents accessible to our services 
                        and the user.</p>
                    <h1>
                        Your own account</h1>
                    <p class="MsoNormal">
                        You can see all your details in your profile. Your account is made secure by 
                        &lt;Multiplex&gt; however your booking details including your Name, Age, Booked Show 
                        Time, InoxID and Seat No. of a particular show are shared with the Inoxes. 
                        &lt;Multiplex&gt; shall not be held accountable for any actions of these Inoxes. 
                        &lt;Multiplex&gt; allows only part of your account details to be modified as it uses 
                        the rest to maintain and access your records through Databases. You can make 
                        your changes by loging into your accounts and edit the contents. &lt;Multiplex&gt; 
                        possesses the right to terminate your membership and erase all your contents 
                        without prior warning. You agree that &lt;Multiplex&gt; in that case will in no way be 
                        liable for any loss of data on your part.</p>
                    <p class="MsoNormal">
                        <span style="font-size:12.0pt;line-height:115%">The actions of both parties are 
                        bound by the privacy policies in action at that time and Users are expected to 
                        stay aware of any changes made in our Privacy Policy. If you have any query 
                        regarding the policies explained,</span><asp:HyperLink ID="HyperLink2" 
                            runat="server">CONTACT US</asp:HyperLink>
                    </p>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
