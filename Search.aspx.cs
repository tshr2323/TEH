using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Search : System.Web.UI.Page
{
    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        string[] arguments = e.CommandArgument.ToString().Split(',');
        string id = arguments[0];
        string Quantity = (e.Item.FindControl("Quantity") as TextBox).Text;
        if (Request.Cookies["ShoppingCart"] == null)
        {

            HttpCookie oCookie = new HttpCookie("ShoppingCart");

            oCookie.Expires = DateTime.Now.AddDays(5);

            oCookie.Value = id + "," + Quantity;

            Response.Cookies.Add(oCookie);
        }
        else
        {

            bool bExists = false;

            char[] sep = { ',' };

            HttpCookie oCookie = (HttpCookie)Request.Cookies["ShoppingCart"];

            //Set Cookie to expire in 5 days

            oCookie.Expires = DateTime.Now.AddDays(5);

            //Check if Cookie already contain same item

            string sProdID = oCookie.Value.ToString();

            string[] arrCookie = sProdID.Split(sep);



            for (int i = 0; i < arrCookie.Length; i++)
            {

                if (arrCookie[i].Trim() == id.ToString().Trim())
                {

                    bExists = true;

                }

            }

            if (!bExists)
            {

                if (oCookie.Value.Length == 0)
                {

                    oCookie.Value = id.ToString() + "," + Quantity;

                }

                else
                {

                    oCookie.Value = oCookie.Value + ":" + id + "," + Quantity;

                }

            }
            Response.Cookies.Add(oCookie);
        }

    }
}