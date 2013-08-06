using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Configuration;

public partial class Login4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["New"] = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["projectOfonlineshopConnectionString"].ConnectionString);
        conn.Open();
        string cmdStr = "Select count(*) from Users where UserID='" + TextBox1.Text + "'";
        SqlCommand Checkuser = new SqlCommand(cmdStr, conn);
        int temp = Convert.ToInt32(Checkuser.ExecuteScalar().ToString());

        if (temp == 1)
        {
            string cmdStr2 = "Select Password from Users where UserID='" + TextBox1.Text + "'";
            SqlCommand pass = new SqlCommand(cmdStr2, conn);
            string password = pass.ExecuteScalar().ToString();
            conn.Close();

            if (password == TextBox2.Text)
            {
                Session["New"] = TextBox1.Text;
                Response.Redirect("Default.aspx");
            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "Invalid password";

            }
        }
        else
        {
            Label1.Visible = true;
            Label1.Text = "Invalid UserID";
        }


    }
}