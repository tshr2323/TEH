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
        <table border="1" width="100%">
            <tr style="background-color:#222aa2;color:White" >
            <th>Image</th>
            <th>Description</th>
            <th>Cost</th>
            <th>Quantity</th>
            <th>Action</th>
            </tr>
        </HeaderTemplate>

        <ItemTemplate>
            <tr>
                <td class="style35">
                <img alt="" src="Images/<%# Eval("ImageFile") %>" style="height: 90px; width: 74px" border="0"/></img>
                </td>

               <%-- <td colspan="2">
                    <%# Eval("ItemID")%> : <asp:Label ID="NameLabel"
                     runat="server" Text='<%# Eval("ItemName") %>' />
                </td>--%>
            
          
          
            
                <td >
                    <asp:Label ID="DescriptionLabel" runat="server" 
                    Text='<%# Eval("Description") %>' />
                </td>
            

                <td >
                    <asp:Label ID="CostLabel1" runat="server" 
                    Text='<%# Eval("Cost") %>' />
                </td>
                                        <td>
                            <asp:TextBox ID="Quantity" runat="server" Text='<%# Eval("Quantity")%>'></asp:TextBox>
                        </td>
                        <td>
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%#String.Format("{0}",Eval("ItemID"))%>'>AddItem</asp:LinkButton>
                            </td>
            </tr>
        </ItemTemplate>
        
        <FooterTemplate>
            </table>
        </FooterTemplate>



        </asp:Repeater>




    </p>
</asp:Content>

