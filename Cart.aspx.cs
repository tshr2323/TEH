﻿using System;
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
        conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["projectOfonlineshopConnectionString"].ToString();
        string sqlCmd;
        string s = "<table bgcolor='#CC9900' border='1'style='border: medium groove #C0C0C0; padding: inherit; margin: auto; width: 100%;'>";
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
                        s = s + "<td>" + str[0] + "</td>" + "<td><img  width=34px height=38px src='" + reader["IcoFiles"] + "'/></td><td>" + reader["ItemName"] + "</td>" + "<td>" + reader["Cost"] + "</td>" + "<td>" + str[1] + "</td>";
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
        }
    }
}