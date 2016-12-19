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
    public partial class Stock_Hold : System.Web.UI.Page
    {
        public SqlConnection con;
        public SqlCommand cmd;
        public SqlDataAdapter da;
        public DataSet ds;
        public DataTable dt;
        String ConnectionString;
        public Stock_Hold()
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
                single.Visible = false;
                batch.Visible = false;
                dropdown_model();

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
                    if (name == "Stock Hold/Release")
                    {
                        lblpagetitle.Text = name;
                    }
                }
                // txtregdate.Text = ds.Tables[0].Rows[0][0].ToString();

            }
        }


        protected void singleh_CheckedChanged(object sender, EventArgs e)
        {
            if (singleh.Checked == true)
            {
                single.Visible = true;
                batch.Visible = false;
            }
        }

        protected void batchh_CheckedChanged(object sender, EventArgs e)
        {
            if (batchh.Checked == true)
            {
                single.Visible = false;
                batch.Visible = true;
            }
        }
        protected void ImageSearch_Click(object sender, ImageClickEventArgs e)
        {
            string vin = txtVIN_Number.Text;
            Details(vin);
        }
        protected void ImageUpdate_Click(object sender, ImageClickEventArgs e)
        {
            string vin = txtVIN_Number.Text;
            update(vin);
        }

        protected void ImageClear_Click(object sender, ImageClickEventArgs e)
        {
            txtVIN_Number.Text = "";
            cleartext();
        }

        public void Details(string vinnum)
        {
            cleartext();
            SqlConnection con = new SqlConnection(ConnectionString);
            DataTable datatbl = new DataTable();
            DataSet ds = new DataSet();
            DataSet ds1 = new DataSet();
            SqlDataAdapter sqlad = new SqlDataAdapter();

            if (txtVIN_Number.Text != "")
            {
                try
                {

                    con.Open();
                    string sql = "SELECT engine_num,chasis_num,model_code,colour_code,format(duty_date,'dd-mm-yyyy'),stock_status,format(hold_date,'dd-mm-yyyy') as hold_date,reserved_salesman,customer_name,contract_num,case_remark,stock_remark,register_num FROM tbl_vehicle WHERE case_number=@vinnum";
                    cmd = new SqlCommand(sql, con);
                    cmd.Parameters.AddWithValue("@vinnum", txtVIN_Number.Text);
                    sqlad.SelectCommand = cmd;
                    cmd.ExecuteNonQuery();
                    sqlad.Fill(ds);

                    //To check whether Vin number is registred or not
                    string regnum= ds.Tables[0].Rows[0]["register_num"].ToString();
                    if(regnum != "")
                    {
                        string script = "alert('Vin Number is registered');";
                        ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScripts", script, true);
                    }

                    txtEngine_Number.Text = ds.Tables[0].Rows[0][0].ToString();
                    Txt_ChasisNumber.Text = ds.Tables[0].Rows[0][1].ToString();
                    TxtModel.Text = ds.Tables[0].Rows[0][2].ToString();
                    TxtColour.Text = ds.Tables[0].Rows[0][3].ToString();

                   
                    Txt_DutyPaid.Text = ds.Tables[0].Rows[0][4].ToString();

                    if (ds.Tables[0].Rows[0][5].ToString() != "")
                        ddl_StockStatus.SelectedValue = ds.Tables[0].Rows[0][5].ToString();
                    else
                        ddl_StockStatus.SelectedValue = "R";

                    Txt_HoldDate.Text = ds.Tables[0].Rows[0][6].ToString();
                     ddl_SalesConsultant.SelectedValue = ds.Tables[0].Rows[0][7].ToString();
                    Txt_BuyersName.Text = ds.Tables[0].Rows[0][8].ToString();
                    Txt_ContractNum.Text = ds.Tables[0].Rows[0][9].ToString();
                }
                catch
                {

                }
                finally
                {
                    con.Close();
                    cmd.Dispose();
                }
                string contract_num = Txt_ContractNum.Text;

                    if (contract_num != "")
                    {
                        try
                        {
                            con.Open();
                            string sql1 = "SELECT Buyer_orderno,Buyer_nric FROM tbl_contractbooking WHERE ContractNo=@contract";
                            cmd = new SqlCommand(sql1, con);
                            cmd.Parameters.AddWithValue("@contract", contract_num);
                            sqlad.SelectCommand = cmd;
                            cmd.ExecuteNonQuery();
                            sqlad.Fill(ds1);

                            Txt_BuyersOrderNum.Text = ds1.Tables[0].Rows[0][0].ToString();
                            Txt_BuyersNRIC.Text = ds1.Tables[0].Rows[0][1].ToString();
                        }
                        catch
                        {

                        }
                        finally
                        {
                            con.Close();
                        }
                    }
                    else
                    {

                    }
               
            }
            else
            {
                string script = "alert('Vin number not found');";
                ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScripts", script, true);
            }

        }

        public void update(string vin)
        {
            
            SqlConnection con = new SqlConnection(ConnectionString);
            DataTable datatbl = new DataTable();
            DataSet ds = new DataSet();

            SqlDataAdapter sqlad = new SqlDataAdapter();
            DateTime holddate = new DateTime();

           
            //To check whether vin number is registered
            if (txtVIN_Number.Text != "")
            {
                try
                {
                    con.Open();
                    string sql = "SELECT register_num FROM tbl_vehicle WHERE case_number=@vinnum";
                    cmd = new SqlCommand(sql, con);
                    cmd.Parameters.AddWithValue("@vinnum", txtVIN_Number.Text);
                    sqlad.SelectCommand = cmd;
                    cmd.ExecuteNonQuery();
                    sqlad.Fill(ds);

                    
                   
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

            string regnum = ds.Tables[0].Rows[0]["register_num"].ToString();
            if (regnum != "")
            {
                string script = "alert('Vin Number is registered');";
                ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScripts", script, true);
            }
            else
            {

                //To update hold date based on stock status
                if (ddl_StockStatus.SelectedValue == "R")
                {
                    holddate = Convert.ToDateTime(Txt_HoldDate.Text);
                }
                else
                {
                    holddate = DateTime.Now;
                }

                try
                {
                    con.Open();
                    string sql = "SELECT stock_status,hold_date,reserved_salesman,customer_name,register_num FROM tbl_vehicle WHERE case_number=@vin";
                    cmd = new SqlCommand(sql, con);
                    cmd.Parameters.AddWithValue("@vin", txtVIN_Number.Text);
                    sqlad.SelectCommand = cmd;
                    cmd.ExecuteNonQuery();
                    sqlad.Fill(ds);

                    if (ds.Tables[0].Rows.Count != 0)
                    {
                        string sql1 = "UPDATE tbl_vehicle SET stock_status=@status ,hold_date=@date,reserved_salesman=@salesman,customer_name=@name WHERE case_number=@vin";
                        cmd = new SqlCommand(sql1, con);
                        cmd.Parameters.AddWithValue("@status", ddl_StockStatus.SelectedValue);
                        cmd.Parameters.AddWithValue("@date", holddate);
                        cmd.Parameters.AddWithValue("@salesman", ddl_SalesConsultant.SelectedValue);
                        cmd.Parameters.AddWithValue("@name", Txt_BuyersName.Text);
                        cmd.Parameters.AddWithValue("@vin", txtVIN_Number.Text);
                        cmd.ExecuteNonQuery();

                        if (ddl_StockStatus.SelectedValue == "R")
                        {
                            string sql2 = "UPDATE tbl_vehicle SET salesman_code='',stock_remark='',stock_status='',hold_date=NULL,customer_name='',caralloc_date=NULL,case_remark='',reserved_salesman='',fin_comp='',coesuccess_date=NULL,vie='',contract_num='' WHERE case_number=@vin";
                            cmd = new SqlCommand(sql2, con);
                            cmd.Parameters.AddWithValue("@vin", txtVIN_Number.Text);
                            cmd.ExecuteNonQuery();
                            cmd.Dispose();

                            string sql3 = "UPDATE tbl_contractbooking SET case_number='',engine_num='',chasis_num='' WHERE case_number=@vin";
                            cmd = new SqlCommand(sql3, con);
                            cmd.Parameters.AddWithValue("@vin", txtVIN_Number.Text);
                            cmd.ExecuteNonQuery();
                            cmd.Dispose();


                        }
                        else if (ddl_StockStatus.SelectedValue == "H")
                        {
                            string sql4 = "UPDATE tbl_vehicle SET caralloc_date=NULL WHERE case_number=@vin";
                            cmd = new SqlCommand(sql4, con);
                            cmd.Parameters.AddWithValue("@vin", txtVIN_Number.Text);
                            cmd.ExecuteNonQuery();
                            cmd.Dispose();
                        }



                        if (ddl_StockStatus.SelectedValue == "R")
                        {
                            string sql5 = "INSERT INTO AUDIT_vehicle(case_num,stock_status,hold_date,reserved_salesman,customer_name,update_status,updated_by,update_date) VALUES (@vin,@stockstatus,@holddate,@ressalesman,@name,@updatestatus,@updateby,@updatedate)";
                            cmd = new SqlCommand(sql5, con);
                            cmd.Parameters.AddWithValue("@vin", txtVIN_Number.Text);
                            cmd.Parameters.AddWithValue("@stockstatus", ddl_StockStatus.SelectedValue);
                            cmd.Parameters.AddWithValue("@holddate", holddate);
                            cmd.Parameters.AddWithValue("@ressalesman", ddl_SalesConsultant.SelectedValue);
                            cmd.Parameters.AddWithValue("@name", Txt_BuyersName.Text);
                            cmd.Parameters.AddWithValue("@updatestatus", "UPDATE");
                            cmd.Parameters.AddWithValue("@updateby", "ADMIN");
                            cmd.Parameters.AddWithValue("@updatedate", DateTime.Now);

                            cmd.ExecuteNonQuery();
                            cmd.Dispose();

                        }
                        else
                        {
                            string sql6 = "INSERT INTO AUDIT_vehicle(case_num,stock_status,update_status,updated_by,update_date) VALUES (@vin,@stockstatus,@updatestatus,@updateby,@updatedate)";
                            cmd = new SqlCommand(sql6, con);
                            cmd.Parameters.AddWithValue("@vin", txtVIN_Number.Text);
                            cmd.Parameters.AddWithValue("@stockstatus", "H");
                            cmd.Parameters.AddWithValue("@updatestatus", "UPDATE");
                            cmd.Parameters.AddWithValue("@updateby", "ADMIN");
                            cmd.Parameters.AddWithValue("@updatedate", DateTime.Now);

                            cmd.ExecuteNonQuery();
                            cmd.Dispose();
                        }


                    }
                    else
                    {

                    }
                }
                catch (Exception ex)
                {
                    throw ex;
                }
                finally
                {
                    con.Close();
                    string script = "alert('Details Updated Successfully');";
                    ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScripts", script, true);
                }
            }
        }
        public void cleartext()
        {
            txtEngine_Number.Text = "";
            Txt_ChasisNumber.Text = "";
            TxtModel.Text = "";
            TxtColour.Text = "";
            Txt_DutyPaid.Text = "";
            ddl_StockStatus.SelectedIndex = 0;
            Txt_HoldDate.Text = "";
            ddl_SalesConsultant.SelectedIndex = 0;
            Txt_BuyersName.Text = "";
            Txt_BuyersNRIC.Text = "";
            Txt_ContractNum.Text = "";
            Txt_BuyersOrderNum.Text = "";

        }


        ///////////////////////////////
        //Batch hold or release
        /////////////////////////////
        
        
        public void dropdown_model()
        {
            SqlConnection con = new SqlConnection(ConnectionString);
            DataTable datatbl = new DataTable();
            DataSet ds = new DataSet();
            SqlDataAdapter sqlad = new SqlDataAdapter();
            try
            {



                con.Open();
                string sql = "SELECT distinct(model_long_description),model_code FROM tbl_model_mst ORDER BY model_long_description";
                cmd = new SqlCommand(sql, con);
                cmd.ExecuteNonQuery();
                sqlad.SelectCommand = cmd;
                sqlad.Fill(ds);
                //while(ds.Tables[0].Rows.Count != 0)
                //{
                //    foreach(string line in ds.Tables[0].Rows)
                //    {
                //        ddlModel.Items.Add(line);
                //    }
                //}
                ddlModel.DataTextField = ds.Tables[0].Columns["model_long_description"].ToString();
                ddlModel.DataValueField = ds.Tables[0].Columns["model_long_description"].ToString();
                ddlModel.DataSource = ds.Tables[0];
                ddlModel.DataBind();
                ddlModel.Items.Insert(0, new ListItem("--Please Select --", "0"));
                ddlModel.SelectedValue = "0";


            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                cmd.Dispose();
                con.Close();
            }
        }
        protected void ddlModel_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConnectionString);
            DataTable datatbl = new DataTable();
            DataSet ds = new DataSet();
            SqlDataAdapter sqlad = new SqlDataAdapter();

            if (ddlModel.SelectedIndex != 0)
            {

                try
                {



                    string model = ddlModel.SelectedValue.Trim();
                    string modelgroup = model.Substring(0, model.IndexOf(" ")).Trim();

                    con.Open();
                    string sql = "SELECT CONCAT(ext_color_code,'-',ext_color_description) as colour,ext_color_code FROM tbl_colorbymodel_mst WHERE modelgroup=@model";
                    cmd = new SqlCommand(sql, con);
                    cmd.Parameters.AddWithValue("@model", modelgroup);
                    sqlad.SelectCommand = cmd;
                    cmd.ExecuteNonQuery();
                    sqlad.Fill(ds);
                    cmd.Dispose();
                    //string color = ds.Tables[0].Columns["colour"].ToString();
                    //while (ds.Tables[0].Rows.Count > 0)
                    //{
                    //    foreach (string line in color)
                    //    {
                    //        ddlColour.Items.Add(line);
                    //    }
                    //}
                    ddlColour.DataTextField = ds.Tables[0].Columns["colour"].ToString();
                    ddlColour.DataValueField = ds.Tables[0].Columns["ext_color_code"].ToString();
                    ddlColour.DataSource = ds.Tables[0];
                    ddlColour.DataBind();
                    ddlColour.Items.Insert(0, new ListItem("--Please Select --", "0"));
                    ddlColour.SelectedValue = "0";

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
            else
            {
                ddlModel.Focus();
            }

        }

        protected void ddlColour_SelectedIndexChanged(object sender, EventArgs e)
        {
            gridview();
        }
        public void gridview()
        {
            Stock_Hold_GridView.Visible = true;
            SqlConnection con = new SqlConnection(ConnectionString);
            DataTable datatbl = new DataTable();
            DataSet ds = new DataSet();
            SqlDataAdapter sqlad = new SqlDataAdapter();

            string model1 = ddlModel.SelectedValue;
            string colour = ddlColour.SelectedValue;
            try
            {

                con.Open();
                string sql = "SELECT case_number,customer_name,format(eta_date,'dd/mm/yyyy' ) as eta_date,format(hold_date,'dd/mm/yyyy')  as hold_date,stock_status FROM tbl_vehicle WHERE model_code=@model AND colour_code=@colour AND case_number is not NULL AND register_num is NULL ORDER BY case_number";
                cmd = new SqlCommand(sql, con);
                cmd.Parameters.AddWithValue("@model", model1);
                cmd.Parameters.AddWithValue("@colour", colour);
                cmd.ExecuteNonQuery();
                sqlad.SelectCommand = cmd;
                sqlad.Fill(ds);



                Stock_Hold_GridView.DataSource = ds.Tables[0];
                Stock_Hold_GridView.DataBind();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                cmd.Dispose();
                con.Close();
            }

        }

        protected void ImageUpdate1_Click(object sender, ImageClickEventArgs e)
        {
            SqlConnection con = new SqlConnection(ConnectionString);
            DataTable datatbl = new DataTable();
            DataSet ds = new DataSet();
            SqlDataAdapter sqlad = new SqlDataAdapter();

            foreach (GridViewRow row in Stock_Hold_GridView.Rows)
            {
                CheckBox check = row.Cells[5].FindControl("chkRow") as CheckBox;
                if (check.Checked && check != null)
                {
                    if (ddlStock_Status.SelectedIndex != 0)
                    {

                        try
                        {
                            if (ddlStock_Status.SelectedValue == "R")
                            {

                                string vinnum = row.Cells[0].Text;

                                con.Open();
                                string sql = "UPDATE tbl_vehicle SET stock_status='R',hold_date = NULL WHERE case_number=@vin";
                                cmd = new SqlCommand(sql, con);
                                cmd.Parameters.AddWithValue("@vin", vinnum);
                                cmd.ExecuteNonQuery();
                            }


                            else
                            {

                                string vinnum = row.Cells[0].Text;


                                con.Open();
                                string sql = "UPDATE tbl_vehicle SET stock_status=@stock,hold_date=@holddate WHERE case_number=@vin";
                                cmd = new SqlCommand(sql, con);
                                cmd.Parameters.AddWithValue("@stock", ddlStock_Status.SelectedValue);
                                cmd.Parameters.AddWithValue("@holddate", DateTime.Now);
                                cmd.Parameters.AddWithValue("@vin", vinnum);
                                cmd.ExecuteNonQuery();


                            }
                        }
                        catch (Exception ex)
                        {
                            throw ex;
                        }
                        finally
                        {
                            con.Close();
                            cmd.Dispose();
                            string script = "alert('Details Updated Successfully');";
                            ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScripts", script, true);
                        }

                    }
                    else
                    {

                    }
                }


                else
                {

                }
                
                }
            gridview();
           }

       
    }
    }
