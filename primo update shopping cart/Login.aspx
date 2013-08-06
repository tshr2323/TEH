<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style33
        {
            font-size: large;
            text-align: center;
        }
        .style34
        {
            width: 70px;
        }
        .style36
        {
            width: 186px;
        }
        .style37
        {
            width: 156px;
        }
        .style38
        {
            text-align: left;
        }
        .auto-style1
        {
            width: 100%;
        }
        .auto-style2
        {
            font-size: x-large;
        }
        .style39
        {
            width: 186px;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="style38" >
    
        <strong><span class="style4">
        <br />
        <span class="style33"></span></span></strong><br />
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style2">
                    
                        Login Page
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
    
    </div>
    <table align="center" style="width: 442px" >
        <tr>
            <td class="style34" >
                &nbsp;&nbsp;&nbsp;
                User ID</td>
            <td class="style37" >
                <asp:TextBox ID="TextBox1" runat="server" MaxLength="15" Width="180px"></asp:TextBox>
            </td>
            <td class="style39">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Please enter user Id" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style34" >
                Password</td>
            <td class="style37" >
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" 
                    Width="180px"></asp:TextBox>
            </td>
            <td class="style39">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Please enter password" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style34" >
                &nbsp;</td>
            <td style="text-align: right" class="style37" >
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Login" 
                    Width="80px" style="text-align: center" />
            </td>
            <td class="style36">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style34" >
                &nbsp;</td>
            <td class="style37" >
                &nbsp;</td>
            <td class="style36">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style34" >
                &nbsp;</td>
            <td class="style37" >
                <asp:HyperLink ID="HyperLink1" runat="server" 
                    NavigateUrl="~/Registration.aspx">New User Registration</asp:HyperLink>
            </td>
            <td class="style36">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style34" >
                &nbsp;</td>
            <td class="style37" >
        <asp:Label ID="Label1" runat="server" Visible="False" ForeColor="Red"></asp:Label>
            </td>
            <td class="style36">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style34" >
                &nbsp;</td>
            <td class="style37" >
                &nbsp;</td>
            <td class="style36">
                &nbsp;</td>
        </tr>
    </table>

</asp:Content>

