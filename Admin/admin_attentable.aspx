<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin_panal.master" AutoEventWireup="true" CodeBehind="admin_attentable.aspx.cs" Inherits="Attendance_final.Admin.admin_attentable" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="center">
    <div id="form">
        <asp:Label ID="Label1" runat="server" Text="Year:-"></asp:Label>
        <asp:TextBox ID="txtyear" runat="server" Height="25px" Width="150px" Font-Size="15px" placeholder="YYYY_YY"></asp:TextBox>   
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="txtyear" Display="Dynamic"  ForeColor="Red"
                                    ErrorMessage="Name Must be Insert....."></asp:RequiredFieldValidator>
        <br /><br />

        <asp:Button ID="btn1" runat="server" Text="SUBMIT" ForeColor="White" 
            CssClass="btn" onclick="btn1_Click"/>
    </div>
</div>
</asp:Content>
