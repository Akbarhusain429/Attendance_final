<%@ Page Title="" Language="C#" MasterPageFile="~/Staff/staff_master.master" AutoEventWireup="true" CodeBehind="stf_leave.aspx.cs" Inherits="Attendance_final.Staff.stf_leave" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div style="background-image: url(../Image/2-1.jpg); height: 225%; width: 100%; background-repeat:no-repeat;">
    <div id="center">
        <div id="genral">
            <asp:Label ID="lbl1" runat="server" Text="Leave For Reason:-" style="margin-left:-150px;"></asp:Label><br />
            <asp:TextBox ID="txtreason" runat="server" TextMode="MultiLine" Height="72px" Width="272px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                        ControlToValidate="txtreason" ForeColor="Red" Display="Dynamic"
                                        ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
            <br /><br />

            <asp:Label ID="lbl2" runat="server" Text="No. Of Days:-"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" Height="28px" Width="50px">
            <asp:ListItem Value="01"></asp:ListItem>
            <asp:ListItem Value="02"></asp:ListItem>
            <asp:ListItem Value="03"></asp:ListItem>
            <asp:ListItem Value="04"></asp:ListItem>
            <asp:ListItem Value="05"></asp:ListItem>
            <asp:ListItem Value="06"></asp:ListItem>
            <asp:ListItem Value="07"></asp:ListItem>
            <asp:ListItem Value="08"></asp:ListItem>
            <asp:ListItem Value="09"></asp:ListItem>
            <asp:ListItem Value="10"></asp:ListItem>
            </asp:DropDownList>
            <br /><br />

            <asp:Button ID="btn1" runat="server" Text="SUBMIT" ForeColor="White" 
                CssClass="btn" onclick="btn1_Click"/>
        </div>
    </div>
</div>
</asp:Content>
