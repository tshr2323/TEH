<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>





<asp:Content ID="Content1" ContentPlaceHolderID="contentPlaceHolder1" runat="Server">
    <asp:Login ID="login1" runat="server" Height="249px" Width="115px">
    <LayoutTemplate>
    <br />
    <br />
      <table border="0" cellpadding="1" style="height: 217px; width: 259px; margin-left: 250px">
        <tr class="UserInfoText">
          <td class="style10">
            <table border="0" cellpadding="0">
              <tr>
                <td class="CatalogTitle" align="center" colspan="2">
                    Toronto Electronics Hub Login<br /><br />
                </td>
              </tr>
              <tr>
                <td align="right" class="style37">
                  <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name: </asp:Label></td>
                <td class="style38">
                  <asp:TextBox ID="UserName" runat="server" style="margin-left: 1px" Width="136px"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName"
                    ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                </td>
              </tr>
              <tr>
                <td align="right" class="style39">
                  <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">password:</asp:Label></td>
                <td class="style34">
                  <asp:TextBox ID="Password" runat="server" TextMode="Password" 
                        style="margin-left: 1px" Width="134px"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password"
                    ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                </td>
              </tr>
              <tr><td class="style40"></td></tr>
              <tr><td class="style40"></td></tr>
              <tr>
                <td colspan="2">
                  <asp:CheckBox ID="RememberMe" runat="server" Text="Remember me next time." />
                </td>
              </tr>
              <tr>
                <td align="center" colspan="2" style="color: red">
                  <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                </td>
              </tr>
              <tr>
                <td align="right" colspan="2">
                  <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="Log In" ValidationGroup="Login1" />
                </td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
    </LayoutTemplate>
  </asp:Login>
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .style10
        {
            width: 315px;
        }
        .style15
        {
            width: 158px;
        }
    .style33
    {
        height: 47px;
        text-align: center;
        width: 159px;
    }
    .style34
    {
        width: 291px;
        height: 47px;
    }
    .style36
    {
        width: 159px;
    }
    .style37
    {
        height: 28px;
        text-align: center;
        width: 192px;
    }
    .style38
    {
        width: 291px;
        height: 28px;
    }
        .style39
        {
            height: 47px;
            text-align: center;
            width: 192px;
        }
        .style40
        {
            width: 192px;
        }
    </style>
</asp:Content>


