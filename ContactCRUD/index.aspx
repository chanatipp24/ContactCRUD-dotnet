﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="ContactCRUD.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact - รายชื่อ</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div><h1>สมุดรายชื่อ</h1></div>
            
            <asp:TextBox ID="txtfirstname" runat="server" placeholder="firstname"></asp:TextBox>
            <asp:TextBox ID="txtlastname" runat="server" placeholder="lastname"></asp:TextBox>
            <asp:TextBox ID="txtnumber" runat="server" placeholder="number"></asp:TextBox>
            <asp:TextBox ID="txtemail" runat="server" placeholder="email"></asp:TextBox>
            <asp:Button ID="addNew" runat="server" Text="เพิ่มรายชื่อ" OnClick="Add_Contact" />
            <br></br>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  ViewStateMode="Enabled" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" DataKeyNames="Id" DataSourceID="SqlDataSource1" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" ForeColor="Black" CellSpacing="2">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="firstname" HeaderText="firstname" SortExpression="firstname" />
                    <asp:BoundField DataField="lastname" HeaderText="lastname" SortExpression="lastname" />
                    <asp:BoundField DataField="number" HeaderText="number" SortExpression="number" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [contact]"
                UpdateCommand="UPDATE [contact] set [firstname]=@firstname,[lastname]=@lastname,[number]=@number,[email]=@email WHERE [Id]=@id"
                DeleteCommand="DELETE FROM [contact] WHERE [Id]=@Id">
            </asp:SqlDataSource>
            
        </div>
    </form>
</body>
</html>
