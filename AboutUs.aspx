<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="Attendance_final.AboutUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="main">
    <div id="detail">
        <h1>I.T.SHELIYA JAFARI B.C.A. COLLEGE</h1>
        <p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Keeping pace with the changing trend in technical education, Maktabaha Jafariyah introduced its B.C.A. College in june 2010.</br>
        The Ibrahim Tajmohammad Sheliya Jafari B.C.A. College is affiliated with the Hemchandracharya North Gujarat Uniersity, Patan.</br> 
        A unique visualization method is used here to teach our students.<br/><br /></p>

        <h1>FACILITIES THAT WE OFFER</h1>

        <p>* Fully-equipped Library</p>
        <p>* Computer Laboratory with LAN and internet</p>
        <p>* Well-Planned Projector Room</p>
        <p>* Library with releant books and magazines</p>
        </div>

        <div id="notification">
        <h1>News & Events</h1>
        <hr style="height:2px;"/>

        <div id="news">
        Update News For College.... 
        <hr />

        <%--<p>hdghjfdkgjb  fhjgcbjsdf hfdhgj df </p><hr />
        <p>hhdf rgfyrhef urgf ufr uyerfgiref uyufg uyerf </p><hr />
        <p>edgdjhgfuydfhjcgf</p><hr />
        <br />
        <p>hguryuu yerufgmmomuhg magawerfban ajhghd v</p>--%>
        <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            <div id="new">
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("n_detail") %>'></asp:Label>
            </div>
            <hr />
        </ItemTemplate>
        </asp:Repeater>
            <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:connstr %>" 
                SelectCommand="SELECT [n_detail] FROM [news]"></asp:SqlDataSource>--%>
        </div>
    </div>
</div>
</asp:Content>
