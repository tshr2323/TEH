using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class ChangePass : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["projectOfonlineshopConnectionString"].ConnectionString);
        conn.Open();

        string username = label_username.Text;
        string password = textBox_Current.Text;
        string newPassword = textBox_New.Text;
        string confirmPassword = textBox_Verify.Text;


        string sqlquery = "UPDATE Users SET Password=@newpass where UserID=@username";
        SqlCommand cmd = new SqlCommand(sqlquery, conn);
        cmd.Parameters.AddWithValue("@newpass", textBox_Verify.Text);
        cmd.Parameters.AddWithValue("@username", label_username.Text);
        cmd.Connection = conn;
        cmd.ExecuteNonQuery();

        SqlDataReader reader = null;
        reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            if ((textBox_New.Text == reader["newPassword"].ToString()) & (textBox_Verify.Text == (reader["confirmPassword"].ToString()))) { }
        }
        Label2.Text = "Password Changed Successfully!";
        conn.Close();
    }
}