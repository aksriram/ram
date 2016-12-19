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
    public partial class Customer_Search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt.Columns.AddRange(new DataColumn[4]
               {
                    new DataColumn("Name_in_nric", typeof(string)),
                    new DataColumn("NRIC_num", typeof(string)),
                    new DataColumn("Register_number", typeof(string)),
                    new DataColumn("Model", typeof(string)),
                    


           });

            dt.Rows.Add("Vishnu", "nric12", "SG111X", "ELANTRA 1.6 4DR A 'S' (MY 2014");


            Gridview_access.DataSource = dt;
            Gridview_access.DataBind();
        }
    }
}