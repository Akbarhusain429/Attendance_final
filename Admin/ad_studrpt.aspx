<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="ad_studrpt.aspx.cs" Inherits="Attendance_final.Admin.ad_studrpt" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<link href="../StyleSheet/add.css" rel="Stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="main" style="background-image:url('../Image/3.jpg');">
    <div id="center">
        <div id="form">
            <asp:Label ID="lbl" runat="server" Text="Year:-"></asp:Label>
            <asp:TextBox ID="txtyear" runat="server" Height="28px" Width="100px" placeholder="YYYY-YY"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                        ControlToValidate="txtyear" ForeColor="Red" Display="Dynamic"
                                        ErrorMessage="Must be Insert Year....."></asp:RequiredFieldValidator>
            <br /><br />
            
            <asp:Label ID="lbl1" runat="server" Text="SEM:-"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" Height="28px" Width="100px">
            <asp:ListItem Value="sem1"></asp:ListItem>
            <asp:ListItem Value="sem2"></asp:ListItem>
            <asp:ListItem Value="sem3"></asp:ListItem>
            <asp:ListItem Value="sem4"></asp:ListItem>
            <asp:ListItem Value="sem5"></asp:ListItem>
            <asp:ListItem Value="sem6"></asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <asp:Label ID="lbl2" runat="server" Text="Roll No.:-"></asp:Label>
            <asp:TextBox ID="txtrollno" runat="server" Height="28px" Width="100px"></asp:TextBox>
            
            <br /><br /><br />

             <asp:Button ID="btn1" runat="server" Text="REPORT" ForeColor="White" 
                CssClass="btn" onclick="btn1_Click"/>
                        
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
