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
    public partial class Booking_Management : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            DataTable dt = new DataTable();
            dt.Columns.AddRange(new DataColumn[8]
               {
                    new DataColumn("exteriorcolour", typeof(string)),
                    new DataColumn("interiorcolour", typeof(string)),
                    new DataColumn("instock", typeof(string)),
                    new DataColumn("eta1", typeof(string)),
                    new DataColumn("eta2", typeof(string)),
                    new DataColumn("eta3", typeof(string)),
                    new DataColumn("eta4", typeof(string)),
                    new DataColumn("eta5", typeof(string)),
           });

            dt.Rows.Add("Yellow", "White", "No-Stock", "", "", "", "", "");


            GridView1.DataSource = dt;
            GridView1.DataBind();

            DataTable dt1 = new DataTable();
            dt1.Columns.AddRange(new DataColumn[4]
               {

                    new DataColumn("active", typeof(string)),
                    new DataColumn("model", typeof(string)),
                    new DataColumn("registrationnumber", typeof(decimal)),
                    new DataColumn("registrationdate", typeof(DateTime)),
           });

            dt1.Rows.Add("Yes", "Accent 1.5A", "123", System.DateTime.Now);


            GridView2.DataSource = dt1;
            GridView2.DataBind();

            DataTable dt2 = new DataTable();
            dt2.Columns.AddRange(new DataColumn[3]
               {

                    new DataColumn("Value6", typeof(string)),
                    new DataColumn("promotionitem", typeof(string)),
                    new DataColumn("price", typeof(decimal)),

           });

            dt2.Rows.Add("Car", "60000");


            GridView3.DataSource = dt2;
            GridView3.DataBind();

            DataTable dt3 = new DataTable();
            dt3.Columns.AddRange(new DataColumn[3]
               {

                    new DataColumn("actionn", typeof(string)),
                    new DataColumn("accessoryitem", typeof(string)),
                    new DataColumn("pricee", typeof(decimal)),

           });

            dt3.Rows.Add("Yes", "Car", "25000");


            GridView4.DataSource = dt3;
            GridView4.DataBind();



            DataTable dt5 = new DataTable();
            dt5.Columns.AddRange(new DataColumn[11]
               {
                    new DataColumn("selected", typeof(string)),
                    new DataColumn("effectivity", typeof(string)),
                    new DataColumn("colour", typeof(string)),
                      new DataColumn("Cash_Discount_Amount", typeof(int)),
                    new DataColumn("finance", typeof(int)),
                    new DataColumn("Loan_Amount", typeof(int)),
                      new DataColumn("Monthly_Installment", typeof(int)),
                    new DataColumn("Trade_Mark", typeof(string)),
                    new DataColumn("Overtrade_Subsidy", typeof(string)),
                     new DataColumn("Created_Date", typeof(DateTime)),
                    new DataColumn("expiry", typeof(DateTime))

           });

            GridView5.DataSource = dt5;
            GridView5.DataBind();


            DataTable dt6 = new DataTable();
            dt6.Columns.AddRange(new DataColumn[8]
               {
                    new DataColumn("Exterior_Colour", typeof(string)),
                    new DataColumn("Interior_Colour", typeof(string)),
                    new DataColumn("In_Stock", typeof(string)),
                      new DataColumn("ETA_1", typeof(int)),
                    new DataColumn("ETA_2", typeof(int)),
                    new DataColumn("ETA_3", typeof(int)),
                      new DataColumn("ETA_4", typeof(int)),
                    new DataColumn("ETA_5", typeof(string))

           });
            GridView6.DataSource = dt6;
            GridView6.DataBind();

            DataTable dt7 = new DataTable();
            dt7.Columns.AddRange(new DataColumn[4]
               {
                    new DataColumn("active", typeof(string)),
                    new DataColumn("model", typeof(string)),
                    new DataColumn("Registration_Number", typeof(string)),
                      new DataColumn("Registration_Date", typeof(int))


           });
            GridView7.DataSource = dt7;
            GridView7.DataBind();

            DataTable dt11 = new DataTable();
            dt11.Columns.AddRange(new DataColumn[3]
               {
                    new DataColumn("Value11", typeof(string)),
                    new DataColumn("accessory_Item", typeof(string)),
                    new DataColumn("price1", typeof(string))
             });
             dt11.Rows.Add("Car", "25000");


            GridView11.DataSource = dt11;
            GridView11.DataBind();

        }
    }
}