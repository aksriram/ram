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
    public partial class Accessory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt.Columns.AddRange(new DataColumn[8]
               {
                    new DataColumn("Accessory_code", typeof(string)),
                    new DataColumn("description", typeof(string)),
                    new DataColumn("cost_price", typeof(decimal)),
                    new DataColumn("nett_price", typeof(decimal)),
                    new DataColumn("retail_price", typeof(decimal)),
                    new DataColumn("classification", typeof(string)),
                    new DataColumn("fitted", typeof(string)),
                    new DataColumn("status", typeof(string))
           });

            dt.Rows.Add("AMBULANCE STAREX23", "AMBULANCE CONVERSION FOR STAREX", "11501.00", "0.00", "11501.00", "E", "Local", "Active");


            Gridview_access.DataSource = dt;
            Gridview_access.DataBind();
        }

    }
}