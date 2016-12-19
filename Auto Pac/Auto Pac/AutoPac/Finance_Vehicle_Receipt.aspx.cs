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
    public partial class Finance_Vehicle_Receipt : System.Web.UI.Page
    {
        String ConnectionString;
        public Finance_Vehicle_Receipt()
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
            if (!this.IsPostBack)
            {
                DataTable dt = new DataTable();
                dt.Columns.AddRange(new DataColumn[6] { new DataColumn("Contract No."), new DataColumn("Invoice No."), new DataColumn("Register No."), new DataColumn("Customer Name"), new DataColumn("Invoice Amt."), new DataColumn("Loan Amt.") });
                dt.Rows.Add("9731121582", "124556", "SG1234D", "1", "58500", "58500");
                dt.Rows.Add("9733321582", "789456", "SG4564D", "2", "12345", "123456");
                Gridview_access.DataSource = dt;
                Gridview_access.DataBind();
                dt.Rows.Clear();
            }
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
                    if (name == "Finance Vehicle Receipt")
                    {
                        lblpagetitle.Text = name;
                    }
                }
                // txtregdate.Text = ds.Tables[0].Rows[0][0].ToString();

            }
        }


    }
}