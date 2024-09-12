<%@ Page Title="" Language="C#" MasterPageFile="~/Staff/staff_master.master" AutoEventWireup="true" CodeBehind="stf_attendance.aspx.cs" Inherits="Attendance_final.Staff.stf_attendance" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div style="background-image: url(../Image/2-1.jpg); height: 225%; width: 100%; background-repeat:no-repeat;">
    <div id="center">
        <div id="genral">
            <asp:Label ID="lbl1" runat="server" Text="SEM:-" Width="80px" Font-Size="18px" Height="25px"></asp:Label>
            <asp:DropDownList ID="DropDownList1"  AutoPostBack="true" runat="server" 
                Height="28px" Width="100px" 
                onselectedindexchanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem Value="sem1"></asp:ListItem>
            <asp:ListItem Value="sem2"></asp:ListItem>
            <asp:ListItem Value="sem3"></asp:ListItem>
            <asp:ListItem Value="sem4"></asp:ListItem>
            <asp:ListItem Value="sem5"></asp:ListItem>
            <asp:ListItem Value="sem6"></asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <asp:Label ID="lbl2" runat="server" Text="Lecture:-" Width="80px" Font-Size="18px" Height="25px"></asp:Label>
            <asp:TextBox ID="txtlecture" runat="server" Height="25px" Width="150px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                        ControlToValidate="txtlecture" ForeColor="Red" Display="Dynamic"
                                        ErrorMessage="Please Insert Lecture Name"></asp:RequiredFieldValidator>
            <br /><br />

            <asp:Label ID="lbl3" runat="server" Text="Date:-" CssClass="lbl"></asp:Label>
            <asp:TextBox ID="txtdate" runat="server" Height="25px" Width="160px" placeholder="DD/MM/YYYY"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                        ControlToValidate="txtdate" Display="Dynamic" ForeColor="Red"
                                        ErrorMessage="Date Must be Insert"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ForeColor="Red" Display="Dynamic"
                                            ControlToValidate="txtdate" ValidationExpression="(((0|1)[0-9]|2[0-9]|3[0-1])\/(0[1-9]|1[0-2])\/((19|20)\d\d))$"
                                            ErrorMessage="Invalid date format"></asp:RegularExpressionValidator>
           

            <asp:Label ID="lblyear" runat="server" Text="Year:-" Width="80px" Font-Size="18px" Height="25px"></asp:Label>
            <asp:TextBox ID="txtyear" runat="server" Height="25px" Width="150px" placeholder="YYYY_YY"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                        ControlToValidate="txtyear" ForeColor="Red" Display="Dynamic"
                                        ErrorMessage="Please Insert Academic Year Like 2017_18"></asp:RequiredFieldValidator>
            <br /><br />
            <asp:Button ID="btn1" runat="server" Text="SUBMIT" ForeColor="White" 
                CssClass="btn" onclick="btn1_Click"/>
            <hr />
            <div style="width:100%; height:350px; overflow:auto">
            <asp:GridView ID="GridView1" runat="server" BackColor="White" 
                BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                AutoGenerateColumns="False" align="center">

                <Columns>
                    <asp:BoundField DataField="stud_grno" HeaderText="stud_grno" 
                        SortExpression="stud_grno" />
                    <asp:BoundField DataField="stud_rollno" HeaderText="stud_rollno" 
                        SortExpression="stud_rollno" />
                    <asp:BoundField DataField="stud_name" HeaderText="stud_name" 
                        SortExpression="stud_name" />
                    <asp:BoundField DataField="stud_sem" HeaderText="stud_sem" 
                        SortExpression="stud_sem" />

                        <asp:TemplateField HeaderText="Attendance">  
                        <EditItemTemplate>  
                        <asp:CheckBox ID="CheckBox1" runat="server" />  
                        </EditItemTemplate>  
                        <ItemTemplate>  
                        <asp:CheckBox ID="CheckBox1" runat="server" />  
                        </ItemTemplate>  
                </asp:TemplateField> 

                </Columns>


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
            <br />            
                <asp:Button ID="btnsave" runat="server" Text="SAVE" ForeColor="White" 
                    CssClass="btn" onclick="btnsave_Click"/>
            </div>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:connstr %>" 
                SelectCommand="SELECT [stud_grno], [stud_rollno], [stud_name], [stud_sem] FROM [student]">
            </asp:SqlDataSource>

        </div>
    </div>
</div>
</asp:Content>
