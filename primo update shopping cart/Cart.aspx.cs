using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class Cart : System.Web.UI.Page
{
    protected void Label1_Load(object sender, EventArgs e)
     {
        int i;
        SqlConnection conn = new SqlConnection();
        double total=0;
        conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["projectOfonlineshopConnectionString"].ToString();
        string sqlCmd;
        string s = "<table  style='border-style: double; border-width: medium; padding: inherit; margin: inherit; width: 100%;'>";
        s = s + "<tr><td>Item ID</td><td>Prodct Ico</td><td>Product Name</td><td>Price</td><td>Item Quantity</td><td>Drop</td></tr>";
        if (Request.Cookies["ShoppingCart"] != null)
        {
            string[] pt = Request.Cookies["ShoppingCart"].Value.Split(':');
            for (i = 0; i < pt.Length; i++)
            {
                s = s + "<tr>";
                string[] str = pt[i].Split(',');
                if (str[0].Trim() != "")
                {
                    sqlCmd = "select * from Products where ItemID=" + str[0];
                    SqlCommand cmd = new SqlCommand(sqlCmd, conn);
                    conn.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    if (reader.Read())
                    {
                        if (Convert.ToInt32(str[1]) > Convert.ToInt32(reader["Quantity"]))
                        {
                            str[1] = str[1] + " is overload Max-value(" + reader["Quantity"] + ")";
                        }
                        else
                        {
                            total = total + Convert.ToDouble(reader["Cost"].ToString()) * Convert.ToInt32(str[1]);
                        }
                        s = s + "<td>" + (Convert.ToInt32(str[0])+1).ToString() + "</td>" + "<td><img  width=34px height=38px src='" + reader["IcoFiles"] + "'/></td><td>" + reader["ItemName"] + "</td>" + "<td>" + reader["Cost"] + "</td>" + "<td>" + str[1] + "</td>";
                        s = s + "<td><input id='" + i.ToString() + "' type='button' value='DELETE' onclick='Remove(" + i.ToString() + ")' /></td></tr>";
                    }
                    conn.Close();
                }
            }
            if (Request.Cookies["ShoppingCart"].Value != "")
            {
                if (Session["New"]!=null)
                {
                    if (Session["New"].ToString() != "")
                    {
                        sqlCmd = "select * from Users where UserID='" + Session["New"].ToString()+"'";
                        SqlCommand cmd = new SqlCommand(sqlCmd, conn);
                        conn.Open();
                        SqlDataReader reader = cmd.ExecuteReader();
                        if (reader.Read())
                        {
                            this.Adress.Text = reader["ContactNo"].ToString();
                            this.Name.Text = reader["FirstName"].ToString() + " " +reader["LastName"].ToString();
                            this.Total.Text = "$"+total.ToString();
                        }
                    }
                }
                this.Label1.Controls.Add(Page.ParseControl(s.ToString() + "</table>"));
            }
            else
            {
                this.Label1.Text = "No Item";
                cl_list();
            }
        }
    }
    public void cl_list()
    {
        this.Adress.Text = "None";
        this.Name.Text = "None";
        this.Total.Text = "None";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        /*int i;
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["projectOfonlineshopConnectionString"].ToString();
        string sqlCmd="";
        if (Request.Cookies["ShoppingCart"] != null)
        {
            string[] pt = Request.Cookies["ShoppingCart"].Value.Split(':');
            sqlCmd = "INSERT into Orders(CustomerID, CartID, OrderDate, ShippedDate, ShipVia, TotalCost, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)";
            for (i = 0; i < pt.Length; i++)
            {
                string[] str = pt[i].Split(',');
                if (str[0].Trim() != "")
                {

                    sqlCmd = "select * from Products where ItemID=" + str[0];
                    SqlCommand cmd = new SqlCommand(sqlCmd, conn);
                    conn.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    if (reader.Read())
                    {
                        if (Convert.ToInt32(str[1]) > Convert.ToInt32(reader["Quantity"]))
                        {
                            str[1] = str[1] + " is overload Max-value(" + reader["Quantity"] + ")";
                        }
                        s = s + "<td>" + (Convert.ToInt32(str[0]) + 1).ToString() + "</td>" + "<td><img  width=34px height=38px src='" + reader["IcoFiles"] + "'/></td><td>" + reader["ItemName"] + "</td>" + "<td>" + reader["Cost"] + "</td>" + "<td>" + str[1] + "</td>";
                        s = s + "<td><input id='" + i.ToString() + "' type='button' value='DELETE' onclick='Remove(" + i.ToString() + ")' /></td></tr>";
                    }
                    conn.Close();
                }
            }
            if (Request.Cookies["ShoppingCart"].Value != "")
            {
                this.Label1.Controls.Add(Page.ParseControl(s.ToString() + "</table>"));
            }
            else
            {
                this.Label1.Text = "No Item";
            }
        }*/
        Response.Redirect("mail_info.aspx");
    }
}