﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="list.aspx.cs" Inherits="list" %>

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
        <table border="1" width="100%">
            <tr style="background-color:#222aa2;color:White" >
            <th>Image</th>
            <th>Description</th>
            <th>Cost</th>
            </tr>
        </HeaderTemplate>

        <ItemTemplate>
            <tr>
                <td class="style35">
                    
                <img alt="" src="Images/<%# Eval("ImageFile") %>" style="height: 90px; width: 74px" border="0"/></img>

                </td>
              <%--  <td colspan="2">
                    <asp:Label ID="NameLabel" runat="server"
                     Text='<%# Eval("ItemName") %>' />
                </td>--%>
           
                <td>
                    <asp:Label ID="DescriptionLabel" runat="server" 
                    Text='<%# Eval("Description") %>' />
                </td>
            
                <td>
                    <asp:Label ID="CostLabel1" runat="server" 
                    Text='<%# Eval("Cost") %>' />
                </td>
            </tr>
           
        </ItemTemplate>
        
        <FooterTemplate>
            </table>
        </FooterTemplate>



        </asp:Repeater>

    </p>
    
</asp:Content>

