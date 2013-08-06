<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

    <%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

    <asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     
        <style type="text/css">
            .auto-style1
            {
                text-align: left;
            }
        </style>
     
    </asp:Content>

    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div >
    
        <h1>
            Registration Page</h1>
    
    </div>
    <table >
        <tr>
            <td class="style32" >
                UserID</td>
            <td >
                <asp:TextBox ID="TxtUser" runat="server" MaxLength="15" Width="180px" 
                    style="margin-left: 0px"></asp:TextBox>
            </td>
            <td class="auto-style1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TxtUser" ErrorMessage="please enter user Id" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style32" >
                FirstName</td>
            <td >
                <asp:TextBox ID="TxtFN" runat="server" MaxLength="15" Width="180px"></asp:TextBox>
            </td>
            <td style="text-align: left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TxtFN" ErrorMessage="Please enter First name" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style32" >
                LastName</td>
            <td >
                <asp:TextBox ID="TxtLN" runat="server" MaxLength="15" Width="180px"></asp:TextBox>
            </td>
            <td style="text-align: left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TxtLN" ErrorMessage="please enter Last Name" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style32" >
                Password</td>
            <td >
                <asp:TextBox ID="TxtPass" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                <asp:PasswordStrength ID="TxtPass_PasswordStrength" runat="server" 
                    TargetControlID="TxtPass">
                </asp:PasswordStrength>
            </td>
            <td style="text-align: left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TxtPass" ErrorMessage="Please enter password" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style32" >
                Retype Password</td>
            <td >
                <asp:TextBox ID="TxtPassR" runat="server" MaxLength="8" TextMode="Password" 
                    Width="180px"></asp:TextBox>
                <asp:PasswordStrength ID="TxtPassR_PasswordStrength" runat="server" 
                    TargetControlID="TxtPassR">
                </asp:PasswordStrength>
            </td>
            <td style="text-align: left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="TxtPassR" 
                    ErrorMessage="re enter password" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TxtPass" ControlToValidate="TxtPassR" 
                    ErrorMessage="Both password must much" ForeColor="Red"></asp:CompareValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style32" >
                ContactNo</td>
            <td >
                <asp:TextBox ID="TxtContact" runat="server" Height="22px" Width="180px"></asp:TextBox>
            </td>
            <td style="text-align: left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TxtContact" ErrorMessage="Please enter contact number" 
                    ForeColor="Red" style="text-align: left"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style32" >
                Email</td>
            <td >
                <asp:TextBox ID="TxtEmail" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td style="text-align: left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TxtEmail" ErrorMessage="please enter email id" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TxtEmail" ErrorMessage="Enter valid email address" 
                    ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style32" >
                SecurityQuestion</td>
            <td >
                <asp:TextBox ID="TxtSeqQ" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td style="text-align: left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="TxtSeqQ" ErrorMessage="please enter sequrity question" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style32" >
                SecurityAnswer</td>
            <td >
                <asp:TextBox ID="TxtSeqAns" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="auto-style1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="TxtSeqAns" ErrorMessage="please answer the  security answer" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td >
                &nbsp;</td>
            <td >
                <asp:Button ID="Submit" runat="server" onclick="Submit_Click" Text="Submit" />
&nbsp;&nbsp;&nbsp;&nbsp;
                <input id="Reset1" type="reset" value="Start Over" /></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3" >
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
    </table>
    
</asp:Content>