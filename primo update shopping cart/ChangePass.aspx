<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ChangePass.aspx.cs" Inherits="ChangePass" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1
        {
            width: 100%;
        }
        .auto-style2
        {
            text-align: right;
            width: 305px;
        }
        .auto-style3
        {
            text-align: left;
        }
        .auto-style4
        {
            text-align: left;
            width: 77px;
        }
        .auto-style5
        {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style5" colspan="2">Change Password</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">User Name</td>
            <td class="auto-style4">
                <asp:TextBox ID="label_username" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="auto-style3">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="label_username" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Password</td>
            <td class="auto-style4">
                <asp:TextBox ID="textBox_Current" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="auto-style3">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="textBox_Current" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">New password</td>
            <td class="auto-style4">
                <asp:TextBox ID="textBox_New" runat="server" Width="180px"></asp:TextBox>
                <asp:PasswordStrength ID="textBox_New_PasswordStrength" runat="server" 
                    TargetControlID="textBox_New">
                </asp:PasswordStrength>
            </td>
            <td class="auto-style3">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="textBox_New" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Confirm Password</td>
            <td class="auto-style4">
                <asp:TextBox ID="textBox_Verify" runat="server" Width="180px"></asp:TextBox>
                <asp:PasswordStrength ID="textBox_Verify_PasswordStrength" runat="server" 
                    TargetControlID="textBox_Verify">
                </asp:PasswordStrength>
            </td>
            <td class="auto-style3">
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="textBox_Verify" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="textBox_New" ControlToValidate="textBox_Verify" 
                    ErrorMessage="CompareValidator"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style3">
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="margin-left: 0px" Text="OK" Width="80px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">
                <asp:Label ID="Label2" runat="server"></asp:Label>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

