<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>

<script runat="server">

    protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
    {

    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div class="Account">
    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" Width="390px" 
           oncreateduser="CreateUserWizard1_CreatedUser">
    <WizardSteps>
        <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server" >
            <ContentTemplate>
                <table style="background-color:#FFFBD6;font-family:Verdana;font-size:100%;width:390px;" 
                    bgcolor="White">
                    <tr>
                        <td align="center" colspan="2" 
                            style="color:White;background-color:#CCFF66;font-weight:bold;">
                            Sign Up for Your New Account</td>
                    </tr>
                    <tr>
                        <td align="right" bgcolor="White">
                            <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User ID:</asp:Label>
                        </td>
                        <td bgcolor="White">
                            <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                ControlToValidate="UserName" ErrorMessage="User Name is required." 
                                ToolTip="User Name is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" bgcolor="White">
                            <asp:Label ID="Label2" runat="server" AssociatedControlID="UserName">First Name:</asp:Label>
                        </td>
                        <td bgcolor="White">
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="UserName" ErrorMessage="User Name is required." 
                                ToolTip="User Name is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                    <td align="right" bgcolor="White">
                            <asp:Label ID="Label1" runat="server" AssociatedControlID="UserName">Last Name:</asp:Label>
                        </td>
                        <td bgcolor="White">
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="UserName" ErrorMessage="User Name is required." 
                                ToolTip="User Name is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                        </td>
                        </tr>
                    <tr>
                        <td align="right" bgcolor="White">
                            <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                        </td>
                        <td bgcolor="White">
                            <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                                ControlToValidate="Password" ErrorMessage="Password is required." 
                                ToolTip="Password is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" bgcolor="White">
                            <asp:Label ID="ConfirmPasswordLabel" runat="server" 
                                AssociatedControlID="ConfirmPassword">Confirm Password:</asp:Label>
                        </td>
                        <td bgcolor="White">
                            <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" 
                                ControlToValidate="ConfirmPassword" 
                                ErrorMessage="Confirm Password is required." 
                                ToolTip="Confirm Password is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" bgcolor="White">
                            Contact No:</td>
                        <td bgcolor="White">
                            <asp:TextBox ID="ConfirmPassword0" runat="server" style="text-align: center" 
                                TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" bgcolor="White">
                            <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">E-mail:</asp:Label>
                        </td>
                        <td bgcolor="White">
                            <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="EmailRequired" runat="server" 
                                ControlToValidate="Email" ErrorMessage="E-mail is required." 
                                ToolTip="E-mail is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" bgcolor="White">
                            <asp:Label ID="QuestionLabel" runat="server" AssociatedControlID="Question">Security Question:</asp:Label>
                        </td>
                        <td bgcolor="White">
                            <asp:TextBox ID="Question" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="QuestionRequired" runat="server" 
                                ControlToValidate="Question" ErrorMessage="Security question is required." 
                                ToolTip="Security question is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" bgcolor="White">
                            <asp:Label ID="AnswerLabel" runat="server" AssociatedControlID="Answer">Security Answer:</asp:Label>
                        </td>
                        <td bgcolor="White">
                            <asp:TextBox ID="Answer" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="AnswerRequired" runat="server" 
                                ControlToValidate="Answer" ErrorMessage="Security answer is required." 
                                ToolTip="Security answer is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2" bgcolor="White">
                            <asp:CompareValidator ID="PasswordCompare" runat="server" 
                                ControlToCompare="Password" ControlToValidate="ConfirmPassword" 
                                Display="Dynamic" 
                                ErrorMessage="The Password and Confirmation Password must match." 
                                ValidationGroup="CreateUserWizard1"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2" style="color:Red;" bgcolor="White">
                            <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>
                        </td>
                    </tr>
                </table>
            </ContentTemplate>
        </asp:CreateUserWizardStep>
        <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server" />
    </WizardSteps>
</asp:CreateUserWizard>
</div></p>
</asp:Content>

