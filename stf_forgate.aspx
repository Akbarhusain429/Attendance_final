<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="stf_forgate.aspx.cs" Inherits="Attendance_final.stf_forgate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<link href="StyleSheet/login.css" rel="Stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="main" style="background-image:url(Image/2.jpg);">
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
</asp:Content>
