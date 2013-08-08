using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Web.Security;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //string str = Session["New"].ToString();
        //if (str == null || str == "")
        //{
        //    Response.Redirect("Login.aspx");
        //}

        if (User.Identity.IsAuthenticated)
        {
            LinkButton1.Visible = true;
            HyperLink9.Visible = true;
        }
    //}
    //protected void LoginView1_ViewChanged(object sender, EventArgs e)
    //{

    //}
    //protected void Button2_Click(object sender, EventArgs e)
    //{
    //    Session["New"] = null;
    //    Response.Redirect("Login.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["New"] = null;
        FormsAuthentication.SignOut();
        Response.Redirect("Login.aspx");
    }
}