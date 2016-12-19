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
    public partial class Model_Specification : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt.Columns.AddRange(new DataColumn[3]
               {
                    new DataColumn("Model_desc", typeof(string)),
                    new DataColumn("Model_Group", typeof(string)),
                    new DataColumn("Model_code", typeof(string)),
                   
           });

            dt.Rows.Add("ELANTRA 1.6 4DRA", "ELANTRA","SDS4D261F");


            Gridview_model.DataSource = dt;
            Gridview_model.DataBind();
        }

    }


}