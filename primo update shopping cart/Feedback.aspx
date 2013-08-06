<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style34
    {
        text-align: right;
    }
        .style35
        {
            text-align: right;
            width: 149px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
      <form action="yeyekaw@gmail.com" method="post" name="htmlform">
    <table width="450px">
        <tr>
            <td valign="top" class="style35">
                <label for="first_name">
                First Name </label>&nbsp;</td>
            <td valign="top" class="style34">
                <input maxlength="50" name="first_name" size="30" type="text" 
                    style="width: 259px" />
            </td>
        </tr>
        <tr>
            <td valign="top" class="style35">
                <label for="last_name">
                Last Name </label>&nbsp;</td>
            <td valign="top" class="style34">
                <input maxlength="50" name="last_name" size="30" type="text" 
                    style="width: 260px" />
            </td>
        </tr>
        <tr>
            <td valign="top" class="style35">
                <label for="email">
                Email Address </label>&nbsp;</td>
            <td valign="top" class="style34">
                <input maxlength="80" name="email" size="30" type="text" style="width: 261px" />
            </td>
        </tr>
        <tr>
            <td valign="top" class="style35">
                <label for="telephone">
                Telephone Number</label>
            </td>
            <td valign="top" class="style34">
                <input maxlength="30" name="telephone" size="30" type="text" 
                    style="width: 263px" />
            </td>
        </tr>
        <tr>
            <td valign="top" class="style35">
                <label for="comments">
                Comments </label>
&nbsp;</td>
            <td valign="top" class="style34">
                <textarea maxlength="1000" name="comments" rows="6" style="width: 260px"></textarea>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="style34">
                &nbsp;<input type="submit" value="Submit" style="width: 100px" /></td>
        </tr>
    </table>
    </form></p>
</asp:Content>

