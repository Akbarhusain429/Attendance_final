<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin_panal.master" AutoEventWireup="true" CodeBehind="admin_profile.aspx.cs" Inherits="Attendance_final.Admin.admin_profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<style>
   .row
    {
        width:100%; height:30px;  margin-bottom:10px; font-family:Tahoma;
    }
    .left
    {
        float:left; width:130px; text-align:right; line-height:30px; margin-right:20px;
    }
    .right
    {
        float:left; width:550px; line-height:30px; text-align:left;
    }
</style>
<div id="center">
    <div id="form">
        <br /><br /><br />
        <div class="row">
                    <div class="left">Name:-</div>
                    <div class="right">
                    <asp:Label ID="lblname" runat="server" Height="25px" Width="300px" Font-Size="19px"></asp:Label>   
                    </div>
        </div>

        <div class="row">
                    <div class="left">Registraion Date:-</div>
                    <div class="right">
                    <asp:Label ID="lblregdate" runat="server" Height="25px" Width="300px" Font-Size="19px"></asp:Label>   
                    </div>
        </div>

        <div class="row">
                    <div class="left">User Name:-</div>
                    <div class="right"><asp:TextBox ID="txtuser" runat="server" Height="25px" Width="150px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                ControlToValidate="txtuser" Display="Dynamic"  ForeColor="Red"
                                                ErrorMessage="Name Must be Insert....."></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                                    ControlToValidate="txtuser" ForeColor="Red"
                                                    ValidationExpression="^[a-zA-Z' _]{1,50}$" Display="Dynamic"
                                                    ErrorMessage="Name Contant Character Only....."></asp:RegularExpressionValidator></div>
        </div>
        <br />
        <asp:Button ID="btnupdate" runat="server" Text="UPDATE" ForeColor="White" 
            CssClass="btn" onclick="btnupdate_Click"/>
        <asp:Button ID="btncancel" runat="server" Text="CANCEL" ForeColor="White" 
            CssClass="btn" onclick="btncancel_Click"/>
        <br />
    </div>
</div>
</asp:Content>