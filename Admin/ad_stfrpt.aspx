<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="ad_stfrpt.aspx.cs" Inherits="Attendance_final.Admin.ad_stfrpt" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<link href="../StyleSheet/add.css" rel="Stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="main" style="background-image:url('../Image/3.jpg');">
    <div id="center">
         <asp:Repeater ID="rptImages" runat="server" 
        onitemcommand="rptImages_ItemCommand" >
    <HeaderTemplate>
        <table cellspacing="0" rules="all" border="1" style="border-color:Background;color:White;">
            <tr align="center">
                <th scope="col" style="width: 50px" >
                    stf_id
                </th>
                <th scope="col" style="width: 50px" >
                    stf_name
                </th>
                <th scope="col" style="width: 100px">
                    stf_email
                </th>
                <th scope="col" style="width: 100px">
                    stf_gender
                </th>
                <th scope="col" style="width: 100px">
                    stf_dob
                </th>
                <th scope="col" style="width: 100px">
                    stf_address
                </th>
                <th scope="col" style="width: 70px">
                    stf_mobileno
                </th>
                <th scope="col" style="width: 70px">
                    stf_qualification
                </th>
                <th scope="col" style="width: 70px">
                    stf_regdate
                </th>
                <th scope="col" style="width: 30px"></th>
            </tr>
    </HeaderTemplate>
    <ItemTemplate>
        <tr align="center">
            <td>
                <asp:Label ID="lblAvId" runat="server" Text='<%# Eval("stf_id") %>' />
            </td>
             <td>
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("stf_name") %>' />
            </td>
            <td>
                <asp:Label ID="lblAvname" runat="server" Text='<%# Eval("stf_email") %>' />
            </td>
            <td>
                <asp:Label ID="lblcategory" runat="server" Text='<%# Eval("stf_gender") %>' />
            </td>
            <td>
                <asp:Label ID="lblSubcate" runat="server" Text='<%# Eval("stf_dob") %>' />
            </td>
            <td>
                <asp:Label ID="lblType" runat="server" Text='<%# Eval("stf_address") %>' />
            </td>
            <td>
                <asp:Label ID="lblpostdate" runat="server" Text='<%# Eval("stf_mobileno") %>' />
            </td>
            <td>
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("stf_qualification") %>' />
            </td>
            <td>
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("stf_regdate") %>' />
            </td>
            <td>
                <asp:ImageButton ID="image1" runat="server" CommandName="Delete" OnClick="rptImages_ItemCommand" OnClientClick="return confirm('Dou you want to delete this Media?')" ImageUrl="~/Image/del1.png" Height="20px" Width="20px" />
            </td>
        </tr>
    </ItemTemplate>
    <FooterTemplate>
        </table>
    </FooterTemplate>
</asp:Repeater>
       </div>
    </div>
</div>
</asp:Content>
