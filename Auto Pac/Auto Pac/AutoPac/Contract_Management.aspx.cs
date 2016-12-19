using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
namespace Auto_Pac.Auto_Pac
{
    public partial class Contract_Management : System.Web.UI.Page
    {
        String ConnectionString;
        public Contract_Management()
        {
            String[] lines = System.IO.File.ReadAllLines(@"C:\QMS\Komoco Config.txt");
            foreach (string line in lines)
            {
                ConnectionString = line;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            Pagetitle();
            DataTable dt = new DataTable();
            dt.Columns.AddRange(new DataColumn[5]
               {
                    new DataColumn("Buyer_ic", typeof(string)),
                    new DataColumn("Contract_number", typeof(string)),
                    new DataColumn("Order_number", typeof(string)),
                    new DataColumn("Buyer_name", typeof(string)),
                    new DataColumn("Register_number", typeof(string)),
                  

           });

            dt.Rows.Add("S6811818B", "16050002", "175504", "TEST CARE12", "SG1234D");


            Gridview_access.DataSource = dt;
            Gridview_access.DataBind();


            DataTable dt1 = new DataTable();
            dt1.Columns.AddRange(new DataColumn[2]
               {
                    new DataColumn("Item", typeof(string)),
                    new DataColumn("Price", typeof(string)),
                   


           });

            dt1.Rows.Add("Admin fee for overtrade", "111.00");


            Gridview_komoco1.DataSource = dt1;       
            Gridview_komoco1.DataBind();
            Gridview_sales1.DataSource = dt1;
            Gridview_sales1.DataBind();
            Gridview_buyer1.DataSource = dt1;
            Gridview_buyer1.DataBind();



            DataTable dt2 = new DataTable();
            dt2.Columns.AddRange(new DataColumn[2]
               {
                    new DataColumn("Item", typeof(string)),
                    new DataColumn("Price", typeof(string)),



           });

            dt2.Rows.Add("3 Years scheduled Preventive Maintenance Service	", "1,476.60");


            Gridview_komoco2.DataSource = dt2;
            Gridview_komoco2.DataBind();
            Gridview_sales2.DataSource = dt2;
            Gridview_sales2.DataBind();
            Gridview_buyer2.DataSource = dt2;
            Gridview_buyer2.DataBind();
        }
        public void Pagetitle()
        {
            DataSet ds = new DataSet();

            try
            {
                SqlConnection con = new SqlConnection(ConnectionString);
                con.Open();
                string sql = "select menu_name from menuMaster";
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.ExecuteNonQuery();

                SqlDataAdapter sda = new SqlDataAdapter();
                sda.SelectCommand = cmd;
                con.Close();
                sda.Fill(ds);
            }
            catch (Exception)
            {

                throw;
            }
            if (ds.Tables[0].Rows.Count > 1)
            {
                foreach (DataRow dr in ds.Tables[0].Rows)
                {
                    string name = dr["menu_name"].ToString();
                    if (name == "Contract Management")
                    {
                        lblpagetitle.Text = name;
                    }
                }
                // txtregdate.Text = ds.Tables[0].Rows[0][0].ToString();

            }
        }
    }
}