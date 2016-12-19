using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace Auto_Pac.AutoPac
{
    public partial class Receipt : System.Web.UI.Page
    {
        String ConnectionString;
        public Receipt()
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
            dt.Columns.AddRange(new DataColumn[11]
               {
                    new DataColumn("Contract_number", typeof(string)),
                    new DataColumn("Order_number", typeof(string)),
                    new DataColumn("Receipt_number", typeof(string)),
                    new DataColumn("Invoice_number", typeof(string)),
                    new DataColumn("Receipt_date", typeof(string)),
                   new DataColumn("Buyer_NRIC", typeof(string)),
                   new DataColumn("Buyer_name", typeof(string)),
                   new DataColumn("Payment_type", typeof(string)),
                   new DataColumn("Amount", typeof(string)),
                   new DataColumn("Status", typeof(string)),
                   new DataColumn("Description", typeof(string)),

           });

            dt.Rows.Add("15060010", "175477", "	217448", "", "19/11/2016", "198327111I", "GBO DESIGN WORKSHOP", "	Customer", "10000", "Banked", "Deposit ");


            Gridview_access.DataSource = dt;
            Gridview_access.DataBind();
        }

        protected void img_andpr_Click(object sender, ImageClickEventArgs e)
        {
            img_andpr.Visible = false;
            imgupdate.Visible = true;
            imgprint.Visible = true;
            Gridview_access.Visible = true;
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
                    if (name == "Receipt")
                    {
                        lblpagetitle.Text = name;
                    }
                }
                // txtregdate.Text = ds.Tables[0].Rows[0][0].ToString();

            }
        }

    }
}