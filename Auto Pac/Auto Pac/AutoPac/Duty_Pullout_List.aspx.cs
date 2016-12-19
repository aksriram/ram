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
    public partial class Duty_Pullout_List : System.Web.UI.Page
    {
        String ConnectionString;
        public Duty_Pullout_List()
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
            dt.Columns.AddRange(new DataColumn[10]
               {
                    new DataColumn("Duty_paid", typeof(string)),
                    new DataColumn("Model", typeof(string)),
                    new DataColumn("Colour", typeof(string)),
                    new DataColumn("VIN_number", typeof(string)),
                    new DataColumn("ETA_date", typeof(string)),
                   new DataColumn("Car_type", typeof(string)),
                   new DataColumn("Buyer_name", typeof(string)),
                   new DataColumn("Contract_number", typeof(string)),
                   new DataColumn("Sales_consultant", typeof(string)),
                   new DataColumn("Stock_status", typeof(string)),
                  

           });

            dt.Rows.Add("Y", "	ELANTRA 1.6 4DR A S", "N3S", "NMAC030", "14/12/2013", "'NC", "Alexander Test Drive 15/1", "14020006", "	GNE", "A");

            
            Gridview_access.DataSource = dt;
            Gridview_access.DataBind();
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
                    if (name == "Duty Pullout List(Hyndai Cars)")
                    {
                        lblpagetitle.Text = name;
                    }
                }
                // txtregdate.Text = ds.Tables[0].Rows[0][0].ToString();

            }
        }


    }
}