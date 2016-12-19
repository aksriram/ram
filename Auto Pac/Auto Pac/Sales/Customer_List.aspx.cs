using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Auto_Pac.Sales
{
    public partial class Customer_List : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            DataTable dt = new DataTable();
            dt.Columns.AddRange(new DataColumn[7]
               {
                     new DataColumn("BuyerNo", typeof(int)),
                    new DataColumn("BuyerName", typeof(string)),
                    new DataColumn("Mail", typeof(bool)),
                    new DataColumn("SMS", typeof(bool)),
                    new DataColumn("Phone", typeof(string)),
                    new DataColumn("Email", typeof(string)),
                    new DataColumn("Receive", typeof(string))
           });

            dt.Rows.Add(123, "Jagannath", true, true, "9008149194", "jagan@attsystems.com", "Don't Receive");
            GridView.DataSource = dt;
            GridView.DataBind();
        

    }
    }
}