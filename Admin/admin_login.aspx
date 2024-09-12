<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_login.aspx.cs" Inherits="Attendance_final.Admin.ad_login" %>

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
            <h1>ADMIN LOGIN</h1>    

            <asp:Label ID="Label1" runat="server" Text="UserName:-" Width="100px"></asp:Label>
            <asp:TextBox ID="txtuser" runat="server" Height="30px" Width="212px" BorderStyle="Groove" BorderColor="Black"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                        ControlToValidate="txtuser" ForeColor="Red" Display="Dynamic"
                                        ErrorMessage="Please enter Username"></asp:RequiredFieldValidator>
            <br /><br />

            <asp:Label ID="Label2" runat="server" Text="Password:-" Width="100px"></asp:Label>
            <asp:TextBox ID="txtpass" runat="server" Height="30px" Width="212px" BorderStyle="Groove" BorderColor="Black" TextMode="Password"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                        ControlToValidate="txtpass" ForeColor="Red" Display="Dynamic"
                                        ErrorMessage="Please enter Password"></asp:RequiredFieldValidator>
            <br />
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin/ad_forgate.aspx" ForeColor="Red">Forgate Password?</asp:HyperLink>
            <br /><br />

            <asp:Button ID="Button1" runat="server" Text="Login" Height="39px" Width="87px" 
                    BorderWidth="3px" BorderColor="Black" BorderStyle="Solid" 
                    BackColor="Maroon" Font-Size="15px" ForeColor="White" onclick="Button1_Click"/>

            </div>
        </div>
    </div>
        <div id="footer"">
        <h4>© Copyright 2017-18 All rights reserved</h4>
        </div>
    </form>
</body>
</html>
