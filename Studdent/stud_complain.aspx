<%@ Page Title="" Language="C#" MasterPageFile="~/Studdent/student_master.master" AutoEventWireup="true" CodeBehind="stud_complain.aspx.cs" Inherits="Attendance_final.Studdent.stud_complain" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div style="background-image: url(../Image/2-1.jpg); height: 225%; width: 100%; background-repeat:no-repeat;">
    <div id="center">
        <div id="genral">
            <asp:Label ID="lbl1" runat="server" Text="Complain About:-"></asp:Label>
            <asp:TextBox ID="txtabout" runat="server" TextMode="SingleLine" Height="25px" Width="150px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                        ControlToValidate="txtabout" ForeColor="Red" Display="Dynamic"
                                        ErrorMessage="Please Insert About Message"></asp:RequiredFieldValidator>
            <br /><br />

            <asp:Label ID="Label1" runat="server" Text="Message:-" style="margin-left:-215px;"></asp:Label><br />
            <asp:TextBox ID="txtmsg" runat="server" TextMode="MultiLine" Height="72px" Width="272px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                        ControlToValidate="txtmsg" ForeColor="Red" Display="Dynamic"
                                        ErrorMessage="Please Insert Complain Message"></asp:RequiredFieldValidator>
            <br /><br />

            <asp:Button ID="btn1" runat="server" Text="SUBMIT" ForeColor="White" 
                CssClass="btn" onclick="btn1_Click"/>
        </div>
    </div>
</div>
</asp:Content>
