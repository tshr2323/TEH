<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UserInfo.ascx.cs" Inherits="UserInfo" %>
<table cellspacing="0" border="0" class="UserInfo" style="width: 196px">
 <tr>
    <td class="UserInfoHead">
      User Info</td>
  </tr>
      <tr>
        <td>
          <span class="UserInfoText">You are not logged in.</span>
        </td>
      </tr>
          <tr>
            <td>
      
  <asp:LoginView ID="LoginView1" runat="server">
    <AnonymousTemplate>
        <asp:LoginStatus ID="LoginStatus1" runat="server" CssClass="UserInfoLink" 
            LogoutAction="Redirect" LogoutPageUrl="~/Login.aspx" />
    </AnonymousTemplate>
    <RoleGroups>
      <asp:RoleGroup Roles="Administrators">
        <ContentTemplate>
              <asp:LoginName ID="LoginName2" runat="server" FormatString="You are logged in as <b>{0}</b>. "
                CssClass="UserInfoText" />         
        </ContentTemplate>
      </asp:RoleGroup>
    </RoleGroups>
  </asp:LoginView>

    </td>
    </tr>
</table>

