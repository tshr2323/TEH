<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:projectOfonlineshopConnectionString %>" 
            
            SelectCommand="SELECT ItemID, ItemName, SupplierID, CategoryID, Quantity, Cost, ImageFile, IcoFiles, Description FROM Products WHERE (ItemName LIKE @Name)">
     <SelectParameters>
         <asp:QueryStringParameter Name="Name" QueryStringField="Name" Type="String" />         
     </SelectParameters>
     </asp:SqlDataSource>




        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">

        <HeaderTemplate>
        <table style="width: 100%;">
        </HeaderTemplate>

        <ItemTemplate>
            <tr>
                <td class="style35" rowspan="2">
                    
                <img alt="" src="Images/<%# Eval("ImageFile") %>" style="height: 38px; width: 34px" border="0"/></img>

                </td>
                <td colspan="2">
                    <%# Eval("ItemID")%> : <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("ItemName") %>' />
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
</asp:Content>

