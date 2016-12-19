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
    public partial class Shipment_master : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt.Columns.AddRange(new DataColumn[10]
               {
                    new DataColumn("serial_no", typeof(string)),
                    new DataColumn("model", typeof(string)),
                    new DataColumn("model_code", typeof(string)),
                    new DataColumn("entry_date", typeof(string)),
                    new DataColumn("arrival_date", typeof(string)),
                    new DataColumn("color_code", typeof(string)),
                    new DataColumn("type", typeof(string)),
                    new DataColumn("occ_num", typeof(string)),
                    new DataColumn("interior_code", typeof(string)),
                    new DataColumn("quantity", typeof(string))
           });

            dt.Rows.Add("1", "i40 2.0 GLS WAGON AUTO (S/R)", "DFW52GA1F", "01/01/2014", "15/02/2014", "VR6-RED MERLOT", "METALLIC", "CS74","RY-BLACK","1");


           // GridView1.DataSource = dt;
           // GridView1.DataBind();

           // DataTable dt2 = new DataTable();
           // dt.Columns.AddRange(new DataColumn[9]
           //    {
                   
           //         new DataColumn("smodel", typeof(string)),
           //         new DataColumn("smodel_code", typeof(string)),
           //         new DataColumn("sentry_date", typeof(string)),
           //         new DataColumn("sarrival_date", typeof(string)),
           //         new DataColumn("scolor_code", typeof(string)),
           //         new DataColumn("stype", typeof(string)),
           //         new DataColumn("socc_num", typeof(string)),
           //         new DataColumn("ssinterior_code", typeof(string)),
           //         new DataColumn("squantity", typeof(string))
           //});

           // dt2.Rows.Add("i40 2.0 GLS WAGON AUTO (S/R)", "DFW52GA1F", "01/01/2014", "15/02/2014", "VR6-RED MERLOT", "METALLIC", "CS74", "RY-BLACK", "1");


           // GridView2.DataSource = dt2;
           // GridView2.DataBind();

        }
    }
}