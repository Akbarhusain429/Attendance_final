<%@ Page Title="" Language="C#" MasterPageFile="~/Studdent/student_master.master" AutoEventWireup="true" CodeBehind="stud_changpass.aspx.cs" Inherits="Attendance_final.Studdent.stud_changpass" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div style="background-image: url(../Image/2-1.jpg); height: 225%; width: 100%; background-repeat:no-repeat;">
    <div id="center">
        <div id="genral">
            <asp:Label ID="lbl1" runat="server" Text="Old Password:-" Width="110px"></asp:Label>
            <asp:TextBox ID="txtoldpass" runat="server" Height="25px" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                        ControlToValidate="txtoldpass" ForeColor="Red" Display="Dynamic"
                                        ErrorMessage="Please Enter Old Password"></asp:RequiredFieldValidator>
            <br /><br />

            <asp:Label ID="lbl2" runat="server" Text="New Password:-" Width="110px"></asp:Label>
            <asp:TextBox ID="txtnewpass" runat="server" Height="25px" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                        ControlToValidate="txtnewpass" ForeColor="Red" Display="Dynamic"
                                        ErrorMessage="Please Enter New Password"></asp:RequiredFieldValidator>
            <br /><br />

            <asp:Label ID="lbl3" runat="server" Text="Re-Password:-" Width="110px"></asp:Label>
            <asp:TextBox ID="txtrepass" runat="server" Height="25px" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                        ControlToValidate="txtrepass" ForeColor="Red" Display="Dynamic"
                                        ErrorMessage="Please Enter Confirm Password"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                  ControlToValidate="txtrepass" Display="Dynamic"
                                  ControlToCompare="txtnewpass"  ForeColor="Red"
                                  ErrorMessage="Password Not Match"></asp:CompareValidator>
            <br /><br /><br />

            <asp:Button ID="btn1" runat="server" Text="SUBMIT" ForeColor="White" 
                CssClass="btn" onclick="btn1_Click"/>
        </div>
    </div>
</div>
</asp:Content>
