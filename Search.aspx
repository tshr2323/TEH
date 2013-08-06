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




        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" 
            onitemcommand="Repeater1_ItemCommand">

        <HeaderTemplate>
        <table>
        <tr>
            <table>
                </HeaderTemplate>

                <ItemTemplate>
                 <td>

                 </td>
                    <tr>
                        <td>
                        <asp:Label ID="ItemID" runat="server" Text='<%# Eval("ItemID")%>'/>:<asp:Label ID="NameLabel" runat="server" Text='<%# Eval("ItemName") %>' />
                        </td>
                        <td>    
                        <img alt="" src="Images/<%# Eval("ImageFile") %>" style="height: 38px; width: 34px" border="0"/></img>
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
                            <asp:Label ID="Label1" runat="server" Text="Quantity"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="Quantity" Name="Quantity" runat="server" Text='<%# Eval("Quantity") %>' TabIndex="1"></asp:TextBox>
                        </td>
                        <td>
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%#String.Format("{0}",Eval("ItemID"))%>'>AddItem</asp:LinkButton>
                                                       
                        </td>
                    </tr>
                </ItemTemplate>
        
                <FooterTemplate>
                </table>
            </tr>
            <tr>
               <table>
                <td>
                    
                </td>
               </table>
            </tr>
            </table>
        </FooterTemplate>
        </asp:Repeater>




    </p>
</asp:Content>

