<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="mail_info.aspx.cs" Inherits="mail_info" %>

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
            text-align: right;
            width: 387px;
        }
        .style35
        {
            text-align: center;
            height: 23px;
        }
        .style36
        {
            height: 23px;
        }
        .style37
        {
            text-align: right;
            height: 23px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table style="width:100%;">
        <tr>
            <td class="style34">
                <asp:Label ID="Label1" runat="server" Text="Shipping address:"></asp:Label>
            </td>
            <td class="style25">
                <asp:TextBox ID="TextBox2" runat="server" BorderStyle="Dotted" 
                    style="margin-left: 0px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style34">
                <asp:Label ID="Label2" runat="server" Text="Phone NO. :"></asp:Label>
            </td>
            <td class="style25">
                <asp:TextBox ID="TextBox3" runat="server" BorderStyle="Dotted"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style37">
                <asp:Label ID="Label3" runat="server" Text="Deliever Choose:"></asp:Label>
            </td>
            <td class="style36" style="text-align: left">
                <asp:DropDownList ID="DropDownList1" runat="server" style="text-align: left">
                    <asp:ListItem>Canada Western</asp:ListItem>
                    <asp:ListItem>Canpar</asp:ListItem>
                    <asp:ListItem>Apex</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style37">
                <asp:Label ID="Label4" runat="server" Text="Payment Type:"></asp:Label>
            </td>
            <td class="style36" style="text-align: left">
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>VISA</asp:ListItem>
                    <asp:ListItem>Master-Card</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style35" colspan="2">
                <asp:Button ID="Button2" runat="server" BorderStyle="Dotted" 
                    onclick="Button2_Click" Text="Send" />
            </td>
        </tr>
    </table>

</asp:Content>