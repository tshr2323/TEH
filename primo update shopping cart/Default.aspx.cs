using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    //    if (Session["New"] != null)
    //    {
    //        Label1.Text += Session["New"].ToString();
    //    }
    //    else
    //    {
    //        Response.Redirect("Login.aspx");
    //    }
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
        Response.Redirect("Login.aspx");
    }
}