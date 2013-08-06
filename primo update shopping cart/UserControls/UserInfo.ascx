<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UserInfo.ascx.cs" Inherits="UserInfo" %>

    Users Information
    <asp:LoginStatus ID="LoginStatus1" runat="server" />
    <br />
&nbsp; <asp:LoginView ID="LoginView1" runat="server">
    <AnonymousTemplate>
        Hello! You are not logged in
        <asp:HyperLink ID="HyperLink4" runat="server" 
            NavigateUrl="~/RecoverPassword.aspx"><br />Forgot your password?</asp:HyperLink>
        &nbsp;
    </AnonymousTemplate>
    <LoggedInTemplate>
        You are logged in. Welcome,&nbsp;<asp:LoginName ID="LoginName2" 
            runat="server" />
        &nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink1" runat="server" 
            NavigateUrl="~/MemberPages/Members.aspx">Members-only<br /></asp:HyperLink>
      
        <asp:HyperLink ID="HyperLink3" runat="server" 
            NavigateUrl="~/MemberPages/ChangePassword.aspx">Change password</asp:HyperLink>
        &nbsp;&nbsp;
    </LoggedInTemplate>
</asp:LoginView>