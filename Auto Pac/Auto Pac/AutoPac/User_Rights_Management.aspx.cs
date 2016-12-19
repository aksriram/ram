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
    public partial class User_Rights_Management : System.Web.UI.Page
    {
        String ConnectionString;
        public User_Rights_Management()
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
                dt.Columns.AddRange(new DataColumn[7] { new DataColumn("Screen ID"), new DataColumn("Screen Name"), new DataColumn("Rights Add"), new DataColumn("Rights Update"), new DataColumn("Rights Delete"), new DataColumn("Rights Print"), new DataColumn("Rights View") });
                dt.Rows.Add("123", "Supercede Report");
                dt.Rows.Add("123", "Stock Hold/Release");
                dt.Rows.Add("123", "COE Secured Report");
                dt.Rows.Add("123", "Vehicle Stock Report");
                dt.Rows.Add("123", "Deposits Report");
                dt.Rows.Add("123", "Car Allocation");
                dt.Rows.Add("123", "COE Allocation");
                dt.Rows.Add("123", "Receipt");
                User_Rights_GridView.DataSource = dt;
                User_Rights_GridView.DataBind();
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
                    if (name == "User Rights Management")
                    {
                        lblpagetitle.Text = name;
                    }
                }
                // txtregdate.Text = ds.Tables[0].Rows[0][0].ToString();

            }
        }

    }
}