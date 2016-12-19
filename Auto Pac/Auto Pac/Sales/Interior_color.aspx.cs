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
    public partial class Interior_color : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt.Columns.AddRange(new DataColumn[3]
               {
                    new DataColumn("Model_Group", typeof(string)),
                    new DataColumn("Interior_colour_code", typeof(string)),
                    new DataColumn("Description", typeof(string)),
                    
           });

            dt.Rows.Add("Accent", "AR", "BEIGE");


            Gridview_access.DataSource = dt;
            Gridview_access.DataBind();
        }

    }
}
    
