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
    public partial class Reinstate_Booking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt.Columns.AddRange(new DataColumn[4]
               {
                   new DataColumn("ID", typeof(int)),
                    new DataColumn("Type", typeof(string)),
                    new DataColumn("amount", typeof(string)),
                    new DataColumn("Date", typeof(string)),

           });

            dt.Rows.Add("1", "Cheque", "10000", "12/11/2016");

            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}