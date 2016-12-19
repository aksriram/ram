using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Auto_Pac.AutoPac
{
    public partial class Home_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt.Columns.AddRange(new DataColumn[7]
               {
                    new DataColumn("Order_number", typeof(string)),
                    new DataColumn("Order_date", typeof(string)),
                    new DataColumn("Buyer_name", typeof(string)),
                    new DataColumn("Sales_consultant", typeof(string)),
                    new DataColumn("Model", typeof(string)),
                     new DataColumn("Colour", typeof(string)),
                    new DataColumn("Remarks", typeof(string)),
                 

           });

            dt.Rows.Add("175528", "07/08/2015", "AQUATIC MANAGER", "SUP", "ELANTRA 1.6 4DR A ELITE", "	SU9", "");
            dt.Rows.Add("175528", "07/08/2015", "AQUATIC MANAGER", "SUP", "ELANTRA 1.6 4DR A ELITE", "	SU9", "");
           
            Gridview_access.DataSource = dt;
            Gridview_access.DataBind();

            DataTable dt1 = new DataTable();
            dt1.Columns.AddRange(new DataColumn[7]
               {
                    new DataColumn("Contract_number", typeof(string)),
                    new DataColumn("Contract_date", typeof(string)),
                    new DataColumn("Buyer_name", typeof(string)),
                    new DataColumn("Sales_consultant", typeof(string)),
                    new DataColumn("Model", typeof(string)),
                     new DataColumn("Colour", typeof(string)),
                    new DataColumn("Convert_date", typeof(string)),


           });

            dt1.Rows.Add("15060013", "07/08/2015", "L POH", "SUP", "ELANTRA 1.6 4DR A ELITE", "	SU9", "23/04/2015");


            Gridview_access1.DataSource = dt1;
            Gridview_access1.DataBind();

           

            DataTable dt2 = new DataTable();
            dt2.Columns.AddRange(new DataColumn[7]
               {
                    new DataColumn("Contract_number", typeof(string)),
                    new DataColumn("Contract_date", typeof(string)),
                    new DataColumn("Buyer_name", typeof(string)),
                    new DataColumn("Sales_consultant", typeof(string)),
                    new DataColumn("Model", typeof(string)),
                     new DataColumn("Colour", typeof(string)),
                    new DataColumn("Convert_date", typeof(string)),


           });

            dt2.Rows.Add("15060013", "07/08/2015", "L POH", "SUP", "ELANTRA 1.6 4DR A ELITE", "	SU9", "23/04/2015");


            Gridview_access2.DataSource = dt2;
            Gridview_access2.DataBind();


            DataTable dt3 = new DataTable();
            dt3.Columns.AddRange(new DataColumn[6]
               {
                    new DataColumn("Contract_number", typeof(string)),
                    new DataColumn("Contract_date", typeof(string)),
                    new DataColumn("Buyer_name", typeof(string)),
                    new DataColumn("Sales_consultant", typeof(string)),
                    new DataColumn("Model", typeof(string)),
                     new DataColumn("Colour", typeof(string)),
                  


           });

            dt3.Rows.Add("15060013", "07/08/2015", "L POH", "SUP", "ELANTRA 1.6 4DR A ELITE", "	SU9");


            Gridview_access3.DataSource = dt3;
            Gridview_access3.DataBind();

            Gridview_access4.DataSource = dt3;
            Gridview_access4.DataBind();

        }
    }
}