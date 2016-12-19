using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace Auto_Pac.Sales
{
    public partial class Special_PriceList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            DataTable dt = new DataTable();
            dt.Columns.AddRange(new DataColumn[2]
               {
                    new DataColumn("name", typeof(string)),
                     new DataColumn("Value", typeof(string))

           });

            dt.Rows.Add("bbbn");


            GridView3.DataSource = dt;
            GridView3.DataBind();
        }
    }
}