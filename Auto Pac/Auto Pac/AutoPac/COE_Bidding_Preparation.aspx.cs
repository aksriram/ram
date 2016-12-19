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
    public partial class COE_Bidding_Preparation : System.Web.UI.Page
    {
        String ConnectionString;
        public COE_Bidding_Preparation()
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
            txtscont_num.ReadOnly = false;
            txtecont_num.ReadOnly = false;
            txtfrom_date.ReadOnly = true;
            txtto_date.ReadOnly = true;
            txtorder_num.ReadOnly = true;

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
                    if (name == "COE Bidding Preparation")
                    {
                        lblpagetitle.Text = name;
                    }
                }
                // txtregdate.Text = ds.Tables[0].Rows[0][0].ToString();

            }
        }
        public void rbwithcont_CheckedChanged(object sender, EventArgs e)
        {
            if (rbwithcont.Checked == true)
            {
                txtscont_num.ReadOnly = false;
                txtecont_num.ReadOnly = false;
                txtfrom_date.ReadOnly = true;
                txtto_date.ReadOnly = true;
                txtorder_num.ReadOnly = true;

            }
           

        }

        protected void rborder_date_CheckedChanged(object sender, EventArgs e)
        {
            if (rborder_date.Checked == true)
            {
                txtscont_num.ReadOnly = true;
                txtecont_num.ReadOnly = true;
                txtfrom_date.ReadOnly = false;
                txtto_date.ReadOnly = false;
                txtorder_num.ReadOnly = true;
            }
        }

        protected void rborder_num_CheckedChanged(object sender, EventArgs e)
        {
            if (rborder_num.Checked == true)
            {
                txtscont_num.ReadOnly = true;
                txtecont_num.ReadOnly = true;
                txtfrom_date.ReadOnly = true;
                txtto_date.ReadOnly = true;
                txtorder_num.ReadOnly = false;
            }
        }
    }
}