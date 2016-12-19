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
    public partial class COE_Transfer : System.Web.UI.Page
    {
        String ConnectionString;
        public COE_Transfer()
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
            rbhyundai.Checked = true;
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
                    if (name == "Open Category COE Transfer")
                    {
                        lblpagetitle.Text = name;
                    }
                }
                // txtregdate.Text = ds.Tables[0].Rows[0][0].ToString();

            }
        }

        protected void rbhyundai_CheckedChanged(object sender, EventArgs e)
        {
            if (rbhyundai.Checked == true)
            {
                
                txtmodel.ReadOnly = true;
                txtcolour.ReadOnly = true;
                txtnric.ReadOnly = true;
                txtname.ReadOnly = true;
                txtconsultant.ReadOnly = true;
            }
            else
            {
                
                txtmodel.ReadOnly = false;
                txtcolour.ReadOnly = false;
                txtnric.ReadOnly = false;
                txtname.ReadOnly = false;
                txtconsultant.ReadOnly = false;
            }
        }



       

        protected void select_coe_Click(object sender, EventArgs e)
        {
            selectcoe.Visible = true;
        }

        protected void imgprint_Click(object sender, ImageClickEventArgs e)
        {
            printopt.Visible = true;
        }
    }
}