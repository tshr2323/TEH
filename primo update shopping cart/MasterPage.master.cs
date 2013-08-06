using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["New"] != null)
            {
                Label1.Text = "Welcome,  " + Session["New"];
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }
    }
     protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
     {
        Response.Redirect("~/Default.Aspx");
     }
     protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
     {

     }
     protected void Button1_Click(object sender, EventArgs e)
     {

         Response.Redirect("~/Search.aspx?Name=" + TextBox1.Text +"%");
     }
}

