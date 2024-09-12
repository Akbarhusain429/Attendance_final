<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="ad_adstf.aspx.cs" Inherits="Attendance_final.Admin.ad_adstf" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<link href="../StyleSheet/add.css" rel="Stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
<div id="main" style="background-image:url('../Image/3.jpg');">
        <div id="center">
            <div id="form">        
                <div class="row">
                    <div class="left">Name:-</div>
                    <div class="right"><asp:TextBox ID="txtname" runat="server" Height="25px" Width="300px" Font-Size="15px"></asp:TextBox>   
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                ControlToValidate="txtname" Display="Dynamic" ForeColor="Red"
                                                ErrorMessage="Name Must be Insert....."></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                                    ControlToValidate="txtname"
                                                    ValidationExpression="^[a-zA-Z' _]{1,50}$" Display="Dynamic" ForeColor="Red"
                                                    ErrorMessage="Name Contant Character Only....."></asp:RegularExpressionValidator></div>
                </div>

                <div class="row">
                    <div class="left">Gender:-</div>
                    <div class="right">
                    <asp:RadioButton ID="radio1" runat="server" Text="Male" GroupName="g" Checked="true"/>
                    <asp:RadioButton ID="radio2" runat="server" Text="Female" GroupName="g" />
                    
                    </div>   
                </div>

                <div class="row">
                    <div class="left">D.O.B:-</div>
                    <div class="right">
                    <asp:TextBox ID="txtdob" placeholder="DD/MM/YYYY"  Height="25px" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                                    ControlToValidate="txtdob" Display="Dynamic" ForeColor="Red"
                                                    ErrorMessage="D.O.B Must be Insert....."></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server"  ForeColor="Red"
                                                    ControlToValidate="txtdob" ValidationExpression="(((0|1)[0-9]|2[0-9]|3[0-1])\/(0[1-9]|1[0-2])\/((19|20)\d\d))$"
                                                     ErrorMessage="Invalid date format....." /></div>

                </div>

                <div class="row" style="height:77px;">
                    <div class="left">Address:-</div>
                    <div class="right"><asp:TextBox ID="txtadd" runat="server" Width="500px" Height="71px" TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                ControlToValidate="txtadd" Display="Dynamic" ForeColor="Red"
                                                ErrorMessage="Address Must be Insert....."></asp:RequiredFieldValidator></div>
                </div>
                <div style="clear:both">
                </div>

                <div class="row">
                    <div class="left">Mobile No.:-</div>
                    <div class="right"><asp:TextBox ID="txtmobno" runat="server" Height="25px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                                ControlToValidate="txtmobno" Display="Dynamic" ForeColor="Red"
                                                ErrorMessage="Must be Enter The Mobile No....."></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                                    ControlToValidate="txtmobno"
                                                    ValidationExpression="^[0-9]{10}$" Display="Dynamic" ForeColor="Red"
                                                    ErrorMessage="Number Only....."></asp:RegularExpressionValidator></div>
                </div>

                <div class="row">
                    <div class="left">E-mail:-</div>
                    <div class="right"><asp:TextBox ID="txtemail" runat="server" Height="25px" Width="300px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                                ControlToValidate="txtemail" Display="Dynamic" ForeColor="Red"
                                                ErrorMessage="Must be Enter The E-mail....."></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                                    ControlToValidate="txtemail"
                                                    ValidationExpression="^(.+)@([^\.].*)\.([a-z]{2,})$" Display="Dynamic" ForeColor="Red"
                                                    ErrorMessage="Invalid Email Format....."></asp:RegularExpressionValidator></div>
                </div>

                <div class="row">
                    <div class="left">Qulification:-</div>
                    <div class="right"><asp:TextBox ID="txtquli" runat="server" Height="25px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                                ControlToValidate="txtquli" Display="Dynamic" ForeColor="Red"
                                                ErrorMessage="Please Enter The Qulification....."></asp:RequiredFieldValidator></div>
                </div>

                <div class="row">
                    <div class="left">Image:-</div>
                    <div class="right"><asp:FileUpload ID="stfimg" runat="server" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                                ControlToValidate="stfimg" Display="Dynamic" ForeColor="Red"
                                                ErrorMessage="Image Must be Upload....."></asp:RequiredFieldValidator></div>
                </div>

                <div class="row">
                    <div class="left">Password:-</div>
                    <div class="right"><asp:TextBox ID="txtpass" runat="server" Height="25px" Width="172px" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                                ControlToValidate="txtpass" Display="Dynamic" ForeColor="Red"
                                                ErrorMessage="Must be Enter The Password....."></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                                                    ControlToValidate="txtpass" Display="Dynamic" ForeColor="Red"
                                                    ValidationExpression="^[a-zA-Z0-9',@#$%&*\s]{8,20}$"
                                                    ErrorMessage="Invalid Password Format....."></asp:RegularExpressionValidator></div>
                </div>

                <div class="row">
                    <div class="left">Re-Password:-</div>
                    <div class="right"><asp:TextBox ID="txtrepass" runat="server" Height="25px" Width="172px" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                                ControlToValidate="txtrepass" Display="Dynamic" ForeColor="Red"
                                                ErrorMessage="Enter The Re-Password....."></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                          ControlToValidate="txtrepass" Display="Dynamic"
                                          ControlToCompare="txtpass" ForeColor="Red"
                                          ErrorMessage="Password Do Not Match....."></asp:CompareValidator></div>
                </div>
                
                
                <br />
                <asp:Button ID="btn1" runat="server" Text="SUBMIT" ForeColor="White" CssClass="btn" onclick="btn1_Click"/>
                <asp:Button ID="btn2" runat="server" Text="CANCEL" ForeColor="White" CssClass="btn"/>

            </div>
       </div>
    </div>
</asp:Content>
