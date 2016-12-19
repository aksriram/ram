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
    public partial class Colors_by_model : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt.Columns.AddRange(new DataColumn[9]
               {
                    new DataColumn("Model", typeof(string)),
                    new DataColumn("Model_code", typeof(string)),
                    new DataColumn("OCC_number", typeof(string)),
                    new DataColumn("Model_group", typeof(string)),
                    new DataColumn("Exterior_colour_code", typeof(string)),
                    new DataColumn("Exterior_colour_description", typeof(string)),
                    new DataColumn("Exterior_type", typeof(string)),
                    new DataColumn("Interior_colour_code", typeof(string)),
                    new DataColumn("Interior_colour_description", typeof(string)),

           });

            dt.Rows.Add("Accent 1.5A", "BAFGP38", "A290","AVANTE","2B","SKY BULE","METALLIC","AR","BEIGE");


            Gridview_access.DataSource = dt;
            Gridview_access.DataBind();
        }
    }
}