<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ad_forgate.aspx.cs" Inherits="Attendance_final.Admin.ad_forgate" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../StyleSheet/ad_login.css" rel="Stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div id="header"">
        <h1>Jafari B.C.A. college</h1>
        </div>
    <div id="main" style="background-image:url('../Image/5.jpg');">
        <div id="center">
            <div id="login">        
            <h1>FORGATE PASSWORD</h1>
            <asp:Label ID="lbl" runat="server" Text="Enter Email-ID"></asp:Label><br /><br />
            <asp:TextBox ID="txtforgate" runat="server" Height="30px" Width="250px" BorderStyle="Groove" BorderColor="Black"></asp:TextBox>
            <br /><br /><br />
            <asp:Button ID="btn" runat="server" Text="SUBMIT" Height="39px" Width="87px" 
                BorderWidth="3px" BorderColor="Black" BorderStyle="Solid" 
                BackColor="Maroon" Font-Size="15px" ForeColor="White" onclick="btn_Click" />
            </div>
        </div>
    </div>
        <div id="footer"">
        <h4>© Copyright 2017-18 All rights reserved</h4>
        </div>
    </form>
</body>
</html>
