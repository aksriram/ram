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
    public partial class Customer_Enquiry : System.Web.UI.Page
    {
        public SqlConnection con;
        public SqlCommand cmd;
        public SqlDataAdapter da;
        public DataSet ds;
        public DataTable dt;
        String ConnectionString;
        public Customer_Enquiry()
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
            if(!IsPostBack)
            {
                     rd_name.Checked = true;
                    txt_name.ReadOnly = false;
                    txt_nric.ReadOnly = true;
                    txt_ordnum.ReadOnly = true;
                    txt_regnum.ReadOnly = true;
                    txt_invoice.ReadOnly = true;
                    txt_engine.ReadOnly = true;
                    txt_chassis.ReadOnly = true;
                
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
                    if (name == "Customer Enquiry")
                    {
                        lblpagetitle.Text = name;
                    }
                }
                // txtregdate.Text = ds.Tables[0].Rows[0][0].ToString();

            }
        }


        protected void rd_name_CheckedChanged(object sender, EventArgs e)
        {
            if (rd_name.Checked == true)
            {
                cleartext();
                txt_name.ReadOnly= false;
                txt_nric.ReadOnly = true;
                txt_ordnum.ReadOnly = true;
                txt_regnum.ReadOnly = true;
                txt_invoice.ReadOnly = true;
                txt_engine.ReadOnly = true;
                txt_chassis.ReadOnly = true;
            }
        }

        protected void rd_nric_CheckedChanged(object sender, EventArgs e)
        {
            if (rd_nric.Checked == true)
            {
                cleartext();
                txt_name.ReadOnly = true;
                txt_nric.ReadOnly = false;
                txt_ordnum.ReadOnly = true;
                txt_regnum.ReadOnly = true;
                txt_invoice.ReadOnly = true;
                txt_engine.ReadOnly = true;
                txt_chassis.ReadOnly = true;
            }
        }

        protected void rd_ordnum_CheckedChanged(object sender, EventArgs e)
        {
            if (rd_ordnum.Checked == true)
            {
                cleartext();
                txt_name.ReadOnly = true;
                txt_nric.ReadOnly = true;
                txt_ordnum.ReadOnly = false;
                txt_regnum.ReadOnly = true;
                txt_invoice.ReadOnly = true;
                txt_engine.ReadOnly = true;
                txt_chassis.ReadOnly = true;
            }
        }

        protected void rd_regnum_CheckedChanged(object sender, EventArgs e)
        {
            if (rd_regnum.Checked == true)
            {
                cleartext();
                txt_name.ReadOnly = true;
                txt_nric.ReadOnly = true;
                txt_ordnum.ReadOnly = true;
                txt_regnum.ReadOnly = false;
                txt_invoice.ReadOnly = true;
                txt_engine.ReadOnly = true;
                txt_chassis.ReadOnly = true;
            }
        }

        protected void rd_invoice_CheckedChanged(object sender, EventArgs e)
        {
            if (rd_invoice.Checked == true)
            {
                cleartext();
                txt_name.ReadOnly = true;
                txt_nric.ReadOnly = true;
                txt_ordnum.ReadOnly = true;
                txt_regnum.ReadOnly = true;
                txt_invoice.ReadOnly = false;
                txt_engine.ReadOnly = true;
                txt_chassis.ReadOnly = true;
            }
        }

        protected void rd_engine_CheckedChanged(object sender, EventArgs e)
        {
            if (rd_engine.Checked == true)
            {
                cleartext();
                txt_name.ReadOnly = true;
                txt_nric.ReadOnly = true;
                txt_ordnum.ReadOnly = true;
                txt_regnum.ReadOnly = true;
                txt_invoice.ReadOnly = true;
                txt_engine.ReadOnly = false;
                txt_chassis.ReadOnly = true;
            }
        }

        protected void rd_chassis_CheckedChanged(object sender, EventArgs e)
        {
            if (rd_chassis.Checked == true)
            {
                cleartext();
                txt_name.ReadOnly = true;
                txt_nric.ReadOnly = true;
                txt_ordnum.ReadOnly = true;
                txt_regnum.ReadOnly = true;
                txt_invoice.ReadOnly = true;
                txt_engine.ReadOnly = true;
                txt_chassis.ReadOnly = false;
            }
        }

        public void cleartext()
        {
            txt_name.Text = "";
            txt_nric.Text = "";
            txt_ordnum.Text = "";
            txt_regnum.Text = "";
            txt_invoice.Text = "";
            txt_engine.Text = "";
            txt_chassis.Text = "";

        }

        protected void Img_clear_Click(object sender, ImageClickEventArgs e)
        {
            cleartext();
        }

        protected void Img_search_Click(object sender, ImageClickEventArgs e)
        {
            
            SqlConnection con = new SqlConnection(ConnectionString);
            DataTable datatbl = new DataTable();
            DataSet ds = new DataSet();
            SqlDataAdapter sqlad = new SqlDataAdapter();
            if (rd_name.Checked == true)
            {
                if(txt_name.Text != "" )
                {
                    try
                    {
                       
                        con.Open();
                        string sql = "SELECT Buyer_orderno,ContractNo,BuyyersName,Buyer_nric,RegistrationNum,invoice_num,salesmancode,case_num,engine_num,chasis_num,Model FROM tbl_salescontract WHERE BuyyersName=@name";
                        cmd = new SqlCommand(sql, con);
                        cmd.Parameters.AddWithValue("@name", txt_name.Text);
                        sqlad.SelectCommand = cmd;
                        cmd.ExecuteNonQuery();
                        sqlad.Fill(ds);
                       
                        Gridview_customer.DataSource = ds.Tables[0];
                        Gridview_customer.DataBind();
                    }
                    catch(Exception ex)
                    {
                        throw ex;
                    }
                    finally
                    {
                        con.Close();
                    }
                 
                }
            }
            else if (rd_nric.Checked == true)
            {
                if (txt_nric.Text != "")
                {
                    try
                    {

                        con.Open();
                        string sql = "SELECT Buyer_orderno,ContractNo,BuyyersName,Buyer_nric,RegistrationNum,invoice_num,salesmancode,case_num,engine_num,chasis_num,Model FROM tbl_salescontract WHERE Buyer_nric=@nric";
                        cmd = new SqlCommand(sql, con);
                        cmd.Parameters.AddWithValue("@nric", txt_nric.Text);
                        sqlad.SelectCommand = cmd;
                        cmd.ExecuteNonQuery();
                        sqlad.Fill(ds);

                        Gridview_customer.DataSource = ds.Tables[0];
                        Gridview_customer.DataBind();
                    }
                    catch (Exception ex)
                    {
                        throw ex;
                    }
                    finally
                    {
                        con.Close();
                    }
                }
            }
            else if (rd_ordnum.Checked == true)
            {
                if (txt_ordnum.Text != "")
                {
                    try
                    {

                        con.Open();
                        string sql = "SELECT Buyer_orderno,ContractNo,BuyyersName,Buyer_nric,RegistrationNum,invoice_num,salesmancode,case_num,engine_num,chasis_num,Model FROM tbl_salescontract WHERE Buyer_orderno=@ordernum";
                        cmd = new SqlCommand(sql, con);
                        cmd.Parameters.AddWithValue("@ordernum", txt_ordnum.Text);
                        sqlad.SelectCommand = cmd;
                        cmd.ExecuteNonQuery();
                        sqlad.Fill(ds);

                        Gridview_customer.DataSource = ds.Tables[0];
                        Gridview_customer.DataBind();
                    }
                    catch (Exception ex)
                    {
                        throw ex;
                    }
                    finally
                    {
                        con.Close();
                    }
                }
            }
            else if (rd_regnum.Checked == true)
            {
                if (txt_regnum.Text != "")
                {
                    try
                    {

                        con.Open();
                        string sql = "SELECT Buyer_orderno,ContractNo,BuyyersName,Buyer_nric,RegistrationNum,invoice_num,salesmancode,case_num,engine_num,chasis_num,Model FROM tbl_salescontract WHERE RegistrationNum=@regnum";
                        cmd = new SqlCommand(sql, con);
                        cmd.Parameters.AddWithValue("@regnum", txt_regnum.Text);
                        sqlad.SelectCommand = cmd;
                        cmd.ExecuteNonQuery();
                        sqlad.Fill(ds);

                        Gridview_customer.DataSource = ds.Tables[0];
                        Gridview_customer.DataBind();
                    }
                    catch (Exception ex)
                    {
                        throw ex;
                    }
                    finally
                    {
                        con.Close();
                    }
                }
            }
            else if (rd_invoice.Checked == true)
            {
                if (txt_invoice.Text != "")
                {
                    try
                    {

                        con.Open();
                        string sql = "SELECT Buyer_orderno,ContractNo,BuyyersName,Buyer_nric,RegistrationNum,invoice_num,salesmancode,case_num,engine_num,chasis_num,Model FROM tbl_salescontract WHERE invoice_num=@invoice";
                        cmd = new SqlCommand(sql, con);
                        cmd.Parameters.AddWithValue("@invoice",txt_invoice.Text);
                        sqlad.SelectCommand = cmd;
                        cmd.ExecuteNonQuery();
                        sqlad.Fill(ds);

                        Gridview_customer.DataSource = ds.Tables[0];
                        Gridview_customer.DataBind();
                    }
                    catch (Exception ex)
                    {
                        throw ex;
                    }
                    finally
                    {
                        con.Close();
                    }
                }
            }
            else if (rd_engine.Checked == true)
            {
                if (txt_engine.Text != "")
                {
                    try
                    {

                        con.Open();
                        string sql = "SELECT Buyer_orderno,ContractNo,BuyyersName,Buyer_nric,RegistrationNum,invoice_num,salesmancode,case_num,engine_num,chasis_num,Model FROM tbl_salescontract WHERE engine_num=@engine";
                        cmd = new SqlCommand(sql, con);
                        cmd.Parameters.AddWithValue("@engine", txt_engine.Text);
                        sqlad.SelectCommand = cmd;
                        cmd.ExecuteNonQuery();
                        sqlad.Fill(ds);

                        Gridview_customer.DataSource = ds.Tables[0];
                        Gridview_customer.DataBind();
                    }
                    catch (Exception ex)
                    {
                        throw ex;
                    }
                    finally
                    {
                        con.Close();
                    }
                }
            }
            else if (rd_chassis.Checked == true)
            {
                if (txt_chassis.Text != "")
                {
                    try
                    {

                        con.Open();
                        string sql = "SELECT Buyer_orderno,ContractNo,BuyyersName,Buyer_nric,RegistrationNum,invoice_num,salesmancode,case_num,engine_num,chasis_num,Model FROM tbl_salescontract WHERE chasis_num=@chasis";
                        cmd = new SqlCommand(sql, con);
                        cmd.Parameters.AddWithValue("@chasis", txt_chassis.Text);
                        sqlad.SelectCommand = cmd;
                        cmd.ExecuteNonQuery();
                        sqlad.Fill(ds);

                        Gridview_customer.DataSource = ds.Tables[0];
                        Gridview_customer.DataBind();
                    }
                    catch (Exception ex)
                    {
                        throw ex;
                    }
                    finally
                    {
                        con.Close();
                    }
                }
            }
        }

    }
}