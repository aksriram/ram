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
    public partial class GST_Calculation : System.Web.UI.Page
    {
        public SqlConnection con;
        public SqlCommand cmd;
        public SqlDataAdapter da;
        public DataSet ds;
        public DataTable dt;
        String ConnectionString;
        decimal total;
        decimal surcharge;
        decimal calculation3;
        decimal calculation4;
        decimal luxpackage;

        decimal vehiclePrice;
        decimal coe_topup;
        decimal addroadtax;
        decimal addradio;
        decimal coe_deposit;
        decimal accessory;
        decimal amt_subto_gst;
        decimal tax_refund;
        decimal reg_rebate;
        decimal discount;
        decimal coe_subsidy;
        decimal coe_rebate;
        decimal duty_rebate;
        decimal arf_rebate;
        decimal cevsreb;

        decimal costcoe;
        decimal roadtax;
        decimal radiolic;
        decimal registration;
        decimal weighing;
        decimal arf;
        decimal cevs;
        decimal coe_rebatelta;

        decimal lessvalue0;
        decimal addvalue6;

        decimal amt_notin_gst;

        decimal parf_rebate;
        decimal residual_rebate;
        decimal opc_rebate;

        decimal credit;
        decimal subtot;
        decimal taxamtold;
        decimal taxamt;
        decimal gstold;
        decimal gst;

        public GST_Calculation()
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
            if (!IsPostBack)
            {
                div1.Visible = true;
                div2.Visible = false;
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
                    if (name == "GST Calculation")
                    {
                        lblpagetitle.Text = name;
                    }
                }
                // txtregdate.Text = ds.Tables[0].Rows[0][0].ToString();

            }
        }

        protected void dv1_Click(object sender, EventArgs e)
        {
            div2.Visible = true;
            div1.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            div1.Visible = true;
            div2.Visible = false;
        }

        protected void Img_search_Click(object sender, ImageClickEventArgs e)
        {
            SqlConnection con = new SqlConnection(ConnectionString);
            DataTable datatbl = new DataTable();
            DataSet ds = new DataSet();
            SqlDataAdapter sqlad = new SqlDataAdapter();

            con.Open();
            string sql = "SELECT * FROM tbl_salescontract WHERE ContractNo=@contract";
            cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@contract", txt_cnum.Text.Trim());
            cmd.ExecuteNonQuery();
            sqlad.SelectCommand = cmd;
            sqlad.Fill(ds);
            con.Close();

            if (ds.Tables[0].Rows.Count > 0)
            {
                details(txt_cnum.Text.Trim());
            }
            else
            {
                string script1 = "alert('Contract number not found');";
                ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScripts", script1, true);

            }
        }

        protected void txt_cnum_TextChanged(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConnectionString);
            DataTable datatbl = new DataTable();
            DataSet ds = new DataSet();
            SqlDataAdapter sqlad = new SqlDataAdapter();

            con.Open();
            string sql = "SELECT * FROM tbl_salescontract WHERE ContractNo=@contract";
            cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@contract", txt_cnum.Text.Trim());
            cmd.ExecuteNonQuery();
            sqlad.SelectCommand = cmd;
            sqlad.Fill(ds);
            con.Close();

            if (ds.Tables[0].Rows.Count > 0)
            {
                details(txt_cnum.Text.Trim());
            }
            else
            {
                string script1 = "alert('Contract number not found');";
                ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScripts", script1, true);

            }
        }

        //to get details needed for gst calculation 
        public void details(string contract)
        {
            
            SqlConnection con = new SqlConnection(ConnectionString);
            DataTable datatbl = new DataTable();
            DataSet ds = new DataSet();
            DataSet ds1 = new DataSet();
            DataSet ds2 = new DataSet();
            DataSet ds3 = new DataSet();
            DataSet ds4 = new DataSet();
            DataSet ds5 = new DataSet();
            DataSet ds6 = new DataSet();
            DataSet ds7 = new DataSet();
            DataSet ds8 = new DataSet();
            SqlDataAdapter sqlad = new SqlDataAdapter();

            con.Open();
            string sql = "SELECT * FROM tbl_gst_calculation WHERE contract_num=@contract";
            cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@contract", contract);
            cmd.ExecuteNonQuery();
            sqlad.SelectCommand = cmd;
            sqlad.Fill(ds);
            con.Close();

            if (ds.Tables[0].Rows.Count > 0)
            {

                //get price details from tbl_saleprice table
                con.Open();
                string sql1 = "SELECT isNULL(price0,0) as price0,isNULL(price4,0) as price4 FROM tbl_saleprice WHERE contract_num=@contract";
                cmd = new SqlCommand(sql1, con);
                cmd.Parameters.AddWithValue("@contract", contract);
                cmd.ExecuteNonQuery();
                sqlad.SelectCommand = cmd;
                sqlad.Fill(ds1);
                con.Close();

                if(ds1.Tables[0].Rows.Count > 0)
                {
                    txt_vehicleprice.Text = ds1.Tables[0].Rows[0]["price0"].ToString();
                    txt_COEtopup.Text= ds1.Tables[0].Rows[0]["price4"].ToString();
                }

                //to get coe cost and arf from tbl_vehicle tale
                con.Open();
                string sql2 = "SELECT isNULL(coe_amount,0) as coe_amount,isNULL(arf,0)as arf,register_num,FORMAT(register_date,'dd/mm/yyyy') as register_date FROM tbl_vehicle WHERE contract_num=@contract";
                cmd = new SqlCommand(sql2, con);
                cmd.Parameters.AddWithValue("@contract", contract);
                cmd.ExecuteNonQuery();
                sqlad.SelectCommand = cmd;
                sqlad.Fill(ds2);
                con.Close();

                if(ds2.Tables[0].Rows.Count > 0)
                {
                    txt_regno.Text = ds2.Tables[0].Rows[0]["register_num"].ToString();
                    if(ds2.Tables[0].Rows[0]["register_date"].ToString() != "")
                    {
                        txt_rgdate.Text = ds2.Tables[0].Rows[0]["register_date"].ToString();
                    }
                    txt_costcoe.Text= ds2.Tables[0].Rows[0]["coe_amount"].ToString();
                    txt_ARF.Text = ds2.Tables[0].Rows[0]["arf"].ToString();
                }

                //to get road tax, registration and radiolicence from salecalculation table
                con.Open();
                string sql3 = "SELECT isNULL(amount13,0) as amount13,isNULL(amount14,0) as amount14,isNULL(amount15,0) as amount15 FROM tbl_sale_calculation WHERE contract_num=@contract";
                cmd = new SqlCommand(sql3, con);
                cmd.Parameters.AddWithValue("@contract", contract);
                cmd.ExecuteNonQuery();
                sqlad.SelectCommand = cmd;
                sqlad.Fill(ds3);
                con.Close();

                if(ds3.Tables[0].Rows.Count > 0)
                {
                    txt_registr.Text = ds3.Tables[0].Rows[0]["amount13"].ToString();
                   txt_roadtax.Text= ds3.Tables[0].Rows[0]["amount14"].ToString();
                    txt_radio.Text= ds3.Tables[0].Rows[0]["amount15"].ToString();
                }


                //To get additional road tax and addradiolicence from tbl_salescontract table
                con.Open();
                string sql4 = "SELECT isNULL(coe_amount,0) as coe_amount,isNULL(additional_roadtax,0) as additional_roadtax,isNULL(addi_radiolicense,0) as addi_radiolicense,isNULL(top_up,0) as top_up,isNULL(arf,0) as arf,Buyer_nric,fincompcode FROM tbl_salescontract WHERE ContractNo=@contract";
                cmd = new SqlCommand(sql4, con);
                cmd.Parameters.AddWithValue("@contract", contract);
                cmd.ExecuteNonQuery();
                sqlad.SelectCommand = cmd;
                sqlad.Fill(ds4);
                con.Close();

                if (ds4.Tables[0].Rows.Count > 0)
                {
                    txt_addrdtax.Text= ds4.Tables[0].Rows[0]["additional_roadtax"].ToString();
                    txt_add_rdlicense.Text= ds4.Tables[0].Rows[0]["addi_radiolicense"].ToString();
                    txt_costcoe.Text= ds4.Tables[0].Rows[0]["coe_amount"].ToString();
                }

                //to get additional road tax from addroadtax table if not in salescontract table
                con.Open();
                string sql5 = "SELECT isNULL(addroad_tax,0) as addroad_tax FROM tbl_addroadtax_dtl WHERE contract_num=@contract";
                cmd = new SqlCommand(sql5, con);
                cmd.Parameters.AddWithValue("@contract", contract);
                cmd.ExecuteNonQuery();
                sqlad.SelectCommand = cmd;
                sqlad.Fill(ds5);
                con.Close();

                if(ds5.Tables[0].Rows.Count > 0)
                {
                    txt_addrdtax.Text = ds5.Tables[0].Rows[0]["addroad_tax"].ToString();
                }

                //display additional road tax from sales consultant account
                con.Open();
                string sql6 = "SELECT isNULL(sale_price,0) as sale_price FROM tbl_paymentsalesman_tnx WHERE acc_desc=@desc AND contract_num=@contract";
                cmd = new SqlCommand(sql6, con);
                cmd.Parameters.AddWithValue("@contract", contract);
                cmd.Parameters.AddWithValue("@desc", "Additional Road Tax");
                cmd.ExecuteNonQuery();
                sqlad.SelectCommand = cmd;
                sqlad.Fill(ds6);
                con.Close();

                if (ds6.Tables[0].Rows.Count > 0)
                {
                    txt_addrdtax.Text= ds6.Tables[0].Rows[0]["sale_price"].ToString();
                    int roadtax = Convert.ToInt32(ds6.Tables[0].Rows[0]["sale_price"]);
                    int roadtax1 = roadtax * 2;
                    txt_roadtax.Text = roadtax1.ToString();
                }

                //to get  road tax from roadtax table if not in salescontract table
                con.Open();
                string sql7 = "SELECT isNULL(road_tax,0) as road_tax FROM tbl_roadtax_dtl WHERE contract_num=@contract";
                cmd = new SqlCommand(sql7, con);
                cmd.Parameters.AddWithValue("@contract", contract);
                cmd.ExecuteNonQuery();
                sqlad.SelectCommand = cmd;
                sqlad.Fill(ds7);
                con.Close();

                if (ds7.Tables[0].Rows.Count > 0)
                {
                    txt_roadtax.Text = ds7.Tables[0].Rows[0]["road_tax"].ToString();
                }

                //To display all details from gstcalculation table
                con.Open();
                string sql8 = "SELECT * FROM tbl_gst_calculation WHERE contract_num=@contract";
                cmd = new SqlCommand(sql8, con);
                cmd.Parameters.AddWithValue("@contract", contract);
                cmd.ExecuteNonQuery();
                sqlad.SelectCommand = cmd;
                sqlad.Fill(ds8);
                con.Close();

                if (ds8.Tables[0].Rows.Count > 0)
                {
                    txt_discount.Text = ds8.Tables[0].Rows[0]["discount"].ToString();
                    txt_credit.Text= ds8.Tables[0].Rows[0]["credit_note"].ToString();
                    txt_words.Text= ds8.Tables[0].Rows[0]["credit_note_words"].ToString();
                    txt_refund.Text= ds8.Tables[0].Rows[0]["roadtax_refund"].ToString();
                    txt_regrebate.Text= ds8.Tables[0].Rows[0]["reg_rebate"].ToString();
                    txt_subsidy.Text = ds8.Tables[0].Rows[0]["coe_subsidy"].ToString();
                    txt_coerebat.Text = ds8.Tables[0].Rows[0]["coe_rebate"].ToString();
                    txt_coerebate_lta.Text= ds8.Tables[0].Rows[0]["coe_rebate_lta"].ToString();
                    txt_dutyrebate.Text= ds8.Tables[0].Rows[0]["cust_duty_rebate"].ToString();
                    txt_coeres_rebate.Text= ds8.Tables[0].Rows[0]["coe_residual_value"].ToString();
                    txt_opc.Text= ds8.Tables[0].Rows[0]["opc_rebate"].ToString();
                    txt_ARFreb.Text= ds8.Tables[0].Rows[0]["arf_rebate"].ToString();
                    txt_weighing.Text= ds8.Tables[0].Rows[0]["weighing_fee"].ToString();
                    txt_cevs_surcharge.Text= ds8.Tables[0].Rows[0]["cevs"].ToString();
                    txt_PARF.Text= ds8.Tables[0].Rows[0]["less_parf"].ToString();
                    txt_less_desc.Text= ds8.Tables[0].Rows[0]["description0"].ToString();
                    txt_less_amt.Text= ds8.Tables[0].Rows[0]["value0"].ToString();
                    txt_add_desc.Text= ds8.Tables[0].Rows[0]["description6"].ToString();
                    txt_add_amt.Text= ds8.Tables[0].Rows[0]["value6"].ToString();
                    txt_accessory.Text= ds8.Tables[0].Rows[0]["value9"].ToString();
                    txt_subtotal.Text= ds8.Tables[0].Rows[0]["sub_total"].ToString();
                    txt_coedeposit.Text= ds8.Tables[0].Rows[0]["coe_deposit"].ToString();
                    txt_totamt_lta.Text= ds8.Tables[0].Rows[0]["calculation4"].ToString();


                }
                totalAmountSubjectToGST();
                totalAmountNotSubjectToGST();
                CreditNote();
                subTotal();
                
                
                

            }
            else
            {
                string script1 = "alert('Please save the payment details for this contract before proceeding to GST calculation!');";
                ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScripts", script1, true);
                
            }

        }




        //Converted all text box value to decimal
        public void txtToDec()
        {
            vehiclePrice = Convert.ToDecimal(txt_vehicleprice.Text.Trim());
            coe_topup = Convert.ToDecimal(txt_COEtopup.Text.Trim());
            addroadtax = Convert.ToDecimal(txt_addrdtax.Text.Trim());
            addradio = Convert.ToDecimal(txt_add_rdlicense.Text.Trim());
            coe_deposit = Convert.ToDecimal(txt_coedeposit.Text.Trim());
            accessory = Convert.ToDecimal(txt_accessory.Text.Trim());

            amt_subto_gst = Convert.ToDecimal(lbltotamt_in_gst.Text.Trim());

            tax_refund = Convert.ToDecimal(txt_refund.Text.Trim());
            reg_rebate = Convert.ToDecimal(txt_regrebate.Text.Trim());
            discount = Convert.ToDecimal(txt_discount.Text.Trim());
            coe_subsidy = Convert.ToDecimal(txt_subsidy.Text.Trim());
            coe_rebate = Convert.ToDecimal(txt_coerebat.Text.Trim());
            duty_rebate = Convert.ToDecimal(txt_dutyrebate.Text.Trim());
            arf_rebate = Convert.ToDecimal(txt_ARFreb.Text.Trim());
            cevsreb = Convert.ToDecimal(txt_CEVSrebate.Text.Trim());

            costcoe = Convert.ToDecimal(txt_costcoe.Text.Trim());
            roadtax = Convert.ToDecimal(txt_roadtax.Text.Trim());
            radiolic = Convert.ToDecimal(txt_radio.Text.Trim());
            registration = Convert.ToDecimal(txt_registr.Text.Trim());
            weighing = Convert.ToDecimal(txt_weighing.Text.Trim());
            arf = Convert.ToDecimal(txt_ARF.Text.Trim());
            cevs = Convert.ToDecimal(txt_cevs_surcharge.Text.Trim());
            coe_rebatelta = Convert.ToDecimal(txt_coerebate_lta.Text.Trim());

            lessvalue0 = Convert.ToDecimal(txt_less_amt.Text.Trim());
            addvalue6 = Convert.ToDecimal(txt_add_amt.Text.Trim());

            amt_notin_gst = Convert.ToDecimal(lbl_totamt_notin_gst.Text.Trim());

            parf_rebate = Convert.ToDecimal(txt_PARF.Text.Trim());
            residual_rebate = Convert.ToDecimal(txt_coeres_rebate.Text.Trim());
            opc_rebate = Convert.ToDecimal(txt_opc.Text.Trim());

            credit = Convert.ToDecimal(txt_credit.Text.Trim());
            subtot = Convert.ToDecimal(txt_subtotal.Text.Trim());
            taxamtold = Convert.ToDecimal(txt_taxableamt_old.Text.Trim());
            taxamt = Convert.ToDecimal(txt_taxableamt.Text.Trim());
            gstold = Convert.ToDecimal(txt_gstold.Text.Trim());
            gst = Convert.ToDecimal(txt_gst.Text.Trim());

        }

        protected void Img_save_Click(object sender, ImageClickEventArgs e)
        {
            SqlConnection con = new SqlConnection(ConnectionString);
            DataTable datatbl = new DataTable();
            DataSet ds = new DataSet();
            SqlDataAdapter sqlad = new SqlDataAdapter();

            con.Open();
            string sql = "SELECT * FROM tbl_salescontract WHERE ContractNo=@contract";
            cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@contract", txt_cnum.Text.Trim());
            cmd.ExecuteNonQuery();
            sqlad.SelectCommand = cmd;
            sqlad.Fill(ds);
            con.Close();

            if (ds.Tables[0].Rows.Count > 0)
            {
                
                string invoice = ds.Tables[0].Rows[0]["invoice_num"].ToString();
                if (invoice == "" || invoice==null)
                {
                    saveDetails();
                }
                else
                {

                }
            }
            else
            {
                string script1 = "alert('Contract number not found');";
                ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScripts", script1, true);

            }
        }

        //function on click save
        public void saveDetails()
        {
            

            SqlConnection con = new SqlConnection(ConnectionString);
            DataTable datatbl = new DataTable();
            DataSet ds = new DataSet();
            DataSet ds1 = new DataSet();
            DataSet ds2 = new DataSet();
            DataSet ds3 = new DataSet();
            DataSet ds4 = new DataSet();
            DataSet ds5 = new DataSet();
            DataSet ds6 = new DataSet();
            SqlDataAdapter sqlad = new SqlDataAdapter();

            
            //Update vehicle table
            try
            {
                 
                decimal arf3 = Convert.ToDecimal(txt_ARF.Text.Trim());
                decimal amount = Convert.ToDecimal(txt_costcoe.Text.Trim());
                con.Open();
                string sql = "UPDATE tbl_vehicle SET arf=@arf,coe_amount=@amount,progress_status=@status WHERE contract_num=@contract";
                cmd = new SqlCommand(sql, con);
                cmd.Parameters.AddWithValue("@arf", arf3);
                cmd.Parameters.AddWithValue("@amount", amount);
                cmd.Parameters.AddWithValue("@status", "L");
                cmd.Parameters.AddWithValue("@contract", txt_cnum.Text.Trim());
                cmd.ExecuteNonQuery();
            }
            catch(Exception ex)
            {
                throw ex;

            }
            finally
            {
                con.Close();
                cmd.Dispose();
            }
            //additional road tax paid by salesman, no need to update additional road tax and amount14 on salescontract and salescalculation table
            //it will effect to invoice road tax 
            con.Open();
            string sql1 = "SELECT * FROM tbl_paymentsalesman_tnx WHERE (acc_desc='Additional Road Tax' OR acc_desc='Additional 6 Months Road Tax') AND contract_num=@contract";
            cmd = new SqlCommand(sql1, con);
            cmd.Parameters.AddWithValue("@contract", txt_cnum.Text.Trim());
            cmd.ExecuteNonQuery();
            sqlad.SelectCommand = cmd;
            sqlad.Fill(ds);
            con.Close();

            if (ds.Tables[0].Rows.Count > 0)
            {
                //update salescontract table
                try
                {
                    decimal arf2 = Convert.ToDecimal(txt_ARF.Text.Trim());
                    decimal amount1 = Convert.ToDecimal(txt_costcoe.Text.Trim());
                    decimal radio = Convert.ToDecimal(txt_add_rdlicense.Text.Trim());
                    decimal parf = Convert.ToDecimal(txt_PARF.Text.Trim());
                    con.Open();
                    string sql = "UPDATE tbl_salescontract SET addi_radiolicense=@radio,coe_amount=@amt,scrap_vehicle=@parf,arf=@arf WHERE  ContractNo=@contract";
                    cmd = new SqlCommand(sql, con);
                    cmd.Parameters.AddWithValue("@radio", radio);
                    cmd.Parameters.AddWithValue("@amt", amount1);
                    cmd.Parameters.AddWithValue("@parf", parf);
                    cmd.Parameters.AddWithValue("@arf", arf2);
                    cmd.Parameters.AddWithValue("@contract", txt_cnum.Text.Trim());
                    cmd.ExecuteNonQuery();
                }
                catch (Exception ex)
                {
                    throw ex;

                }
                finally
                {
                    con.Close();
                    cmd.Dispose();
                }

                //update sale calculation table
                try
                {
                    decimal reg = Convert.ToDecimal(txt_registr.Text.Trim());
                    decimal roadtax2 = Convert.ToDecimal(txt_roadtax.Text.Trim());
                    decimal radio = Convert.ToDecimal(txt_radio.Text.Trim());
                    con.Open();
                    string sql = "UPDATE tbl_sale_calculation SET amount13=@amt13,amount14=@amt14,amount15=@amt15 WHERE  contract_num=@contract";
                    cmd = new SqlCommand(sql, con);
                    cmd.Parameters.AddWithValue("@amt13", reg);
                    cmd.Parameters.AddWithValue("@amt14", roadtax2);
                    cmd.Parameters.AddWithValue("@amt15", radio);
                    cmd.Parameters.AddWithValue("@contract", txt_cnum.Text.Trim());
                    cmd.ExecuteNonQuery();
                }
                catch (Exception ex)
                {
                    throw ex;

                }
                finally
                {
                    con.Close();
                    cmd.Dispose();
                }

            }
            else
            {
                //update salescontract table
                try
                {
                    decimal arf1 = Convert.ToDecimal(txt_ARF.Text.Trim());
                    decimal amount2 = Convert.ToDecimal(txt_costcoe.Text.Trim());
                    decimal radio = Convert.ToDecimal(txt_add_rdlicense.Text.Trim());
                    decimal parf = Convert.ToDecimal(txt_PARF.Text.Trim());
                    decimal addtax = Convert.ToDecimal(txt_addrdtax.Text.Trim());
                    con.Open();
                    string sql = "UPDATE tbl_salescontract SET additional_roadtax=@addtax,addi_radiolicense=@radio,coe_amount=@amt,scrap_vehicle=@parf,arf=@arf WHERE  ContractNo=@contract";
                    cmd = new SqlCommand(sql, con);
                    cmd.Parameters.AddWithValue("@addtax", addtax);
                    cmd.Parameters.AddWithValue("@radio", radio);
                    cmd.Parameters.AddWithValue("@amt", amount2);
                    cmd.Parameters.AddWithValue("@parf", parf);
                    cmd.Parameters.AddWithValue("@arf", arf1);
                    cmd.Parameters.AddWithValue("@contract", txt_cnum.Text.Trim());
                    cmd.ExecuteNonQuery();
                }
                catch (Exception ex)
                {
                    throw ex;

                }
                finally
                {
                    con.Close();
                    cmd.Dispose();
                }

                //update sale calculation table
                try
                {
                    decimal reg = Convert.ToDecimal(txt_registr.Text.Trim());
                    decimal roadtax1 = Convert.ToDecimal(txt_roadtax.Text.Trim());
                    decimal radio = Convert.ToDecimal(txt_radio.Text.Trim());
                    con.Open();
                    string sql = "UPDATE tbl_sale_calculation SET amount13=@amt13,amount14=@amt14,amount15=@amt15 WHERE  contract_num=@contract";
                    cmd = new SqlCommand(sql, con);
                    cmd.Parameters.AddWithValue("@amt13", reg);
                    cmd.Parameters.AddWithValue("@amt14", roadtax1);
                    cmd.Parameters.AddWithValue("@amt15", radio);
                    cmd.Parameters.AddWithValue("@contract", txt_cnum.Text.Trim());
                    cmd.ExecuteNonQuery();
                }
                catch (Exception ex)
                {
                    throw ex;

                }
                finally
                {
                    con.Close();
                    cmd.Dispose();
                }

            }
               //convert text to decimal value as in database type
                decimal credit = Convert.ToDecimal(txt_credit.Text.Trim());
                decimal coe_deposit= Convert.ToDecimal(txt_coedeposit.Text.Trim());
                decimal coe_rebatelta=  Convert.ToDecimal(txt_coerebate_lta.Text.Trim());
                decimal addvalue6=  Convert.ToDecimal(txt_add_amt.Text.Trim());
                decimal subtot=  Convert.ToDecimal(txt_subtotal.Text.Trim());
                decimal taxamtold=  Convert.ToDecimal(txt_taxableamt_old.Text.Trim());
                decimal taxamt=  Convert.ToDecimal(txt_taxableamt.Text.Trim());
                decimal gstold = Convert.ToDecimal(txt_gstold.Text.Trim());
                decimal gst = Convert.ToDecimal(txt_gst.Text.Trim());
                decimal cevsreb = Convert.ToDecimal(txt_CEVSrebate.Text.Trim());
                
                decimal vehiclePrice = Convert.ToDecimal(txt_vehicleprice.Text.Trim());
                decimal coe_topup= Convert.ToDecimal(txt_COEtopup.Text.Trim());
                decimal tax_refund=  Convert.ToDecimal(txt_refund.Text.Trim());
                decimal reg_rebate=  Convert.ToDecimal(txt_regrebate.Text.Trim());

                decimal accessory = Convert.ToDecimal(txt_accessory.Text.Trim());
                decimal discount = Convert.ToDecimal(txt_discount.Text.Trim());
                decimal coe_subsidy = Convert.ToDecimal(txt_subsidy.Text.Trim());
                decimal coe_rebate = Convert.ToDecimal(txt_coerebat.Text.Trim());
                decimal duty_rebate = Convert.ToDecimal(txt_dutyrebate.Text.Trim());
                decimal arf_rebate = Convert.ToDecimal(txt_ARFreb.Text.Trim());
                decimal parf_rebate = Convert.ToDecimal(txt_PARF.Text.Trim());
                decimal residual_rebate = Convert.ToDecimal(txt_coeres_rebate.Text.Trim());
                decimal opc_rebate = Convert.ToDecimal(txt_opc.Text.Trim());
                decimal lessvalue0 = Convert.ToDecimal(txt_less_amt.Text.Trim());

                decimal costcoe = Convert.ToDecimal(txt_costcoe.Text.Trim());
                decimal roadtax = Convert.ToDecimal(txt_roadtax.Text.Trim());
                decimal radiolic = Convert.ToDecimal(txt_radio.Text.Trim());
                decimal registration = Convert.ToDecimal(txt_registr.Text.Trim());
                decimal weighing = Convert.ToDecimal(txt_weighing.Text.Trim());
                decimal arf = Convert.ToDecimal(txt_ARF.Text.Trim());
                decimal cevs = Convert.ToDecimal(txt_cevs_surcharge.Text.Trim());
               //calculation
                 decimal calculation1 = vehiclePrice + coe_topup - tax_refund - reg_rebate;
                decimal calculation2 = (calculation1 + accessory) - (discount + coe_subsidy + coe_rebate + duty_rebate + arf_rebate + parf_rebate + residual_rebate + opc_rebate + lessvalue0);
                decimal calculation3 = costcoe + roadtax + radiolic + registration + weighing + arf + cevs;


                /////////////////////doubt!!!!!!!!////////////////////
                con.Open();
                string sql2 = "SELECT modelshort_desc FROM tbl_salescontract WHERE ContractNo=@contract";
                cmd = new SqlCommand(sql2, con);
                cmd.Parameters.AddWithValue("@contract", txt_cnum.Text.Trim());
                cmd.ExecuteNonQuery();
                sqlad.SelectCommand = cmd;
                sqlad.Fill(ds1);
                con.Close();

                if (ds1.Tables[0].Rows.Count > 0)
                {
                   string modeldesc=  ds1.Tables[0].Rows[0]["modelshort_desc"].ToString();
                }
                /////////////////////////////////////////////


                txt_CEVSrebate.Text = "0";
                decimal calculation4 = calculation3 - parf_rebate - residual_rebate - opc_rebate-0;

            //Update GSt calculation
            try
            {
                
                con.Open();
                string sql = @"UPDATE tbl_gst_calculation SET discount=@discount,credit_note=@creditnote,credit_note_words=@words,roadtax_refund=@taxrefund,reg_rebate=@regrebate,
                           
                            coe_deposit=@coedeposit,coe_subsidy=@coesubsidy,coe_rebate=@coerebate,coe_rebate_lta=@coerebatelta,cust_duty_rebate=@dutyreb,
                            arf_rebate=@arfreb,weighing_fee=@weighing,cevs=@cevs,less_parf=@less_parf,lesscoe_residual=@residual,opc_rebate=@opc,lessradio_license=@radio,

                            description0=@desc0,description1=@desc1,description2=@desc2,description3=@desc3,description4=@desc4,description5=@desc5,description6=@desc6, 
                            description7=@desc7,description8=@desc8,description9=@desc9,description10=@desc10,description11=@desc11,
                            value0=@value0,value1=@value1,value2=@value2,value3=@value3,value4=@value4,value5=@value5,value6=@value6,value7=@value7,value8=@value8,
                            value9=@value9,value10=@value10,value11=@value11,calculation1=@cal1,calculation2=@cal2,calculation3=@cal3,calculation4=@cal4,
                            add_sub1=@sub1,add_sub2=@sub2,add_sub3=@sub3,sub_total=@subtot,coe_residual_value=@residualval,
                            taxable_amount=@taxamt,taxable_amount2=@taxamt2,gst=@gst,gst2=@gst2,cevs_rebate=@cevsreb
                             WHERE  contract_num=@contract";
                cmd = new SqlCommand(sql, con);
                cmd.Parameters.AddWithValue("@discount", discount);
                cmd.Parameters.AddWithValue("@creditnote", credit);
                cmd.Parameters.AddWithValue("@words", txt_words.Text.Trim());
                cmd.Parameters.AddWithValue("@taxrefund", tax_refund);
                cmd.Parameters.AddWithValue("@regrebate", reg_rebate);
                cmd.Parameters.AddWithValue("@coedeposit", coe_deposit);
                cmd.Parameters.AddWithValue("@coesubsidy", coe_subsidy);
                cmd.Parameters.AddWithValue("@coerebate", coe_rebate);
                cmd.Parameters.AddWithValue("@coerebatelta", coe_rebatelta);
                cmd.Parameters.AddWithValue("@dutyreb", duty_rebate);
                cmd.Parameters.AddWithValue("@arfreb", arf_rebate);
                cmd.Parameters.AddWithValue("@weighing", weighing);
                cmd.Parameters.AddWithValue("@cevs", cevs);
                cmd.Parameters.AddWithValue("@less_parf", parf_rebate);
                cmd.Parameters.AddWithValue("@residual", residual_rebate);
                cmd.Parameters.AddWithValue("@opc", opc_rebate);
                cmd.Parameters.AddWithValue("@radio", opc_rebate);
                cmd.Parameters.AddWithValue("@desc0", txt_less_desc.Text.Trim());
                cmd.Parameters.AddWithValue("@desc1", "");
                cmd.Parameters.AddWithValue("@desc2", "");
                cmd.Parameters.AddWithValue("@desc3", "PARF");
                cmd.Parameters.AddWithValue("@desc4", "Coe Residual Value");
                cmd.Parameters.AddWithValue("@desc5", "OPC Rebate");
                cmd.Parameters.AddWithValue("@desc6", txt_add_desc.Text.Trim());
                cmd.Parameters.AddWithValue("@desc7", "");
                cmd.Parameters.AddWithValue("@desc8", "");
                cmd.Parameters.AddWithValue("@desc9", "");
                cmd.Parameters.AddWithValue("@desc10", "");
                cmd.Parameters.AddWithValue("@desc11", "");
                cmd.Parameters.AddWithValue("@value0", lessvalue0);
                cmd.Parameters.AddWithValue("@value1", 0);
                cmd.Parameters.AddWithValue("@value2", 0);
                cmd.Parameters.AddWithValue("@value3", parf_rebate);
                cmd.Parameters.AddWithValue("@value4", residual_rebate);
                cmd.Parameters.AddWithValue("@value5", opc_rebate);
                cmd.Parameters.AddWithValue("@value6", addvalue6);
                cmd.Parameters.AddWithValue("@value7", 0);
                cmd.Parameters.AddWithValue("@value8", 0);
                cmd.Parameters.AddWithValue("@value9", accessory);
                cmd.Parameters.AddWithValue("@value10", 0);
                cmd.Parameters.AddWithValue("@value11", 0);
                cmd.Parameters.AddWithValue("@cal1", calculation1);
                cmd.Parameters.AddWithValue("@cal2", calculation2);
                cmd.Parameters.AddWithValue("@cal3", calculation3);
                cmd.Parameters.AddWithValue("@cal4", calculation4);
                cmd.Parameters.AddWithValue("@sub1", addvalue6);
                cmd.Parameters.AddWithValue("@sub2", 0);
                cmd.Parameters.AddWithValue("@sub3", 0);
                cmd.Parameters.AddWithValue("@subtot", subtot);
                cmd.Parameters.AddWithValue("@residualval", residual_rebate);
                cmd.Parameters.AddWithValue("@taxamt", taxamtold);
                cmd.Parameters.AddWithValue("@taxamt2", taxamt);
                cmd.Parameters.AddWithValue("@gst", gstold);
                cmd.Parameters.AddWithValue("@gst2", gst);
                cmd.Parameters.AddWithValue("@cevsreb", cevsreb);
                cmd.Parameters.AddWithValue("@contract", txt_cnum.Text.Trim());
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw ex;

            }
            finally
            {
                con.Close();
                cmd.Dispose();
            }
            string script2 = "alert('GST Calculation Details Updated Successfully');";
            ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScripts", script2, true);

        }

        protected void Img_print_Click(object sender, ImageClickEventArgs e)
        {
            SqlConnection con = new SqlConnection(ConnectionString);
            DataTable datatbl = new DataTable();
            DataSet ds = new DataSet();
            DataSet ds1 = new DataSet();
            DataSet ds2 = new DataSet();
            DataSet ds3 = new DataSet();
            DataSet ds4 = new DataSet();
            DataSet ds5 = new DataSet();
            DataSet ds6 = new DataSet();
            SqlDataAdapter sqlad = new SqlDataAdapter();

            con.Open();
            string sql = "SELECT * FROM tbl_salescontract WHERE ContractNo=@contract";
            cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@contract",txt_cnum.Text.Trim());
            cmd.ExecuteNonQuery();
            sqlad.SelectCommand = cmd;
            sqlad.Fill(ds);
            con.Close();
            string capped_remark = "Payment received before this date";

            if (ds.Tables[0].Rows.Count > 0)
            {
                //delete previous details from temp table
                con.Open();
                string sql1 = "DELETE FROM tbl_temp_gst";
                cmd = new SqlCommand(sql1, con);
                cmd.ExecuteNonQuery();

                string sql2 = "DELETE FROM tbl_temp_gsttransition WHERE contract_num=@contract";
                cmd = new SqlCommand(sql2, con);
                cmd.Parameters.AddWithValue("@contract", txt_cnum.Text.Trim());
                cmd.ExecuteNonQuery();
                con.Close();

                string name = ds.Tables[0].Rows[0]["BuyyersName"].ToString();
                string add1 = ds.Tables[0].Rows[0]["address1"].ToString();
                string add2= ds.Tables[0].Rows[0]["address2"].ToString();
                string country= ds.Tables[0].Rows[0]["country"].ToString();
                string postalcode= ds.Tables[0].Rows[0]["postal_code"].ToString();
                string contractdate= ds.Tables[0].Rows[0]["contract_date"].ToString();
                string salesman_code= ds.Tables[0].Rows[0]["salesmancode"].ToString();
                string invoice = ds.Tables[0].Rows[0]["invoice_num"].ToString();
                string model= ds.Tables[0].Rows[0]["modelshort_desc"].ToString();
                DateTime contractdate1 = Convert.ToDateTime(contractdate);

                decimal luxpackage= getluxpackage(txt_cnum.Text);

                //convert text to decimal value as in database type
                decimal addradio = Convert.ToDecimal(txt_add_rdlicense.Text.Trim());
                decimal addroadtax = Convert.ToDecimal(txt_addrdtax.Text.Trim());
                decimal credit = Convert.ToDecimal(txt_credit.Text.Trim());
                decimal coe_deposit = Convert.ToDecimal(txt_coedeposit.Text.Trim());
                decimal coe_rebatelta = Convert.ToDecimal(txt_coerebate_lta.Text.Trim());
                decimal addvalue6 = Convert.ToDecimal(txt_add_amt.Text.Trim());
                decimal subtot = Convert.ToDecimal(txt_subtotal.Text.Trim());
                decimal taxamtold = Convert.ToDecimal(txt_taxableamt_old.Text.Trim());
                decimal taxamt = Convert.ToDecimal(txt_taxableamt.Text.Trim());
                decimal gstold = Convert.ToDecimal(txt_gstold.Text.Trim());
                decimal gst = Convert.ToDecimal(txt_gst.Text.Trim());
                decimal cevsreb = Convert.ToDecimal(txt_CEVSrebate.Text.Trim());

                decimal vehiclePrice = Convert.ToDecimal(txt_vehicleprice.Text.Trim());
                decimal coe_topup = Convert.ToDecimal(txt_COEtopup.Text.Trim());
                decimal tax_refund = Convert.ToDecimal(txt_refund.Text.Trim());
                decimal reg_rebate = Convert.ToDecimal(txt_regrebate.Text.Trim());

                decimal accessory = Convert.ToDecimal(txt_accessory.Text.Trim());
                decimal discount = Convert.ToDecimal(txt_discount.Text.Trim());
                decimal coe_subsidy = Convert.ToDecimal(txt_subsidy.Text.Trim());
                decimal coe_rebate = Convert.ToDecimal(txt_coerebat.Text.Trim());
                decimal duty_rebate = Convert.ToDecimal(txt_dutyrebate.Text.Trim());
                decimal arf_rebate = Convert.ToDecimal(txt_ARFreb.Text.Trim());
                decimal parf_rebate = Convert.ToDecimal(txt_PARF.Text.Trim());
                decimal residual_rebate = Convert.ToDecimal(txt_coeres_rebate.Text.Trim());
                decimal opc_rebate = Convert.ToDecimal(txt_opc.Text.Trim());
                decimal lessvalue0 = Convert.ToDecimal(txt_less_amt.Text.Trim());

                decimal costcoe = Convert.ToDecimal(txt_costcoe.Text.Trim());
                decimal roadtax = Convert.ToDecimal(txt_roadtax.Text.Trim());
                decimal radiolic = Convert.ToDecimal(txt_radio.Text.Trim());
                decimal registration = Convert.ToDecimal(txt_registr.Text.Trim());
                decimal weighing = Convert.ToDecimal(txt_weighing.Text.Trim());
                decimal arf = Convert.ToDecimal(txt_ARF.Text.Trim());
                decimal cevs = Convert.ToDecimal(txt_cevs_surcharge.Text.Trim());

               

                //Insert values to tempgst table
                try
                {
                    con.Open();
                    string sql3 = @"INSERT INTO tbl_temp_gst(contract_num,contract_date,salesman_code,buyer_name,address1,
                                  address2,country,postal_code,invoice_num,register_num,vehicle_price,coe_topup,coe_deposit,
                                    add_roadtax,add_radiolicence,sale_price,roadtax_refund,reg_rebate,discount,coe_subsidy,
                                    coe_rebate,duty_rebate,arf_rebate,parf_rebate,residual_rebate,opc_rebate,cost_of_coe,
                                    roadtax,radio_license,registration,weighing,arf,value3,value4,coe_rebatelta,value5,coe_deposit1,
                                    value6,subtot,taxable_amt,gst,package,description0,value0,description6,cevs_rebate,cevs_surcharge)
                                    VALUES (@contract,@contdate,@salecode,@name,@add1,@add2,@country,@postcode,@invoice,@regnum,@vehprice,
                                    @coetopup,@coedeposit,@addrdtax,@addradio,@saleprice,@taxrefund,@regrebate,@discount,@subsidy,
                                    @coereb,@dutyreb,@arfreb,@parfreb,@residualreb,@opcreb,@costcoe,@roadtax,@radio,@reg,@weighing,
                                    @arf,@parfreb1,@residualreb1,@coereblta,@opcreb1,@coedeposit2,@value6,@subtot,@taxableamt,
                                    @gst,@package,@desc0,@value0,@desc6,@cevsreb,@cevssurcharge)";
                    cmd = new SqlCommand(sql3, con);

                    cmd.Parameters.AddWithValue("@contract", txt_cnum.Text.Trim());
                    cmd.Parameters.AddWithValue("@contdate", contractdate);
                    cmd.Parameters.AddWithValue("@salecode", salesman_code);
                    cmd.Parameters.AddWithValue("@name", name);
                    cmd.Parameters.AddWithValue("@add1", add1);
                    cmd.Parameters.AddWithValue("@add2", add2);
                    cmd.Parameters.AddWithValue("@country", country);
                    cmd.Parameters.AddWithValue("@postcode", postalcode);
                    cmd.Parameters.AddWithValue("@invoice", invoice);
                    cmd.Parameters.AddWithValue("@regnum", txt_regno.Text.Trim());
                    cmd.Parameters.AddWithValue("@vehprice", vehiclePrice);
                    cmd.Parameters.AddWithValue("@coetopup", coe_topup);
                    cmd.Parameters.AddWithValue("@coedeposit", coe_deposit);
                    cmd.Parameters.AddWithValue("@addrdtax", addroadtax);
                    cmd.Parameters.AddWithValue("@addradio", addradio);
                    cmd.Parameters.AddWithValue("@saleprice", luxpackage);
                    cmd.Parameters.AddWithValue("@taxrefund", tax_refund);
                    cmd.Parameters.AddWithValue("@regrebate", reg_rebate);
                    cmd.Parameters.AddWithValue("@discount", discount);
                    cmd.Parameters.AddWithValue("@subsidy", coe_subsidy);
                    cmd.Parameters.AddWithValue("@coereb", coe_rebate);
                    cmd.Parameters.AddWithValue("@dutyreb", duty_rebate);
                    cmd.Parameters.AddWithValue("@arfreb", arf_rebate);
                    cmd.Parameters.AddWithValue("@parfreb", parf_rebate);
                    cmd.Parameters.AddWithValue("@residualreb", residual_rebate);
                    cmd.Parameters.AddWithValue("@opcreb", opc_rebate);
                    cmd.Parameters.AddWithValue("@costcoe", costcoe);
                    cmd.Parameters.AddWithValue("@roadtax", roadtax);
                    cmd.Parameters.AddWithValue("@radio", radiolic);
                    cmd.Parameters.AddWithValue("@reg", registration);
                    cmd.Parameters.AddWithValue("@weighing", weighing);
                    cmd.Parameters.AddWithValue("@arf", arf);
                    cmd.Parameters.AddWithValue("@parfreb1", parf_rebate);
                    cmd.Parameters.AddWithValue("@residualreb1", residual_rebate);
                    cmd.Parameters.AddWithValue("@coereblta", coe_rebatelta);
                    cmd.Parameters.AddWithValue("@opcreb1", opc_rebate);
                    cmd.Parameters.AddWithValue("@coedeposit2", coe_deposit);
                    cmd.Parameters.AddWithValue("@value6", addvalue6);
                    cmd.Parameters.AddWithValue("@subtot", subtot);
                    cmd.Parameters.AddWithValue("@taxableamt", taxamtold);
                    cmd.Parameters.AddWithValue("@gst", gstold);
                    cmd.Parameters.AddWithValue("@package", "LUXURY PACKAGE");
                    cmd.Parameters.AddWithValue("@desc0", txt_less_desc.Text.Trim());
                    cmd.Parameters.AddWithValue("@value0", lessvalue0);
                    cmd.Parameters.AddWithValue("@desc6", txt_add_desc.Text.Trim());
                    cmd.Parameters.AddWithValue("@cevsreb", cevsreb);
                    cmd.Parameters.AddWithValue("@cevssurcharge", cevs);
                    

                    cmd.ExecuteNonQuery();
                    
                }
                catch(Exception ex)
                {
                    throw ex;
                }
                finally
                {
                    con.Close();
                    cmd.Dispose();
                }
                //insert value into tempgst transition table for transition process
                try
                {
                    con.Open();
                    string sql4 = @"INSERT INTO tbl_temp_gsttransition(contract_num,contract_date,total5pct,total5pct_regross,total5pct_gst,total7pct,total7pct_regross,total7pct_gst,capped_remark,model_desc,discount)
                                    VALUES (@contract,@contractdate,@tot5pct,@5pctregross,@5pctgst,@tot7pct,@7pctregross,@7pctgst,@remark,@model,@discount)";
                    cmd = new SqlCommand(sql4, con);
                    cmd.Parameters.AddWithValue("@contract", txt_cnum.Text.Trim());
                    cmd.Parameters.AddWithValue("@contractdate",contractdate1);
                    cmd.Parameters.AddWithValue("@tot5pct", 0);
                    cmd.Parameters.AddWithValue("@5pctregross", taxamtold);
                    cmd.Parameters.AddWithValue("@5pctgst", gstold);
                    cmd.Parameters.AddWithValue("@tot7pct", 0);
                    cmd.Parameters.AddWithValue("@7pctregross", taxamt);
                    cmd.Parameters.AddWithValue("@7pctgst", gst);
                    cmd.Parameters.AddWithValue("@remark", capped_remark);
                    cmd.Parameters.AddWithValue("@model", model);
                    cmd.Parameters.AddWithValue("@discount", discount);
                    cmd.ExecuteNonQuery();
                }
                catch(Exception ex)
                {
                    throw ex;
                }
                finally
                {
                    con.Close();
                    cmd.Dispose();
                }
                string script3 = "alert('print done');";
                ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScripts", script3, true);
            }
            else
            {
                string script2 = "alert('Contract number not found');";
                ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScripts", script2, true);
            }
        }



        //get lux package value(sum of sale price)
        
        public decimal getluxpackage(string contract)
        {
            SqlConnection con = new SqlConnection(ConnectionString);
            DataTable datatbl = new DataTable();
            DataSet ds = new DataSet();
            DataSet ds1 = new DataSet();
            DataSet ds2 = new DataSet();
            SqlDataAdapter sqlad = new SqlDataAdapter();
            luxpackage = 0;
            

            con.Open();
            string sql = "SELECT SUM(sale_price) as total FROM tbl_payment_accessory WHERE  contract_num=@contract AND accessory_code LIKE 'OPT-LUX%'";
            cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@contract", contract);
            cmd.ExecuteNonQuery();
            sqlad.SelectCommand = cmd;
            sqlad.Fill(ds);
            con.Close();

            if (ds.Tables[0].Rows.Count > 0)
            {
                if (ds.Tables[0].Rows[0]["total"].ToString() != "")
                {
                    luxpackage = Convert.ToDecimal( ds.Tables[0].Rows[0]["total"]);
                }
            }
            return luxpackage;
        }
        
        //to get total amount subject to gst 
        public void totalAmountSubjectToGST()
        {
            SqlConnection con = new SqlConnection(ConnectionString);
            DataTable datatbl = new DataTable();
            DataSet ds = new DataSet();
            DataSet ds1 = new DataSet();
            DataSet ds2 = new DataSet();
            SqlDataAdapter sqlad = new SqlDataAdapter();
            surcharge = 0;
            total = 0;
            
            
            decimal vehiclePrice = Convert.ToDecimal(txt_vehicleprice.Text.Trim());
            decimal coe_topup = Convert.ToDecimal(txt_COEtopup.Text.Trim());
            decimal addradio = Convert.ToDecimal(txt_add_rdlicense.Text.Trim());
            decimal addroadtax = Convert.ToDecimal(txt_addrdtax.Text.Trim());
            decimal coe_deposit = Convert.ToDecimal(txt_coedeposit.Text.Trim());
            decimal accessory = Convert.ToDecimal(txt_accessory.Text.Trim());
            decimal coe_rebate = Convert.ToDecimal(txt_coerebat.Text.Trim());

            con.Open();
            string sql = "SELECT modelshort_desc,surcharge FROM tbl_salescontract WHERE ContractNo=@contract";
            cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@contract", txt_cnum.Text.Trim());
            cmd.ExecuteNonQuery();
            sqlad.SelectCommand = cmd;
            sqlad.Fill(ds);
            con.Close();

            if (ds.Tables[0].Rows.Count > 0)
            {
                //////////////////doubt in using modeldesc!!!!!!!!!!!!////////////////////////////
                string modeldesc = ds.Tables[0].Rows[0]["modelshort_desc"].ToString();
                if (ds.Tables[0].Rows[0]["surcharge"].ToString() != "")

                    surcharge = Convert.ToDecimal(ds.Tables[0].Rows[0]["surcharge"]);

            }

            
            //based on cevsrebate and surcharge calculate the totol amount subject to gst
            if (txt_CEVSrebate.Text=="" || txt_CEVSrebate.Text=="0")
            {
                 total = surcharge + (vehiclePrice + coe_topup + addradio + addroadtax + coe_deposit + accessory) - coe_rebate;
                 lbltotamt_in_gst.Text = total.ToString();
            }
            else
            {
                decimal cevsrebate = Convert.ToDecimal(txt_CEVSrebate.Text.Trim());
                total =  (vehiclePrice + coe_topup + addradio + addroadtax + coe_deposit + accessory) +cevsrebate;
                lbltotamt_in_gst.Text = total.ToString();
            }

        }

        //To calculate total amount not subject to GST
        public void totalAmountNotSubjectToGST()
        {
            total = 0;

            decimal tax_refund = Convert.ToDecimal(txt_refund.Text.Trim());
            decimal coe_rebatelta = Convert.ToDecimal(txt_coerebate_lta.Text.Trim());
            decimal reg_rebate = Convert.ToDecimal(txt_regrebate.Text.Trim());
            decimal discount = Convert.ToDecimal(txt_discount.Text.Trim());
            decimal coe_subsidy = Convert.ToDecimal(txt_subsidy.Text.Trim());
            decimal coe_rebate = Convert.ToDecimal(txt_coerebat.Text.Trim());
            decimal duty_rebate = Convert.ToDecimal(txt_dutyrebate.Text.Trim());
            decimal arf_rebate = Convert.ToDecimal(txt_ARFreb.Text.Trim());
            decimal costcoe = Convert.ToDecimal(txt_costcoe.Text.Trim());
            decimal roadtax = Convert.ToDecimal(txt_roadtax.Text.Trim());
            decimal radiolic = Convert.ToDecimal(txt_radio.Text.Trim());
            decimal registration = Convert.ToDecimal(txt_registr.Text.Trim());
            decimal weighing = Convert.ToDecimal(txt_weighing.Text.Trim());
            decimal cevs = Convert.ToDecimal(txt_cevs_surcharge.Text.Trim());
            decimal arf = Convert.ToDecimal(txt_ARF.Text.Trim());
            decimal lessvalue0 = Convert.ToDecimal(txt_less_amt.Text.Trim());
            decimal addvalue6 = Convert.ToDecimal(txt_add_amt.Text.Trim());


             total = tax_refund + coe_rebatelta + reg_rebate + discount + coe_subsidy +
                coe_rebate + duty_rebate + arf_rebate + costcoe + roadtax + radiolic + registration + weighing +
                cevs + arf + lessvalue0 - addvalue6;
            lbl_totamt_notin_gst.Text = total.ToString();
        }

        //To et credit note value
        public void CreditNote()
        {
            total = 0;

            decimal discount = Convert.ToDecimal(txt_discount.Text.Trim());
            decimal arf_rebate = Convert.ToDecimal(txt_ARFreb.Text.Trim());
            decimal coe_rebate = Convert.ToDecimal(txt_coerebat.Text.Trim());
            decimal coe_subsidy = Convert.ToDecimal(txt_subsidy.Text.Trim());
            decimal parf_rebate = Convert.ToDecimal(txt_PARF.Text.Trim());
            decimal residual_rebate = Convert.ToDecimal(txt_coeres_rebate.Text.Trim());

            total = discount + arf_rebate + coe_rebate + coe_subsidy + parf_rebate + residual_rebate;
            txt_credit.Text = total.ToString();
        }

        //To calculate subtotal amount by finding difference between total amount 
        public void subTotal()
        {
            total = 0;

            decimal amt_subto_gst = Convert.ToDecimal(lbltotamt_in_gst.Text.Trim());
            decimal amt_notin_gst = Convert.ToDecimal(lbl_totamt_notin_gst.Text.Trim());
            total = amt_subto_gst - amt_notin_gst;
            txt_subtotal.Text = total.ToString();
        }

        //calculation for total amount payable to lta (textbox field)
        public void totAmtPayableToLta()
        {
            calculation3 = 0;
            calculation4 = 0;

            decimal costcoe = Convert.ToDecimal(txt_costcoe.Text.Trim());
            decimal roadtax = Convert.ToDecimal(txt_roadtax.Text.Trim());
            decimal radiolic = Convert.ToDecimal(txt_radio.Text.Trim());
            decimal registration = Convert.ToDecimal(txt_registr.Text.Trim());
            decimal weighing = Convert.ToDecimal(txt_weighing.Text.Trim());
            decimal cevs = Convert.ToDecimal(txt_cevs_surcharge.Text.Trim());
            decimal arf = Convert.ToDecimal(txt_ARF.Text.Trim());

            decimal parf_rebate = Convert.ToDecimal(txt_PARF.Text.Trim());
            decimal residual_rebate = Convert.ToDecimal(txt_coeres_rebate.Text.Trim());
            decimal opc_rebate = Convert.ToDecimal(txt_opc.Text.Trim());

            decimal cevsreb = Convert.ToDecimal(txt_CEVSrebate.Text.Trim());

            calculation3 = costcoe + roadtax + radiolic + registration + weighing + cevs + arf;

            //based on cevs rebate calculate the total amount
            if(txt_CEVSrebate.Text=="0" || txt_CEVSrebate.Text=="")
            {
                calculation4 = calculation3 - (parf_rebate + residual_rebate + opc_rebate);
            }
            else
            {
                calculation4 = calculation3 - (parf_rebate + residual_rebate + opc_rebate+ cevsreb);
            }

            txt_totamt_lta.Text = calculation4.ToString();
        }

        public void transitionalCalculation(string contract)
        {
            decimal total_oldpct;
            decimal total_oldpct_regrossed;
            decimal total_oldpct_gst;
            decimal total_newpct;
            decimal total_newpct_regrossed;
            decimal total_newpct_gst;
            decimal total_receipt;
            decimal calculus;
            decimal old_gst = 5;
            decimal new_gst = 7;

            DateTime gst_transition;
            DateTime receiptdate;

            total_oldpct = 0;
            total_oldpct_regrossed = 0;
            total_oldpct_gst = 0;
            total_newpct = 0;
            total_newpct_regrossed = 0;
            total_newpct_gst = 0;
            total_receipt = 0;

            if (contract != "")
            {
                SqlConnection con = new SqlConnection(ConnectionString);
                DataTable datatbl = new DataTable();
                DataSet ds = new DataSet();
                SqlDataAdapter sqlad = new SqlDataAdapter();

                con.Open();
                string sql = "SELECT * FROM tbl_salescontract WHERE ContractNo=@contract";
                cmd = new SqlCommand(sql, con);
                cmd.Parameters.AddWithValue("@contract", contract);
                cmd.ExecuteNonQuery();
                sqlad.SelectCommand = cmd;
                sqlad.Fill(ds);
                con.Close();

                if (ds.Tables[0].Rows.Count > 0)
                {
                    string invoiseDate = ds.Tables[0].Rows[0]["invoice_date"].ToString();
                    if (invoiseDate != "")
                    {

                    }
                    else
                    {

                    }
                }
                else
                {
                    string script2 = "alert('Contract number not found');";
                    ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScripts", script2, true);
                }

            }
        }
        //To clear all details in text box
        public void clear()
        {
            txt_cnum.Text = "";
            txt_regno.Text= "";
            txt_rgdate.Text="";
            txt_vehicleprice.Text = "";
            txt_COEtopup.Text = "";
            txt_addrdtax.Text = "";
            txt_add_rdlicense.Text = "";
            txt_coedeposit.Text = "";
            txt_accessory.Text = "";
            lbltotamt_in_gst.Text = "";
            txt_refund.Text = "";
            txt_costcoe.Text = "";
            txt_regrebate.Text = "";
            txt_roadtax.Text = "";
                txt_discount.Text = "";
            txt_radio.Text = "";
            txt_subsidy.Text = "";
            txt_registr.Text = "";
            txt_coerebat.Text = "";
            txt_weighing.Text = "";
            txt_dutyrebate.Text = "";
            txt_ARF.Text = "";
            txt_ARFreb.Text = "";
            txt_totamt_lta.Text = "";
            txt_CEVSrebate.Text = "";
            txt_cevs_surcharge.Text = "";
            txt_coerebate_lta.Text = "";
            txt_less_desc.Text = "";
            txt_less_amt.Text = "";
            txt_add_desc.Text = "";
            txt_add_amt.Text = "";
            lbl_totamt_notin_gst.Text = "";
            txt_PARF.Text = "";
            txt_coeres_rebate.Text = "";
            txt_opc.Text = "";
            txt_credit.Text = "";
            txt_words.Text = "";
            txt_subtotal.Text = "";
            txt_taxableamt_old.Text = "";
            txt_gstold.Text = "";
            txt_taxableamt.Text = "";
            txt_gst.Text = "";

        }
        protected void txt_credit_TextChanged(object sender, EventArgs e)
        {
            string word = ConvertNumbertoWords(Convert.ToInt32(txt_credit.Text.Trim()));
            txt_words.Text = word + ' ' + " Dollars " + "Only.";
            txt_subtotal.Focus();
        }
        public static string ConvertNumbertoWords(int number)
        {
            if (number == 0)
                return "Zero";
            if (number < 0)
                return "minus " + ConvertNumbertoWords(Math.Abs(number));
            string words = "";
            if ((number / 1000000) > 0)
            {
                words += ConvertNumbertoWords(number / 1000000) + " Million ";
                number %= 1000000;
            }
            if ((number / 1000) > 0)
            {
                words += ConvertNumbertoWords(number / 1000) + " Thousand ";
                number %= 1000;
            }
            if ((number / 100) > 0)
            {
                words += ConvertNumbertoWords(number / 100) + " Hundred ";
                number %= 100;
            }
            if (number > 0)
            {
                if (words != "")
                    words += "And ";
                var unitsMap = new[] { "Zero", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen", "Eighteen", "Nineteen" };
                var tensMap = new[] { "Zero", "Ten", "Twenty", "Thirty", "Fourty", "Fifty", "Sixty", "Seventy", "Eighty", "Ninety" };

                if (number < 20)
                    words += unitsMap[number];
                else
                {
                    words += tensMap[number / 10];
                    if ((number % 10) > 0)
                        words += " " + unitsMap[number % 10];
                }
            }
            return words;
        }
        //To calculate values each time the text box value get changed

        protected void txt_discount_TextChanged(object sender, EventArgs e)
        {
            CreditNote();
            totalAmountNotSubjectToGST();
            subTotal();
        }

        protected void txt_ARFreb_TextChanged(object sender, EventArgs e)
        {
            CreditNote();
            totalAmountNotSubjectToGST();
            subTotal();
        }

        protected void txt_coerebat_TextChanged(object sender, EventArgs e)
        {
            CreditNote();
            totalAmountNotSubjectToGST();
            subTotal();
        }

        protected void txt_subsidy_TextChanged(object sender, EventArgs e)
        {
            CreditNote();
            totalAmountNotSubjectToGST();
            subTotal();
        }

        protected void txt_PARF_TextChanged(object sender, EventArgs e)
        {
            CreditNote();
        }

        protected void txt_coeres_rebate_TextChanged(object sender, EventArgs e)
        {
            CreditNote();
        }

        protected void txt_refund_TextChanged(object sender, EventArgs e)
        {
            totalAmountNotSubjectToGST();
            subTotal();
           
        }

        protected void txt_regrebate_TextChanged(object sender, EventArgs e)
        {
            totalAmountNotSubjectToGST();
            subTotal();
        }

        protected void txt_dutyrebate_TextChanged(object sender, EventArgs e)
        {

            totalAmountNotSubjectToGST();
            subTotal();
        }

        protected void txt_costcoe_TextChanged(object sender, EventArgs e)
        {
            totalAmountNotSubjectToGST();
            subTotal();
            totAmtPayableToLta();
        }

        protected void txt_roadtax_TextChanged(object sender, EventArgs e)
        {
            totalAmountNotSubjectToGST();
            subTotal();
            totAmtPayableToLta();
        }

        protected void txt_radio_TextChanged(object sender, EventArgs e)
        {
            totalAmountNotSubjectToGST();
            subTotal();
            totAmtPayableToLta();
        }

        protected void txt_registr_TextChanged(object sender, EventArgs e)
        {
            totalAmountNotSubjectToGST();
            subTotal();
            totAmtPayableToLta();
        }

        protected void txt_weighing_TextChanged(object sender, EventArgs e)
        {
            totalAmountNotSubjectToGST();
            subTotal();
            totAmtPayableToLta();
        }

        protected void txt_cevs_surcharge_TextChanged(object sender, EventArgs e)
        {
            totalAmountNotSubjectToGST();
            subTotal();
            totAmtPayableToLta();
        }

        protected void txt_CEVSrebate_TextChanged(object sender, EventArgs e)
        {
            totalAmountNotSubjectToGST();
            subTotal();
            totAmtPayableToLta();
        }

        protected void txt_ARF_TextChanged(object sender, EventArgs e)
        {
            totalAmountNotSubjectToGST();
            subTotal();
            totAmtPayableToLta();
        }

        protected void txt_COEtopup_TextChanged(object sender, EventArgs e)
        {
            totalAmountSubjectToGST();
            subTotal();
            
        }

        protected void txt_less_amt_TextChanged(object sender, EventArgs e)
        {
            totalAmountNotSubjectToGST();
            subTotal();
        }

        protected void txt_add_amt_TextChanged(object sender, EventArgs e)
        {
            totalAmountNotSubjectToGST();
            subTotal();
        }

        protected void txt_addrdtax_TextChanged(object sender, EventArgs e)
        {
            totalAmountSubjectToGST();
            subTotal();
        }

        protected void txt_add_rdlicense_TextChanged(object sender, EventArgs e)
        {
            totalAmountSubjectToGST();
            subTotal();
        }

        protected void txt_coedeposit_TextChanged(object sender, EventArgs e)
        {
            totalAmountSubjectToGST();
            subTotal();
        }

        protected void txt_accessory_TextChanged(object sender, EventArgs e)
        {
            totalAmountSubjectToGST();
            subTotal();
        }

       

        protected void txt_opc_TextChanged(object sender, EventArgs e)
        {
            totAmtPayableToLta();
            
        }

        protected void Img_invoice_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/AutoPac/Invoice.aspx");
        }
    }
}