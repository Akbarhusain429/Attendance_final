<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="Student_login.aspx.cs" Inherits="Attendance_final.Student_login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<link href="StyleSheet/login.css" rel="Stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="main" style="background-image:url(Image/2.jpg);">
    <div id="center">
        <div id="login">        
        <h1>STUDENT LOGIN</h1>    

        <asp:Label ID="Label1" runat="server" Text="UserName:-" Width="100px"></asp:Label>
        <asp:TextBox ID="txtuser" runat="server" Height="30px" Width="212px" BorderStyle="Groove" BorderColor="Black"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="txtuser" ForeColor="Red" Display="Dynamic"
                                    ErrorMessage="Please enter Username"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                        ControlToValidate="txtuser" ForeColor="Red"
                                        ValidationExpression="^(.+)@([^\.].*)\.([a-z]{2,})$" Display="Dynamic"
                                        ErrorMessage="Invalid Email Format"></asp:RegularExpressionValidator>
        <br /><br />

        <asp:Label ID="Label2" runat="server" Text="Password:-" Width="100px"></asp:Label>
        <asp:TextBox ID="txtpass" runat="server" Height="30px" Width="212px" BorderStyle="Groove" BorderColor="Black" TextMode="Password"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ControlToValidate="txtpass" ForeColor="Red" Display="Dynamic"
                                    ErrorMessage="Please enter Password"></asp:RequiredFieldValidator>
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/stud_forgate.aspx">Forgate Password?</asp:HyperLink>
        <br /><br />
    
        <asp:Button ID="Button1" runat="server" Text="Login" Height="39px" Width="87px" 
                BorderWidth="3px" BorderColor="Black" BorderStyle="Solid" 
                BackColor="Maroon" Font-Size="15px" ForeColor="White" 
                onclick="Button1_Click"/>

    </div>
    </div>
</div>
</asp:Content>
