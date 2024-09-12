<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="ad_newnoti.aspx.cs" Inherits="Attendance_final.Admin.ad_newnoti" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<link href="../StyleSheet/add.css" rel="Stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="main" style="background-image:url('../Image/3.jpg');">
    <div id="center">
        <div id="form">
            <asp:Label ID="lbl" runat="server" Text="Notification Detail:-" Font-Size="18px"></asp:Label><br />
            <asp:TextBox ID="txtndetail" runat="server" Height="100px" Width="400px" TextMode="MultiLine"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                        ControlToValidate="txtndetail" ForeColor="Red" Display="Dynamic"
                                        ErrorMessage="Please Insert Notification....."></asp:RequiredFieldValidator>
            <br /><br />
            <asp:Button ID="btn" runat="server" Text="UPLOAD" ForeColor="White" 
                CssClass="btn" onclick="btn_Click"/>
            
            
        </div>
        <asp:GridView ID="GridView1" runat="server" BackColor="White" align="center"
                BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                <SortedDescendingHeaderStyle BackColor="#7E0000" />
            </asp:GridView>
    </div>
</div>
</asp:Content>
