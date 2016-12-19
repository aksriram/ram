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
    public partial class Master_Colour : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            DataTable dt = new DataTable();
            dt.Columns.AddRange(new DataColumn[8]
               {
                    new DataColumn("Model_id", typeof(string)),
                    new DataColumn("Model_Group", typeof(string)),
                    new DataColumn("Model_Type", typeof(string)),
                    new DataColumn("Exterior_Color", typeof(string)),
                    new DataColumn("Description", typeof(string)),
                    new DataColumn("Remarks", typeof(string)),
                    new DataColumn("Interior_Color", typeof(string)),
                    new DataColumn("Display", typeof(decimal)),
           });

            dt.Rows.Add("ACC3-001", "ACCENT", "SOLID", "EB", "EBONY BLACK", "Good", "WK/FZ", 1);


            Gridview_color.DataSource = dt;
            Gridview_color.DataBind();
        }
    }
}
     