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
    public partial class Insurance : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            DataTable dt = new DataTable();
            dt.Columns.AddRange(new DataColumn[5]
               {
                    new DataColumn("Insurance_company", typeof(string)),
                    new DataColumn("Description", typeof(string)),
                    new DataColumn("Address", typeof(string)),
                    new DataColumn("Contact_person", typeof(string)),
                    new DataColumn("Contact_number", typeof(string)),


           });

            dt.Rows.Add("ATT", "Enterprise resource planning", "Aimangala", "Sandeep", "8748975505");


            Gridview_access.DataSource = dt;
            Gridview_access.DataBind();
        }
    }
}