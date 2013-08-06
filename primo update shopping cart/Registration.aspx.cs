using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["projectOfonlineshopConnectionString"].ConnectionString);
            conn.Open();
            string cmdStr = "Select count(*) from Users where UserID='" + TxtUser.Text + "'";
            SqlCommand userExist = new SqlCommand(cmdStr, conn);
            int temp = Convert.ToInt32(userExist.ExecuteScalar().ToString());
            conn.Close();
            if (temp == 1)
            {
                Label2.Text = "Your name is already Exist...!!<br /> Please choose another user name";
            }
        }

    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["projectOfonlineshopConnectionString"].ConnectionString);
        conn.Open();
        string insCmd = "insert into Users (UserID, FirstName, LastName, Password, ContactNo, Eamil, SecurityQ, SecurityA) values (@UserID, @FirstName, @LastName, @Password, @ContactNo, @Eamil, @SecurityQ, @SecurityA)";
        SqlCommand insertUser = new SqlCommand(insCmd, conn);
        insertUser.Parameters.AddWithValue("@UserID", TxtUser.Text);
        insertUser.Parameters.AddWithValue("@FirstName", TxtFN.Text);
        insertUser.Parameters.AddWithValue("@LastName", TxtLN.Text);
        insertUser.Parameters.AddWithValue("@Password", TxtPass.Text);
        insertUser.Parameters.AddWithValue("@ContactNo", TxtContact.Text);
        insertUser.Parameters.AddWithValue("@Eamil", TxtEmail.Text);
        insertUser.Parameters.AddWithValue("@SecurityQ", TxtSeqQ.Text);
        insertUser.Parameters.AddWithValue("@SecurityA", TxtSeqAns.Text);

        try
        {
            insertUser.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("Default.aspx");

        }
        catch (Exception er)
        {
            //Response.Write("please try again");
        }
        finally
        {
            //
        }
    }
}