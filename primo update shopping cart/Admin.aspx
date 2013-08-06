<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
 
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
            DataKeyNames="UserID" DataSourceID="SqlDataSource1" ForeColor="#333333" 
            GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                    ShowSelectButton="True" />
                <asp:BoundField DataField="UserID" HeaderText="UserID" ReadOnly="True" 
                    SortExpression="UserID" />
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" 
                    SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" 
                    SortExpression="LastName" />
                <asp:BoundField DataField="Password" HeaderText="Password" 
                    SortExpression="Password" />
                <asp:BoundField DataField="ContactNo" HeaderText="ContactNo" 
                    SortExpression="ContactNo" />
                <asp:BoundField DataField="Eamil" HeaderText="Eamil" SortExpression="Eamil" />
                <asp:BoundField DataField="SecurityQ" HeaderText="SecurityQ" 
                    SortExpression="SecurityQ" />
                <asp:BoundField DataField="SecurityA" HeaderText="SecurityA" 
                    SortExpression="SecurityA" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:projectOfonlineshopConnectionString %>" 
            DeleteCommand="DELETE FROM [Users] WHERE [UserID] = @UserID" 
            InsertCommand="INSERT INTO [Users] ([UserID], [FirstName], [LastName], [Password], [ContactNo], [Eamil], [SecurityQ], [SecurityA]) VALUES (@UserID, @FirstName, @LastName, @Password, @ContactNo, @Eamil, @SecurityQ, @SecurityA)" 
            SelectCommand="SELECT * FROM [Users]" 
            UpdateCommand="UPDATE [Users] SET [FirstName] = @FirstName, [LastName] = @LastName, [Password] = @Password, [ContactNo] = @ContactNo, [Eamil] = @Eamil, [SecurityQ] = @SecurityQ, [SecurityA] = @SecurityA WHERE [UserID] = @UserID">
            <DeleteParameters>
                <asp:Parameter Name="UserID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="UserID" Type="String" />
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="ContactNo" Type="String" />
                <asp:Parameter Name="Eamil" Type="String" />
                <asp:Parameter Name="SecurityQ" Type="String" />
                <asp:Parameter Name="SecurityA" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="ContactNo" Type="String" />
                <asp:Parameter Name="Eamil" Type="String" />
                <asp:Parameter Name="SecurityQ" Type="String" />
                <asp:Parameter Name="SecurityA" Type="String" />
                <asp:Parameter Name="UserID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
