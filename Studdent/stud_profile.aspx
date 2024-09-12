<%@ Page Title="" Language="C#" MasterPageFile="~/Studdent/student_master.master" AutoEventWireup="true" CodeBehind="stud_profile.aspx.cs" Inherits="Attendance_final.Studdent.stud_profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div style="background-image: url(../Image/2-1.jpg); height: 225%; width: 100%; background-repeat:no-repeat;">
    <div id="center">
        <div id="genral">
                <asp:Label ID="lbl15" runat="server" Text="G.R No.:-" Width="80px" Font-Size="18px" Height="25px"></asp:Label>
                <asp:Label ID="lblgrno" runat="server" Font-Size="19px" ></asp:Label>
                <br /><br />

                <asp:Label ID="Label1" runat="server" Text="Roll No.:-" Width="80px" Font-Size="18px" Height="25px"></asp:Label>
                <asp:Label ID="lblrno" runat="server" Font-Size="19px"></asp:Label>
                
                <div class="row">
                    <div class="left">Name:-</div>
                    <div class="right">
                    <asp:Label ID="lblname" runat="server"  Height="25px" Width="300px" Font-Size="19px"></asp:Label>   
                    </div>
                </div>

                <div class="row">
                    <div class="left">Gender:-</div>
                    <div class="right">
                    <asp:Label ID="lblgender" runat="server" Font-Size="19px"></asp:Label>                    
                    </div>   
                </div>

                <div class="row">
                    <div class="left">D.O.B:-</div>
                    <div class="right">
                    <asp:Label ID="lbldob" runat="server" Height="25px" Font-Size="19px"></asp:Label>
                    </div>
                </div>

                <div class="row" style="height:77px;">
                    <div class="left">Address:-</div>
                    <div class="right"><asp:TextBox ID="txtadd" runat="server" Width="500px" Height="71px" TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                                ControlToValidate="txtadd" Display="Dynamic" ForeColor="Red"
                                                ErrorMessage="Please Enter The Address....."></asp:RequiredFieldValidator></div>
                </div>
                <div style="clear:both">
                </div>

                <div class="row">
                    <div class="left">Mobile No.:-</div>
                    <div class="right"><asp:TextBox ID="txtmobno" runat="server" Height="25px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                                    ControlToValidate="txtmobno"  ForeColor="Red"
                                                    ValidationExpression="^[0-9]{10}$" Display="Dynamic"
                                                    ErrorMessage="Number Only....."></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                                ControlToValidate="txtmobno" Display="Dynamic" ForeColor="Red"
                                                ErrorMessage="Must be Enter The Mobile No....."></asp:RequiredFieldValidator></div>
                </div>

                <div class="row">
                    <div class="left">E-mail:-</div>
                    <div class="right"><asp:TextBox ID="txtemail" runat="server" Height="25px" Width="300px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                                ControlToValidate="txtemail" Display="Dynamic" ForeColor="Red"
                                                ErrorMessage="Must be Enter The E-mail....."></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                                                    ControlToValidate="txtemail" ForeColor="Red"
                                                    ValidationExpression="^(.+)@([^\.].*)\.([a-z]{2,})$" Display="Dynamic"
                                                    ErrorMessage="Invalid Email Format"></asp:RegularExpressionValidator></div>
                </div>
                <br />
                <asp:Button ID="btnupdate" runat="server" Text="UPDATE" ForeColor="White" 
                    CssClass="btn" onclick="btnupdate_Click"/>
                <asp:Button ID="btncancel" runat="server" Text="CANCEL" ForeColor="White" 
                    CssClass="btn" onclick="btncancel_Click"/>
        </div>
    </div>
</div>
<style>
   .row
    {
        width:100%; height:30px;  margin-bottom:10px; font-size:18px;
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
</asp:Content>
