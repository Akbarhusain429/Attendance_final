<%@ Page Title="" Language="C#" MasterPageFile="~/Studdent/student_master.master" AutoEventWireup="true" CodeBehind="stud_attenreport.aspx.cs" Inherits="Attendance_final.Studdent.stud_attenreport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div style="background-image: url(../Image/2-1.jpg); height: 225%; width: 100%; background-repeat:no-repeat;">
    <div id="center">
        <div id="genral">
            <asp:Label ID="lbl1" runat="server" Text="Select Month:-"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" Height="28px" Width="110px">
            <asp:ListItem Value="SELECT"></asp:ListItem>
            <asp:ListItem Value="January"></asp:ListItem>
            <asp:ListItem Value="February"></asp:ListItem>
            <asp:ListItem Value="March"></asp:ListItem>
            <asp:ListItem Value="April"></asp:ListItem>
            <asp:ListItem Value="May"></asp:ListItem>
            <asp:ListItem Value="June"></asp:ListItem>
            <asp:ListItem Value="July"></asp:ListItem>
            <asp:ListItem Value="August"></asp:ListItem>
            <asp:ListItem Value="September"></asp:ListItem>
            <asp:ListItem Value="October"></asp:ListItem>
            <asp:ListItem Value="November"></asp:ListItem>
            <asp:ListItem Value="December"></asp:ListItem>
            </asp:DropDownList>
            <br /><br />
            
            <asp:Button ID="btn1" runat="server" Text="REPORT" ForeColor="White" CssClass="btn"/>
            <hr />
        </div>
    </div>
</div>
</asp:Content>
