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
        .style34
        {
            width: 257px;
            height: 23px;
        }
        .style35
        {
            height: 23px;
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

</asp:Content>
