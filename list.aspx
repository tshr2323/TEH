<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="list.aspx.cs" Inherits="list" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style33
        {
            height: 27px;
        }
        .style35
        {
            width: 173px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:projectOfonlineshopConnectionString %>" 
            
            SelectCommand="SELECT Products.ItemID, Products.ItemName, Products.Cost, Products.Description, Products.ImageFile 
                            FROM Products INNER JOIN Categories ON Products.CategoryID = Categories.CategoryID 
                                          INNER JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID 
                            WHERE (Products.CategoryID = @CategoryID) AND (Products.SupplierID = @SupplierID)">

            <SelectParameters>

                <asp:QueryStringParameter Name="CategoryID" QueryStringField="CategoryID" Type="String" />
                <asp:QueryStringParameter Name="SupplierID" QueryStringField="SupplierID" Type="String" />

            </SelectParameters>
     </asp:SqlDataSource>

        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">

        <HeaderTemplate>
        <table style="width: 100%;" border=1>
        </HeaderTemplate>

        <ItemTemplate>
            <tr>
                <td class="style35" rowspan="2">
                    
                <img alt="" src="Images/<%# Eval("ImageFile") %>" style="height: 38px; width: 34px" border="0"/></img>

                </td>
                <td colspan="2">
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("ItemName") %>' />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="DescriptionLabel" runat="server" 
                    Text='<%# Eval("Description") %>' />
                </td>
            </tr>
            <tr>
                <td class="style35" rowspan="2">
                    $ <%# Eval("Cost")%>
                </td>
                <td>
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
        </ItemTemplate>
        
        <FooterTemplate>
            </table>
        </FooterTemplate>



        </asp:Repeater>




    </p>
    <p>
    </p>
</asp:Content>

