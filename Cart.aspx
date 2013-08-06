<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style25
        {
            text-align: left;
        }
        .style26
        {
            font-size: large;
            color: #003366;
            text-align: left;
        }
        .style27
        {
            color: #336699;
        }
        .style33
        {
            width: 257px;
        }
        .style35
        {
            height: 23px;
            text-align: left;
        }
        .style36
        {
            height: 23px;
            text-align: right;
            width: 387px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script language="javascript">
    function Remove(i) {

    var s = document.cookie;
    var v="";
    var t = s.split("=");
    var t = t[1].split(":");
      for(c=0;c<t.length;c++)
      {
          if (c != i) {
             if(s<t.length-1)
             {
                v=v+t[c]+":";
             }
             else
             {
                v = v + t[c];
             }
          }
    }
        document.cookie = 'ShoppingCart=' + v + ';path=/';
        setTimeout("location.reload(true);", 1500);
 }
</script>
    
    <asp:Label ID="Label1" runat="server" onload="Label1_Load" Text="No Item" 
        ></asp:Label>
    <br />
    <table style="width:100%;">
        <tr>
            <td class="style36">
                <asp:Label ID="Label2" runat="server" Text="Contact No:"></asp:Label>
            </td>
            <td class="style35">
                <asp:Label ID="Adress" runat="server" Text="None"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style36">
                <asp:Label ID="Label3" runat="server" Text="User Name:"></asp:Label>
            </td>
            <td class="style35">
                <asp:Label ID="Name" runat="server" Text="None"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style36">
                <asp:Label ID="Label4" runat="server" Text="Total:"></asp:Label>
            </td>
            <td class="style35">
                <asp:Label ID="Total" runat="server" Text="None"></asp:Label>
            </td>
        </tr>
    </table>
    <br/>
    <asp:Button ID="Button1" runat="server" Text="Submit" BorderStyle="Solid" 
        onclick="Button1_Click" />
    <br />

</asp:Content>
