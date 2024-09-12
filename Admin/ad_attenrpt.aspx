<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="ad_attenrpt.aspx.cs" Inherits="Attendance_final.Admin.ad_attenrpt" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<link href="../StyleSheet/add.css" rel="Stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="main" style="background-image:url('../Image/3.jpg');">
    <div id="center">
        <div id="form">
            <asp:Label ID="lblyear" runat="server" Text="Year:-"></asp:Label>
            <asp:TextBox ID="txtyear" runat="server" Height="25px" Width="130px" placeholder="YYYY_YY"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                        ControlToValidate="txtyear" ForeColor="Red" Display="Dynamic"
                                        ErrorMessage="Please Must be Insert Year....."></asp:RequiredFieldValidator>
            
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

            <asp:Label ID="lbl2" runat="server" Text="Select Month:-"></asp:Label>
            <asp:DropDownList ID="DropDownList2" runat="server" Height="28px" Width="110px">
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

            <asp:Label ID="lbl3" runat="server" Text="Roll No.:-"></asp:Label>
            <asp:TextBox ID="txtrollno" runat="server" Height="25px" Width="100px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                        ControlToValidate="txtrollno" ForeColor="Red" Display="Dynamic"
                                        ErrorMessage="Please Roll No. Must be Insert....."></asp:RequiredFieldValidator>
            <br /><br />

             <asp:Button ID="btn1" runat="server" Text="REPORT" ForeColor="White" 
                CssClass="btn" onclick="btn1_Click"/>
            <hr />
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
</div>
</asp:Content>
