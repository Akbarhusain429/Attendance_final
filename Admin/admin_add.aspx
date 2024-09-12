<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin_panal.master" AutoEventWireup="true" CodeBehind="admin_add.aspx.cs" Inherits="Attendance_final.Admin.admin_add" %>
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
<%--<div id="main" style="background-image:url('../Image/3.jpg');">--%>
    <div id="center">
        <div id="form">
            <div class="row">
                    <div class="left">Name:-</div>
                    <div class="right"><asp:TextBox ID="txtname" runat="server" Height="25px" Width="300px" Font-Size="15px" placeholder="Full Name"></asp:TextBox>   
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                ControlToValidate="txtname" Display="Dynamic"  ForeColor="Red"
                                                ErrorMessage="Name Must be Insert....."></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                                    ControlToValidate="txtname" ForeColor="Red"
                                                    ValidationExpression="^[a-zA-Z' _]{1,50}$" Display="Dynamic"
                                                    ErrorMessage="Name Contant Character Only....."></asp:RegularExpressionValidator></div>

            </div>

            <div class="row">
                    <div class="left">User Name:-</div>
                    <div class="right"><asp:TextBox ID="txtuser" runat="server" Height="25px" Width="172px" Font-Size="15px"></asp:TextBox>   
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                ControlToValidate="txtuser" Display="Dynamic"  ForeColor="Red"
                                                ErrorMessage="Name Must be Insert....."></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                                    ControlToValidate="txtname" ForeColor="Red"
                                                    ValidationExpression="^[a-zA-Z' _]{1,50}$" Display="Dynamic"
                                                    ErrorMessage="Name Contant Character Only....."></asp:RegularExpressionValidator></div>

            </div>

            <div class="row">
                    <div class="left">Password:-</div>
                    <div class="right"><asp:TextBox ID="txtpass" runat="server" Height="25px" Width="172px" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                                ControlToValidate="txtpass" Display="Dynamic" ForeColor="Red"
                                                ErrorMessage="Must be Enter The Password....."></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                                                    ControlToValidate="txtpass" ForeColor="Red"
                                                    ValidationExpression="^[a-zA-Z0-9',@#$%&*\s]{5,20}$" Display="Dynamic"
                                                    ErrorMessage="Invalid Password Format"></asp:RegularExpressionValidator></div>
            </div>

            <div class="row">
                    <div class="left">Re-Password:-</div>
                    <div class="right"><asp:TextBox ID="txtrepass" runat="server" Height="25px" Width="172px" TextMode="Password"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                            ErrorMessage="Password Not Match" ForeColor="Red"
                                            ControlToValidate="txtrepass" Display="Dynamic"
                                            ControlToCompare="txtpass"></asp:CompareValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                                ControlToValidate="txtrepass" Display="Dynamic" ForeColor="Red"
                                                ErrorMessage="Enter The Re-Password....."></asp:RequiredFieldValidator></div>
            </div>

            <div class="row">
                    <div class="left">Image:-</div>
                    <div class="right"><asp:FileUpload ID="adimg" runat="server" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server"  ForeColor="Red"
                                                ControlToValidate="adimg" Display="Dynamic" 
                                                ErrorMessage="Image Must be Upload....."></asp:RequiredFieldValidator></div>
            </div>

            <br />
                <asp:Button ID="btn1" runat="server" Text="SUBMIT" ForeColor="White" 
                CssClass="btn" onclick="btn1_Click"/>
                <asp:Button ID="btn2" runat="server" Text="CANCEL" ForeColor="White" CssClass="btn"/>
        </div>
    </div>
<%--</div>--%>
</asp:Content>
