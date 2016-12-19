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
    public partial class FOB_Invoice_Price : System.Web.UI.Page
    {
        String ConnectionString;
        public FOB_Invoice_Price()
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
            dt.Columns.AddRange(new DataColumn[6]
               {
                    new DataColumn("model", typeof(string)),
                    new DataColumn("color", typeof(string)),
                    new DataColumn("unit", typeof(string)),
                    new DataColumn("rate", typeof(string)),
                    new DataColumn("us", typeof(string)),
                    new DataColumn("freight", typeof(string)),
                  
           });

            dt.Rows.Add("STAREX 2.5 A 3 SEATER (TWIN SWING)", "YAC", "1", "", "", "");


            GridView_invoice.DataSource = dt;
            GridView_invoice.DataBind();

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
                    if (name == "FOB Invoice Price")
                    {
                        lblpagetitle.Text = name;
                    }
                }
                // txtregdate.Text = ds.Tables[0].Rows[0][0].ToString();

            }
        }


    }
}