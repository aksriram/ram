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
    public partial class Car_Allocation : System.Web.UI.Page
    {
        public SqlConnection con;
        public SqlCommand cmd;
        public SqlDataAdapter da;
        public DataSet ds;
        public DataTable dt;
        String ConnectionString;
        public Car_Allocation()
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
                ddsalesman();
                dropdown_model();
                gridAll();
                Img_saveall.Visible = false;
                Img_printall.Visible = false;
                Img_printnt.Visible = false;
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
                    if (name == "Car Allocation")
                    {
                        lblpagetitle.Text = name;
                    }
                }
                // txtregdate.Text = ds.Tables[0].Rows[0][0].ToString();

            }
        }

       /// <summary>
       /// Single Allocation Part
       /// </summary>

        public void clearAll()
        {
            ddlmodel.SelectedIndex = 0;
            ddlcolor.SelectedIndex = 0;
            
            txt_num.Text = "";
            txt_model.Text = "";
            txt_color.Text = "";

            txt_contract.Text = "";
            txt_cdate.Text = "";
            txt_bNRIC.Text = "";
            txt_bname.Text = "";
            txt_bcontact.Text = "";
            txt_baddress.Text = "";
            ddlsales.SelectedIndex = 0;
            txt_fcmpy.Text = "";
            txt_COE.Text = "";
            txt_remarks.Text = "";
        }
        public void clearText()
        {
            txt_contract.Text="";
            txt_cdate.Text = "";
            txt_bNRIC.Text = "";
            txt_bname.Text = "";
            txt_bcontact.Text = "";
            txt_baddress.Text = "";
            ddlsales.SelectedIndex = 0;
            txt_fcmpy.Text = "";
            txt_COE.Text = "";
            txt_remarks.Text = "";


        }
       
        //To get Dropdown value for salesmancode 
        public void ddsalesman()
        {
            SqlConnection con = new SqlConnection(ConnectionString);
            DataTable datatbl = new DataTable();
            DataSet ds = new DataSet();
            SqlDataAdapter sqlad = new SqlDataAdapter();

            try
            {

                con.Open();
                string sql = "SELECT distinct(salesman_code),CONCAT(salesman_code,'(',salesman_desc,')') as sales FROM tbl_salesman ORDER BY salesman_code";
                cmd = new SqlCommand(sql, con);
                cmd.ExecuteNonQuery();
                sqlad.SelectCommand = cmd;
                sqlad.Fill(ds);

                ddlsales.DataTextField = ds.Tables[0].Columns["sales"].ToString();
                ddlsales.DataValueField = ds.Tables[0].Columns["salesman_code"].ToString();
                ddlsales.DataSource = ds.Tables[0];
                ddlsales.DataBind();
                ddlsales.Items.Insert(0, new ListItem("--Please Select --", "0"));
                ddlsales.SelectedValue = "0";


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

        //To get dropdown value for Model 
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
                ddlmodel.DataTextField = ds.Tables[0].Columns["model_long_description"].ToString();
                ddlmodel.DataValueField = ds.Tables[0].Columns["model_long_description"].ToString();
                ddlmodel.DataSource = ds.Tables[0];
                ddlmodel.DataBind();
                ddlmodel.Items.Insert(0, new ListItem("--Please Select --", "0"));
                ddlmodel.SelectedValue = "0";


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

        protected void ddlmodel_SelectedIndexChanged(object sender, EventArgs e)
        {
            dropdown_colour(ddlmodel.SelectedValue.Trim());

            string model1 = ddlmodel.SelectedValue.Trim();
            string colour1 = ddlcolor.SelectedValue.Trim();
            grid_view(model1, colour1);
        }


        //To get dropdown value for colour
        public void dropdown_colour(string model)
        {
            SqlConnection con = new SqlConnection(ConnectionString);
            DataTable datatbl = new DataTable();
            DataSet ds = new DataSet();
            SqlDataAdapter sqlad = new SqlDataAdapter();

            if (ddlmodel.SelectedIndex != 0)
            {
                try
                {

                    string model2 = ddlmodel.SelectedValue.Trim();
                    con.Open();
                    string sql = "SELECT DISTINCT(tbl_vehicle.colour_code) as colour_code , CONCAT(colourcode,'-',colourdesc) as colour FROM tbl_vehicle,tbl_colour_dtl WHERE tbl_vehicle.colour_code = tbl_colour_dtl.colourcode AND  tbl_vehicle.model_code=@model ORDER BY colour_code";
                    cmd = new SqlCommand(sql, con);
                    cmd.Parameters.AddWithValue("@model", model2);
                    cmd.ExecuteNonQuery();
                    sqlad.SelectCommand = cmd;
                    sqlad.Fill(ds);

                    ddlcolor.DataTextField = ds.Tables[0].Columns["colour"].ToString();
                    ddlcolor.DataValueField = ds.Tables[0].Columns["colour_code"].ToString();
                    ddlcolor.DataSource = ds.Tables[0];
                    ddlcolor.DataBind();

                    ddlcolor.Items.Insert(0, new ListItem("--please select--", "0"));
                    ddlcolor.SelectedValue = "0";
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
        }

        protected void ddlcolor_SelectedIndexChanged(object sender, EventArgs e)
        {
            string model1= ddlmodel.SelectedValue.Trim();
            string colour1 = ddlcolor.SelectedValue.Trim();

            grid_view(model1, colour1);
        }
        

        //Gridview based on colour and model 
        public void grid_view(string model,string colour)
        {
            SqlConnection con = new SqlConnection(ConnectionString);
            DataTable datatbl = new DataTable();
            DataSet ds = new DataSet();
            DataSet ds1 = new DataSet();
            SqlDataAdapter sqlad = new SqlDataAdapter();

           
            try
            {
                if (model == "0" && colour == "0")
                {
                    con.Open();
                    string sql = "SELECT case_number,contract_num,model_code,colour_code,format(eta_date,'dd/mm/yyyy') as eta_date FROM tbl_vehicle WHERE case_number is NOT NULL AND (register_num is NULL OR register_num='')  AND (stock_status='R' OR stock_status is NULL OR stock_status='N') ORDER BY model_code,colour_code,eta_date,case_number";
                    cmd = new SqlCommand(sql, con);
                    cmd.ExecuteNonQuery();
                    sqlad.SelectCommand = cmd;
                }
                else if(model != "0" && colour == "0")
                {
                    con.Open();
                    string sql = "SELECT case_number,contract_num,model_code,colour_code,format(eta_date,'dd/mm/yyyy') as eta_date FROM tbl_vehicle WHERE model_code=@model AND case_number is NOT NULL AND (register_num is NULL OR register_num='') AND (stock_status='R' OR stock_status is NULL OR stock_status='N') ORDER BY model_code,colour_code,eta_date,case_number";
                    cmd = new SqlCommand(sql, con);
                    cmd.Parameters.AddWithValue("@model", model);
                    cmd.ExecuteNonQuery();
                    sqlad.SelectCommand = cmd;
                }
                else
                {
                    con.Open();
                    string sql = "SELECT case_number,contract_num,model_code,colour_code,format(eta_date,'dd/mm/yyyy') as eta_date FROM tbl_vehicle WHERE model_code=@model AND colour_code=@colour AND case_number is NOT NULL AND (register_num is NULL OR register_num='') AND (stock_status='R' OR stock_status is NULL OR stock_status='N') ORDER BY model_code,colour_code,eta_date,case_number";
                    cmd = new SqlCommand(sql, con);
                    cmd.Parameters.AddWithValue("@model", model);
                    cmd.Parameters.AddWithValue("@colour", colour);
                    cmd.ExecuteNonQuery();
                    sqlad.SelectCommand = cmd;
                }
                sqlad.Fill(ds1);

                GridView1.DataSource = ds1.Tables[0];
                GridView1.DataBind();



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

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
           string vin = GridView1.SelectedRow.Cells[0].Text;
            vehicle_detail(vin);
        }
        protected void Img_VIN_Click(object sender, ImageClickEventArgs e)
        {
            string vin_num = txt_num.Text;
            vehicle_detail(vin_num);
        }

        protected void Img_contract_Click(object sender, ImageClickEventArgs e)
        {
            string contract = txt_contract.Text;
            contractDetail(contract);

        }

        //get details based on vin number
        public void vehicle_detail(string vin)
        {
            SqlConnection con = new SqlConnection(ConnectionString);
            DataTable datatbl = new DataTable();
            DataSet ds = new DataSet();
            DataSet ds1 = new DataSet();
            DataSet ds2 = new DataSet();
            DataSet ds3 = new DataSet();
            SqlDataAdapter sqlad = new SqlDataAdapter();

          
                //checking stock status

                con.Open();
                string sql = "SELECT case_number,contract_num,stock_status,model_code,colour_code,fin_comp,full_docs,tcoe FROM tbl_vehicle WHERE case_number=@vin";
                cmd = new SqlCommand(sql, con);
                cmd.Parameters.AddWithValue("@vin", vin);
                cmd.ExecuteNonQuery();
                sqlad.SelectCommand = cmd;
                sqlad.Fill(ds);
                 con.Close();

                if (ds.Tables[0].Rows.Count > 0)
                {


                    string status = ds.Tables[0].Rows[0]["stock_status"].ToString();
                    if (status == "H" || status == "K")
                    {
                        string script = "alert('VIN Number is Blocked. Please Release the Stock');";
                        ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScripts", script, true);
                    }
                    txt_num.Text = ds.Tables[0].Rows[0][0].ToString();
                    txt_model.Text = ds.Tables[0].Rows[0][3].ToString();
                    txt_color.Text = ds.Tables[0].Rows[0][4].ToString();
                }
                else
                {
                    string script = "alert('VIN Number not found');";
                    ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScripts", script, true);
                }

                    //Fill contract details  if contract num is not null

                    if (ds.Tables[0].Rows[0][1].ToString() != "")
                    {
                        txt_contract.Text = ds.Tables[0].Rows[0][1].ToString();
                         con.Open();
                        string sql1 = "SELECT Buyer_nric,BuyyersName,CONCAT(address1,',',address2) as address, mobile_num,format(contract_date,'dd-mm-yyyy') as contract_date,salesmancode,modelshort_desc,colour_code,caralloc_remark,fincompcode FROM tbl_salescontract WHERE ContractNo=@contract";
                        cmd = new SqlCommand(sql1, con);
                        cmd.Parameters.AddWithValue("@contract", txt_contract.Text);
                        cmd.ExecuteNonQuery();
                        sqlad.SelectCommand = cmd;
                        sqlad.Fill(ds1);
                         con.Close();

                    if (ds1.Tables[0].Rows.Count > 0)
                    {
                    con.Open();
                        txt_cdate.Text = ds1.Tables[0].Rows[0]["contract_date"].ToString();
                        txt_bNRIC.Text = ds1.Tables[0].Rows[0]["Buyer_nric"].ToString();
                        txt_bname.Text = ds1.Tables[0].Rows[0]["BuyyersName"].ToString();
                        txt_bcontact.Text = ds1.Tables[0].Rows[0]["mobile_num"].ToString();
                        txt_baddress.Text = ds1.Tables[0].Rows[0]["address"].ToString();
                        ddlsales.SelectedValue = ds1.Tables[0].Rows[0]["salesmancode"].ToString();
                        txt_fcmpy.Text = ds1.Tables[0].Rows[0]["fincompcode"].ToString();
                        txt_remarks.Text = ds1.Tables[0].Rows[0]["caralloc_remark"].ToString();
                    con.Close();
                    }
                    else
                    {
                        string script = "alert('Contract Number not found');";
                        ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScripts", script, true);
                    }
                //To get actual coe taken date 
                con.Open();
                    string sql2 = "SELECT format(taken_date,'dd-mm-yyyy') as taken_date FROM tbl_coestock_dtl WHERE contract_num=@contract";
                    cmd = new SqlCommand(sql2, con);
                    cmd.Parameters.AddWithValue("@contract", txt_contract.Text);
                    cmd.ExecuteNonQuery();
                    sqlad.SelectCommand = cmd;
                    sqlad.Fill(ds2);
                con.Close();

                    if(ds2.Tables[0].Rows.Count > 0)
                    {
                        if(ds2.Tables[0].Rows[0][0].ToString() != "")
                        {
                            txt_COE.Text = ds2.Tables[0].Rows[0][0].ToString();
                        }
                        else
                        {
                            txt_COE.Text = "";
                        }
                    }
                    else
                    {
                        txt_COE.Text = "";
                    }

                    //To get finance company if its null
                    if (txt_fcmpy.Text == "")
                    {
                          con.Open();
                        string sql3 = "SELECT FinanceCompany FROM tbl_contractbooking WHERE ContractNo=@contract";
                        cmd = new SqlCommand(sql3, con);
                        cmd.Parameters.AddWithValue("@contract", txt_contract.Text);
                        sqlad.SelectCommand = cmd;
                        sqlad.Fill(ds3);
                         con.Close();
                        if (ds3.Tables[0].Rows.Count > 0)
                        {
                            txt_fcmpy.Text = ds3.Tables[0].Rows[0][0].ToString();

                        }
                    }
                   

                }
                else
                {
                    clearText();
                }
            }
           
        

        //Get details based on contract number
        public void contractDetail(string contract)
        {
            SqlConnection con = new SqlConnection(ConnectionString);
            DataTable datatbl = new DataTable();
            DataSet ds = new DataSet();
            DataSet ds1 = new DataSet();
            DataSet ds2 = new DataSet();
            DataSet ds3 = new DataSet();
            SqlDataAdapter sqlad = new SqlDataAdapter();

           
                if (txt_contract.Text != "")
                {
                    con.Open();
                    string sql1 = "SELECT Buyer_nric,BuyyersName,CONCAT(address1,',',address2) as address, mobile_num,FORMAT(contract_date,'dd-mm-yyyy') as contract_date,salesmancode,modelshort_desc,colour_code,caralloc_remark,fincompcode FROM tbl_salescontract WHERE ContractNo=@contract";
                    cmd = new SqlCommand(sql1, con);
                    cmd.Parameters.AddWithValue("@contract", txt_contract.Text);
                    cmd.ExecuteNonQuery();
                    sqlad.SelectCommand = cmd;
                    sqlad.Fill(ds1);
                con.Close();

                    if (ds1.Tables[0].Rows.Count > 0)
                    {
                        txt_cdate.Text = ds1.Tables[0].Rows[0]["contract_date"].ToString();
                        txt_bNRIC.Text = ds1.Tables[0].Rows[0]["Buyer_nric"].ToString();
                        txt_bname.Text = ds1.Tables[0].Rows[0]["BuyyersName"].ToString();
                        txt_bcontact.Text = ds1.Tables[0].Rows[0]["mobile_num"].ToString();
                        txt_baddress.Text = ds1.Tables[0].Rows[0]["address"].ToString();
                        ddlsales.SelectedValue = ds1.Tables[0].Rows[0]["salesmancode"].ToString();
                        txt_fcmpy.Text = ds1.Tables[0].Rows[0]["fincompcode"].ToString();
                        txt_remarks.Text = ds1.Tables[0].Rows[0]["caralloc_remark"].ToString();
                    }
                    else
                    {
                        string script = "alert('Contract Number not found');";
                        ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScripts", script, true);
                    }

                //To get actual coe taken date 
                con.Open();
                    string sql2 = "SELECT FORMAT(taken_date,'dd-mm-yyyy') as taken_date FROM tbl_coestock_dtl WHERE contract_num=@contract";
                    cmd = new SqlCommand(sql2, con);
                    cmd.Parameters.AddWithValue("@contract", txt_contract.Text);
                    cmd.ExecuteNonQuery();
                    sqlad.SelectCommand = cmd;
                    sqlad.Fill(ds2);
                con.Close();

                    if (ds2.Tables[0].Rows.Count > 0)
                    {
                        if (ds2.Tables[0].Rows[0][0].ToString() != "")
                        {
                            txt_COE.Text = ds2.Tables[0].Rows[0][0].ToString();
                        }
                        else
                        {
                            txt_COE.Text = "";
                        }
                    }
                    else
                    {
                        txt_COE.Text = "";
                    }

                    //To get finance company if its null
                    if (txt_fcmpy.Text == "")
                    {
                    con.Open();
                        string sql3 = "SELECT FinanceCompany FROM tbl_contractbooking WHERE ContractNo=@contract";
                        cmd = new SqlCommand(sql3, con);
                        cmd.Parameters.AddWithValue("@contract", txt_contract.Text);
                        sqlad.SelectCommand = cmd;
                        sqlad.Fill(ds3);
                    con.Close();

                        if (ds3.Tables[0].Rows.Count > 0)
                        {
                            txt_fcmpy.Text = ds3.Tables[0].Rows[0][0].ToString();

                        }
                    }
                }

            }
           
        

        protected void img_allocate_Click(object sender, ImageClickEventArgs e)
        {
            SqlConnection con = new SqlConnection(ConnectionString);
            DataTable datatbl = new DataTable();
            DataSet ds = new DataSet();
            DataSet ds1 = new DataSet();
            DataSet ds2 = new DataSet();
            DataSet ds3 = new DataSet();
            DataSet ds4 = new DataSet();
            SqlDataAdapter sqlad = new SqlDataAdapter();

           // string script = "alert('Are you sure to perform this allocation?');";
            //ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScripts", script, true);

            if (ddlsales.SelectedIndex == 0)
            {
                string script1 = "alert('Please select salesman code');";
                ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScripts", script1, true);

            }
            else
            {
                    //To get vehile details based on vin number
                   

                    con.Open();
                    string sql = "SELECT stock_status,engine_num,chasis_num,register_num,contract_num,vehicle_num FROM tbl_vehicle WHERE case_number=@vin";
                    cmd = new SqlCommand(sql, con);
                    cmd.Parameters.AddWithValue("@vin",txt_num.Text);
                    cmd.ExecuteNonQuery();
                    sqlad.SelectCommand = cmd;
                    sqlad.Fill(ds);

                     con.Close();

                if(ds.Tables[0].Rows.Count > 0)
                {
                    //To get contract details based on contrcat number
                   
                        con.Open();
                        string sql1 = "SELECT * FROM tbl_salescontract WHERE ContractNo=@contract";
                        cmd = new SqlCommand(sql1, con);
                        cmd.Parameters.AddWithValue("@contract",txt_contract.Text);
                        cmd.ExecuteNonQuery();
                        sqlad.SelectCommand = cmd;
                        sqlad.Fill(ds1);

                         con.Close();
                  
                    //Check whether contract number exist or not
                    if(ds1.Tables[0].Rows.Count > 0)
                    {

                        string coesuccess = ds1.Tables[0].Rows[0]["coesuccess_date"].ToString();
                        
                        //check whether coe is success or not
                        if(coesuccess != " " || coesuccess != null)
                        {
                            //check whether stock status 
                            string status = ds.Tables[0].Rows[0]["stock_status"].ToString();
                            if(status != "H" || status != "K")
                            {
                                //check whether the vehicle is registered 
                                string regnum = ds.Tables[0].Rows[0]["register_num"].ToString();
                                if(regnum == "" || regnum== null)
                                {
                                    //check whether model match 
                                    string model = ds1.Tables[0].Rows[0]["modelshort_desc"].ToString();
                                    if(model == txt_model.Text)
                                    {
                                        //check whether colour match
                                        string colour = ds1.Tables[0].Rows[0]["colour_code"].ToString();
                                        if(colour == txt_color.Text)
                                        {

                                            try
                                            {
                                                con.Open();
                                                string sql3 = " SELECT contract_num,stock_remark,stock_status,hold_date,customer_name,caralloc_date,case_remark,reserved_salesman,fin_comp,coesuccess_date,vie,register_num FROM tbl_vehicle WHERE contract_num=@contract ";
                                                cmd = new SqlCommand(sql3, con);
                                                cmd.Parameters.AddWithValue("@contract", txt_contract.Text);
                                                cmd.ExecuteNonQuery();
                                                sqlad.SelectCommand = cmd;
                                                sqlad.Fill(ds2);

                                              
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

                                            string vehicle = ds.Tables[0].Rows[0]["vehicle_num"].ToString();
                                            string engine = ds.Tables[0].Rows[0]["engine_num"].ToString();
                                            string chasis = ds.Tables[0].Rows[0]["chasis_num"].ToString();

                                            //check whether contract number is registered
                                            if (ds2.Tables[0].Rows.Count > 0)
                                            {
                                                string reg = ds2.Tables[0].Rows[0]["register_num"].ToString();
                                                if (reg == "" || reg == null)
                                                {
                                                    




                                                    //if contract not registered , clear the old contract details from the vehicle table  
                                                    try
                                                    {
                                                        con.Open();
                                                        string sql2 = "UPDATE tbl_vehicle SET contract_num='',stock_remark='',stock_status='',hold_date=NULL,customer_name='',caralloc_date = NULL,case_remark='',reserved_salesman='',fin_comp='',coesuccess_date = NULL,vie ='',register_num='' WHERE contract_num=@contract ";
                                                        cmd = new SqlCommand(sql2, con);
                                                        cmd.Parameters.AddWithValue("@contract", txt_contract.Text);
                                                        cmd.ExecuteNonQuery();
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
                                                    goto end;
                                                    
                                                }
                                            }
                                                //update contract table with vehicle details 
                                                try
                                                        {
                                                                con.Open();
                                                             string sql3 = "UPDATE tbl_salescontract SET vehicle_num=@vehicle,engine_num=@engine,chasis_num=@chasis,case_num=@vin,caralloc_remark=@remark WHERE ContractNo=@contract ";
                                                            cmd = new SqlCommand(sql3, con);
                                                            cmd.Parameters.AddWithValue("@vehicle", vehicle);
                                                            cmd.Parameters.AddWithValue("@engine", engine);
                                                            cmd.Parameters.AddWithValue("@chasis", chasis);
                                                            cmd.Parameters.AddWithValue("@vin", txt_num.Text.Trim());
                                                            cmd.Parameters.AddWithValue("@remark", txt_remarks.Text.Trim());
                                                            cmd.Parameters.AddWithValue("@contract", txt_contract.Text.Trim());
                                                            cmd.ExecuteNonQuery();
                                                        }
                                                        catch(Exception ex)
                                                        {
                                                            throw ex;
                                                        }
                                                    finally
                                                    {
                                                        con.Close();
                                                    }


                                                    //update vehicle table with contract details 
                                                    try
                                                    {
                                                        con.Open();
                                                        DateTime success = DateTime.Parse(txt_COE.Text);
                                                            string sql3 = "UPDATE tbl_vehicle SET contract_num=@contract,reserved_salesman=@salescode,progress_status=@pstatus,fin_comp=@fin,stock_status=@stock,caralloc_date=@caralloc,customer_name=@name,coesuccess_date=@success,vie=@vie WHERE case_number=@vin";
                                                            cmd = new SqlCommand(sql3, con);
                                                            cmd.Parameters.AddWithValue("@contract", txt_contract.Text.Trim());
                                                            cmd.Parameters.AddWithValue("@salescode", ddlsales.SelectedValue);
                                                            cmd.Parameters.AddWithValue("@pstatus", "R");
                                                            cmd.Parameters.AddWithValue("@fin", txt_fcmpy.Text.Trim());
                                                            cmd.Parameters.AddWithValue("@stock", "H");
                                                            cmd.Parameters.AddWithValue("@caralloc", DateTime.Now);
                                                            cmd.Parameters.AddWithValue("@name", txt_bname.Text.Trim());
                                                            cmd.Parameters.AddWithValue("@success", success);
                                                            cmd.Parameters.AddWithValue("@vie", "R");
                                                            cmd.Parameters.AddWithValue("@vin", txt_num.Text.Trim());
                                                            cmd.ExecuteNonQuery();
                                                        }
                                                        catch(Exception ex)
                                                        {
                                                            throw ex;
                                                        }
                                                    finally
                                                    {
                                                        con.Close();
                                                    }


                                                    //Insert deatails to audit vehicle table
                                                    try
                                                    {
                                                        con.Open();
                                                        DateTime coesucc = DateTime.Parse(coesuccess);
                                                        string sql4 = " INSERT INTO tbt_AUDIT_vehicle(contract_num,stock_status,progress_status,customer_name,reserved_salesman,caralloc_date,case_number,vie,coe_success_date,finance_comp,updated_status,updated_by,update_date) VALUES (@contract,@stockstatus,@progressstatus,@name,@salescode,@todaydate,@vin,@vie,@successdate,@fincomp,@updatestat,@updateby,@todaydate1)";
                                                            cmd = new SqlCommand(sql4, con);
                                                            cmd.Parameters.AddWithValue("@contract", txt_contract.Text.Trim());
                                                            cmd.Parameters.AddWithValue("@stockstatus", "H");
                                                            cmd.Parameters.AddWithValue("@progressstatus", "R");
                                                            cmd.Parameters.AddWithValue("@name", txt_bname.Text.Trim());
                                                            cmd.Parameters.AddWithValue("@salescode", ddlsales.SelectedValue);
                                                            cmd.Parameters.AddWithValue("@todaydate", DateTime.Now);
                                                            cmd.Parameters.AddWithValue("@vin", txt_num.Text.Trim());
                                                            cmd.Parameters.AddWithValue("@vie", "R");
                                                            cmd.Parameters.AddWithValue("@successdate",coesucc);
                                                            cmd.Parameters.AddWithValue("@fincomp", txt_fcmpy.Text.Trim());
                                                            cmd.Parameters.AddWithValue("@updatestat", "UPDATE");
                                                            cmd.Parameters.AddWithValue("@updateby", "ADMIN");
                                                            cmd.Parameters.AddWithValue("@todaydate1",System.DateTime.Now);
                                                            cmd.ExecuteNonQuery();
                                                        }
                                                        catch(Exception ex)
                                                        {
                                                            throw ex;
                                                        }
                                                    finally
                                                    {
                                                        con.Close();
                                                    }


                                                    //update tbl_contractbooking table
                                                   
                                                        con.Open();
                                                        string sql5 = "SELECT Buyer_orderno,case_number,engine_num,chasis_num,Model,colour FROM tbl_contractbooking WHERE ContractNo=@contract";
                                                        cmd = new SqlCommand(sql5, con);
                                                        cmd.Parameters.AddWithValue("@contract", txt_contract.Text.Trim());
                                                        cmd.ExecuteNonQuery();
                                                        sqlad.SelectCommand = cmd;
                                                        sqlad.Fill(ds3);
                                                        con.Close();


                                                    if (ds3.Tables[0].Rows.Count > 0)
                                                        {
                                                            //update tbl_contractbooking table
                                                            try
                                                            {
                                                            con.Open();
                                                                string sql6 = "UPDATE tbl_contractbooking SET case_number=@vin,engine_num=@engine,chasis_num=@chasis WHERE ContractNo=@contract";
                                                                cmd = new SqlCommand(sql6, con);
                                                                cmd.Parameters.AddWithValue("@vin", txt_num.Text.Trim());
                                                                cmd.Parameters.AddWithValue("@engine", engine);
                                                                cmd.Parameters.AddWithValue("@chasis", chasis);
                                                                cmd.Parameters.AddWithValue("@contract", txt_contract.Text.Trim());
                                                                cmd.ExecuteNonQuery();
                                                            }
                                                            catch(Exception ex)
                                                            {
                                                                throw ex;
                                                            }
                                                        finally
                                                        {
                                                            con.Close();
                                                        }


                                                        //Update coesock table
                                                        try
                                                        {
                                                            con.Open();
                                                                string orderno = ds3.Tables[0].Rows[0]["Buyer_orderno"].ToString();
                                                                string sql7 = "UPDATE tbl_coesock SET contract_num=@contract WHERE Buyer_order_no=@orderno AND contract_num is NULL";
                                                                cmd = new SqlCommand(sql7, con);
                                                                cmd.Parameters.AddWithValue("@contract", txt_contract.Text.Trim());
                                                                cmd.Parameters.AddWithValue("@orderno", orderno);
                                                                cmd.ExecuteNonQuery();
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

                                                    //Get coestock details
                                                    try
                                                    {
                                                        con.Open();
                                                        string sql8 = "SELECT certificate_num,bid_date,coe_amount FROM tbl_coestock_dtl WHERE contract_num=@contract";
                                                        cmd = new SqlCommand(sql8, con);
                                                        cmd.Parameters.AddWithValue("@contract", txt_contract.Text.Trim());
                                                        cmd.ExecuteNonQuery();
                                                        sqlad.SelectCommand = cmd;
                                                        sqlad.Fill(ds4);
                                                    }
                                                    catch(Exception ex)
                                                    {
                                                        throw ex;
                                                    }
                                                    finally
                                                    {
                                                        con.Close();
                                                    }



                                                        string certno = "";
                                                        string biddate = "";
                                                        decimal coeamt = 0;
                                                        if (ds4.Tables[0].Rows.Count > 0)
                                                        {
                                                             certno = ds4.Tables[0].Rows[0]["certificate_num"].ToString();
                                                             biddate= ds4.Tables[0].Rows[0]["bid_date"].ToString();
                                                             coeamt=Convert.ToDecimal( ds4.Tables[0].Rows[0]["coe_amount"]);
                                                        }
                                                        else
                                                        {
                                                             certno = "";
                                                             biddate = "";
                                                             coeamt = 0;
                                                       }
                                                        try
                                                        {
                                                        con.Open();
                                                            string sql9 = "UPDATE tbl_vehicle SET certificate_no=@certno,coe_biddate=@biddate,coe_amount=@amount,progress_status=@status,last_updated=@lastupdate,last_updateduser=@updateuser WHERE contract_num=@contract";
                                                            cmd = new SqlCommand(sql9, con);
                                                            cmd.Parameters.AddWithValue("@certno", certno);
                                                            cmd.Parameters.AddWithValue("@biddate", biddate);
                                                            cmd.Parameters.AddWithValue("@amount", coeamt);
                                                            cmd.Parameters.AddWithValue("@status", "L");
                                                            cmd.Parameters.AddWithValue("@lastupdate", DateTime.Now);
                                                            cmd.Parameters.AddWithValue("@updateuser", "USER");
                                                            cmd.Parameters.AddWithValue("@contract", txt_contract.Text.Trim());
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

                                                    string script2 = "alert('You Have Allocated Vehicle to Contract ');";
                                                    ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScripts", script2, true);
                                                    string model1 = ddlmodel.SelectedValue;
                                                    string colour1 = ddlcolor.SelectedValue;
                                                    grid_view(model1,colour1);
                                                    clearAll();
                                                    

                                                
                                            
                                        }
                                        else
                                        {
                                            string script4 = "alert('VIN Number does not match the colour selected for this contract');";
                                            ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScripts", script4, true);

                                        }

                                    }
                                    else
                                    {
                                        string script5 = "alert('VIN Number does not match the model selected for this contract');";
                                        ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScripts", script5, true);

                                    }

                                }
                                else
                                {
                                    string script6 = "alert('Vin number is registered');";
                                    ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScripts", script6, true);

                                }


                            }
                            else
                            {
                                string script7 = "alert('Vin number is blocked .Please release the stock');";
                                ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScripts", script7, true);

                            }

                        }
                        else
                        {
                            string script8 = "alert('COE is not secured for this contract');";
                            ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScripts", script8, true);

                        }

                    }
                    else
                    {
                        string script9 = "alert('Contract number not found');";
                        ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScripts", script9, true);

                    }
                }
                else
                {
                    string script10 = "alert('Vin number not found');";
                    ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScripts", script10, true);

                }

            }
            end:
            string script3 = "alert('The VIN number is registered, reallocation is not allowed');";
            ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScripts", script3, true);

        }


        protected void img_clear_Click(object sender, ImageClickEventArgs e)
        {
            clearAll();
        }
        protected void img_drop_Click(object sender, ImageClickEventArgs e)
        {
            SqlConnection con = new SqlConnection(ConnectionString);
            DataTable datatbl = new DataTable();
            DataSet ds = new DataSet();
            DataSet ds1 = new DataSet();
            SqlDataAdapter sqlad = new SqlDataAdapter();

            //string script = "alert('Are you sure to drop this allocation?');";
            //ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScripts", script, true);

          
            con.Open();
            string sql = "SELECT * FROM tbl_salescontract WHERE ContractNo=@contract";
            cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@contract", txt_contract.Text.Trim());
            cmd.ExecuteNonQuery();
            sqlad.SelectCommand = cmd;
            sqlad.Fill(ds);
            con.Close();

            if (ds.Tables[0].Rows.Count > 0)
            {
                con.Open();
                string sql1 = "SELECT case_number,contract_num,stock_remark,stock_status,hold_date,customer_name,caralloc_date,case_remark,reserved_salesman,fin_comp,coesuccess_date,vie,register_num,ready_date FROM tbl_vehicle WHERE contract_num=@contract";
                cmd = new SqlCommand(sql1, con);
                cmd.Parameters.AddWithValue("@contract", txt_contract.Text.Trim());
                cmd.ExecuteNonQuery();
                sqlad.SelectCommand = cmd;
                sqlad.Fill(ds1);
                con.Close();

                if (ds1.Tables[0].Rows.Count > 0)
                {
                    //check whether contract num is regoster or not
                    string reg = ds1.Tables[0].Rows[0]["register_num"].ToString();
                    if(reg == "" || reg == null)
                    {
                        //check whether vehicle is ready for delivery
                        string readydate = ds1.Tables[0].Rows[0]["ready_date"].ToString();
                        if (readydate=="" || readydate == null)
                        {
                            //if not register, clear the old vehicle details
                            try
                            {
                                con.Open();
                                string sql2 = "UPDATE tbl_vehicle SET contract_num='',stock_remark='',stock_status='',hold_date=Null,customer_name='',caralloc_date = Null,case_remark='',reserved_salesman='',fin_comp='',full_docs='',coesuccess_date =Null,vie='',progress_status='',tcoe='',certificate_no='',coe_biddate=NULL,coe_amount='',last_updated=@today,last_updateduser=@user WHERE contract_num=@contract";
                                cmd = new SqlCommand(sql2, con);
                                cmd.Parameters.AddWithValue("@today",DateTime.Now);
                                cmd.Parameters.AddWithValue("@user", "USER");
                                cmd.Parameters.AddWithValue("@contract", txt_contract.Text.Trim());
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

                            //insert the details to audit_vehicle table
                            con.Open();
                            string vin = ds1.Tables[0].Rows[0]["case_number"].ToString();
                            string sql3 = "INSERT INTO tbt_AUDIT_vehicle(case_number,updated_status,updated_by,update_date) VALUES (@vin,@status,@user,@date)";
                            cmd = new SqlCommand(sql3, con);
                            cmd.Parameters.AddWithValue("@vin", vin);
                            cmd.Parameters.AddWithValue("@status", "DELETE");
                            cmd.Parameters.AddWithValue("@user", "USER");
                            cmd.Parameters.AddWithValue("@date", DateTime.Now);
                            cmd.ExecuteNonQuery();
                            con.Close();

                            //clear  tblsalescontract table details based on contract num
                            try
                            {
                                con.Open();
                                string sql4 = "UPDATE tbl_salescontract SET vehicle_num=null,engine_num=null,chasis_num=null,case_num=null,caralloc_remark='' WHERE ContractNo=@contract";
                                cmd = new SqlCommand(sql4, con);
                                 cmd.Parameters.AddWithValue("@contract", txt_contract.Text.Trim());
                                cmd.ExecuteNonQuery();
                            }
                            catch(Exception ex)
                            {
                                throw ex;
                            }
                            finally
                            {
                                con.Close();
                            }

                            //clear tblcontractbooking table details
                            try
                            {
                                con.Open();
                                string sql5 = "UPDATE tbl_contractbooking SET engine_num=NULL,chasis_num=null,case_number=null WHERE ContractNo=@contract";
                                cmd = new SqlCommand(sql5, con);
                                cmd.Parameters.AddWithValue("@contract", txt_contract.Text.Trim());
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

                            string script4 = "alert('Vehicle allocated to contract " + txt_contract.Text + " was dropped');";
                            ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScripts", script4, true);
                            string model1 = ddlmodel.SelectedValue;
                            string colour1 = ddlcolor.SelectedValue;
                            grid_view(model1, colour1);
                            clearAll();
                        }
                        else
                        {
                            string script3 = "alert('The vehicle allocated to contract " + txt_contract.Text + " was ready for delivery. Reallocation is not allowed');";
                            ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScripts", script3, true);
                        }
                    }
                    else
                    {
                        string script2 = "alert('The VIN number for Contract " +txt_contract.Text+ " is Registered, Reallocation is not allowed');";
                        ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScripts", script2, true);
                    }
                }
            }
            else
            {
                string script1 = "alert('Contract Number not Found');";
                ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScripts", script1, true);
            }
        }


        ////////////////////////////////
        //Allocate All
        ///////////////////////////////////////

        public void gridAll()
        {
          SqlConnection con = new SqlConnection(ConnectionString);
            DataTable datatbl = new DataTable();
            DataSet ds = new DataSet();
       
            SqlDataAdapter sqlad = new SqlDataAdapter();

            con.Open();
            string sql = "SELECT FORMAT(contract_date,'dd-mm-yyyy') as contract_date,ContractNo,BuyyersName,modelshort_desc,colour_code FROM tbl_salescontract WHERE coesuccess_date is NOT NULL AND RegistrationDate is NULL AND cancelled_date is NULL AND (case_num='' OR case_num is NULL) ORDER BY modelshort_desc,colour_code";
            cmd = new SqlCommand(sql, con);
            cmd.ExecuteNonQuery();
            sqlad.SelectCommand = cmd;
            sqlad.Fill(ds);

           Gridview_all.DataSource = ds.Tables[0];
            Gridview_all.DataBind(); 

        }
        

        protected void Img_allocte_Click(object sender, ImageClickEventArgs e)
        {
            SqlConnection con = new SqlConnection(ConnectionString);
            DataTable datatbl = new DataTable();
            DataSet ds = new DataSet();
            DataSet ds1 = new DataSet();
            DataSet ds2 = new DataSet();
            DataSet ds3 = new DataSet();
            DataSet ds4 = new DataSet();
            SqlDataAdapter sqlad = new SqlDataAdapter();

            string strSQLExclude = "";
            for ( int i = 0; i <= Gridview_all.Rows.Count - 1; i++)
            {
                CheckBox chkExclude = (CheckBox)Gridview_all.Rows[i].FindControl("chk");
                if (chkExclude.Checked == true)
                {
                    strSQLExclude += "AND ContractNo <>  '" + Gridview_all.Rows[i].Cells[1].Text + "' ";
                }
            }

            //hide view all grid view
            Gridview_all.Visible = false;

            //clear the temp_allocate and temp_ntallocate table
            con.Open();
            string sql6 = "DELETE FROM tbl_temp_allocated";
            cmd = new SqlCommand(sql6, con);
            cmd.ExecuteNonQuery();

            string sql7 = "DELETE FROM tbl_temp_notallocated";
            cmd = new SqlCommand(sql7, con);
            cmd.ExecuteNonQuery();
            con.Close();


            //get contract details dont have case number based on the model and colour
            con.Open();
            string sql = "SELECT  modelshort_desc,colour_code FROM tbl_salescontract WHERE coesuccess_date is NOT NULL AND RegistrationDate is NULL AND cancelled_date is NULL AND (case_num='' OR case_num is NULL) " + strSQLExclude + " ORDER BY modelshort_desc,colour_code ";
            cmd = new SqlCommand(sql, con);
            cmd.ExecuteNonQuery();
            sqlad.SelectCommand = cmd;
            sqlad.Fill(ds4);
            con.Close();

            //add a case number coloumn to dataset
            //ds.Tables[0].Columns.Add("case_number");

            if (ds4.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow dr in ds4.Tables[0].Rows)
                {
                    string model = dr["modelshort_desc"].ToString();
                    string colour = dr["colour_code"].ToString();
                    //get list of contract with this model and colour list
                    con.Open();
                    string sql1 = "SELECT modelshort_desc,colour_code,ContractNo,contract_date,BuyyersName FROM tbl_salescontract WHERE coesuccess_date is NOT NULL AND RegistrationDate is NULL AND modelshort_desc=@model AND colour_code=@colour AND cancelled_date is NULL AND (case_num='' OR case_num is NULL) " + strSQLExclude + " ORDER BY contract_date,ContractNo ";
                    cmd = new SqlCommand(sql1, con);
                    cmd.Parameters.AddWithValue("@model", model);
                    cmd.Parameters.AddWithValue("@colour", colour);
                    cmd.ExecuteNonQuery();
                    sqlad.SelectCommand = cmd;
                    sqlad.Fill(ds);
                    con.Close();

                    //add a case number coloumn to dataset
                    ds.Tables[0].Columns.Add("case_number");

                    //get the available case number list
                    con.Open();
                    string sql2 = "SELECT case_number FROM tbl_vehicle WHERE model_code=@model AND colour_code=@colour AND case_number is not NULL AND register_num is NULL AND contract_num is NULL AND (stock_status is NULL OR stock_status <> 'H' OR stock_status <> 'K' OR stock_status='N')  ORDER BY eta_date,case_number ";
                    cmd = new SqlCommand(sql2, con);
                    cmd.Parameters.AddWithValue("@model", model);
                    cmd.Parameters.AddWithValue("@colour", colour);
                    cmd.ExecuteNonQuery();
                    sqlad.SelectCommand = cmd;
                    sqlad.Fill(ds1);
                    con.Close();

                    //assign each case number to a contract number
                    for (int i = 0;i< ds1.Tables[0].Rows.Count ; i++)
                    {
                        string casenum = ds1.Tables[0].Rows[i]["case_number"].ToString();
                        ds.Tables[0].Rows[i]["case_number"] = casenum;

                        if (i == ds.Tables[0].Rows.Count - 1)
                        {
                            break;
                        }
                    }
                    for (int i = 0;i <  ds.Tables[0].Rows.Count  ; i++)
                    {
                        if (ds.Tables[0].Rows[i]["case_number"].ToString() != "")
                        {
                            //insert in temp_allocated table
                            string contract = ds.Tables[0].Rows[i]["ContractNo"].ToString();
                            string contdate = ds.Tables[0].Rows[i]["contract_date"].ToString();
                            DateTime date = DateTime.Parse(contdate);
                            string name = ds.Tables[0].Rows[i]["BuyyersName"].ToString();
                            string modelcode = ds.Tables[0].Rows[i]["modelshort_desc"].ToString();
                            string colourcode = ds.Tables[0].Rows[i]["colour_code"].ToString();
                            string vin = ds.Tables[0].Rows[i]["case_number"].ToString();

                            con.Open();
                            string sql3 = "INSERT INTO tbl_temp_allocated(contract_no,contract_date,customer_name,model_code,colour_code,case_num) VALUES (@contract,@date,@name,@model,@colour,@vin)";
                            cmd = new SqlCommand(sql3, con);
                            cmd.Parameters.AddWithValue("@contract", contract);
                            cmd.Parameters.AddWithValue("@date", date);
                            cmd.Parameters.AddWithValue("@name", name);
                            cmd.Parameters.AddWithValue("@model", modelcode);
                            cmd.Parameters.AddWithValue("@colour", colourcode);
                            cmd.Parameters.AddWithValue("@vin", vin);

                            cmd.ExecuteNonQuery();
                            con.Close();

                        }
                        else
                        {
                            //insert in temp_notallocated table
                            string contract = ds.Tables[0].Rows[i]["ContractNo"].ToString();
                            string contdate = ds.Tables[0].Rows[i]["contract_date"].ToString();
                            DateTime date = DateTime.Parse(contdate);
                            string name = ds.Tables[0].Rows[i]["BuyyersName"].ToString();
                            string modelcode = ds.Tables[0].Rows[i]["modelshort_desc"].ToString();
                            string colourcode = ds.Tables[0].Rows[i]["colour_code"].ToString();


                            con.Open();
                            string sql3 = "INSERT INTO tbl_temp_notallocated(contract_no,contract_date,customer_name,model_code,colour_code) VALUES (@contract,@date,@name,@model,@colour)";
                            cmd = new SqlCommand(sql3, con);
                            cmd.Parameters.AddWithValue("@contract", contract);
                            cmd.Parameters.AddWithValue("@date", date);
                            cmd.Parameters.AddWithValue("@name", name);
                            cmd.Parameters.AddWithValue("@model", modelcode);
                            cmd.Parameters.AddWithValue("@colour", colourcode);

                            cmd.ExecuteNonQuery();
                            con.Close();
                        }
                    }
                    ds.Tables[0].Clear();
                    ds.Tables[0].Columns.Remove("case_number");
                    ds1.Tables[0].Clear();
                }
                

                //display allocted
                con.Open();
                string sql4 = "SELECT contract_no,FORMAT(contract_date,'dd-mm-yyyy') as contract_date ,customer_name,model_code,colour_code,case_num FROM tbl_temp_allocated ORDER BY model_code,colour_code,contract_date,contract_no ";
                cmd = new SqlCommand(sql4, con);
                cmd.ExecuteNonQuery();
                sqlad.SelectCommand = cmd;
                sqlad.Fill(ds2);
                con.Close();

                GridView_allocated.DataSource = ds2.Tables[0];
                GridView_allocated.DataBind();
                if (GridView_allocated.Rows.Count > 0)
                {
                    lbl_allocate.Visible = true;
                    GridView_allocated.Visible = true;
                    Img_saveall.Visible = true;
                    Img_printall.Visible = true;
                }
                else
                {
                    GridView_allocated.Visible =false;
                    Img_saveall.Visible = false;
                    Img_printall.Visible = false;
                }

                //display not allocted
                con.Open();
                string sql5 = "SELECT contract_no,FORMAT(contract_date,'dd-mm-yyyy') as contract_date,customer_name,model_code,colour_code FROM tbl_temp_notallocated ORDER BY model_code,colour_code,contract_date,contract_no ";
                cmd = new SqlCommand(sql5, con);
                cmd.ExecuteNonQuery();
                sqlad.SelectCommand = cmd;
                sqlad.Fill(ds3);
                con.Close();

                GridView_ntallocate.DataSource = ds3.Tables[0];
                GridView_ntallocate.DataBind();

                if (GridView_ntallocate.Rows.Count > 0)
                {
                    lbl_ntallocate.Visible = true;
                    GridView_ntallocate.Visible = true;
                    Img_printnt.Visible = true;
                }
                else
                {
                    GridView_ntallocate.Visible = false;
                    Img_printnt.Visible = false;
                }
            }
        }

        protected void Img_saveall_Click(object sender, ImageClickEventArgs e)
        {
            SqlConnection con = new SqlConnection(ConnectionString);
            DataTable datatbl = new DataTable();
            DataSet ds = new DataSet();
            DataSet ds1 = new DataSet();
            DataSet ds2 = new DataSet();
            DataSet ds3 = new DataSet();
            DataSet ds4 = new DataSet();
            SqlDataAdapter sqlad = new SqlDataAdapter();


            for (int i = 0; i < GridView_allocated.Rows.Count; i++)
            {
                string contractno = GridView_allocated.Rows[i].Cells[1].Text.Trim();
                string modeldesc= GridView_allocated.Rows[i].Cells[3].Text.Trim();
                string colourdesc= GridView_allocated.Rows[i].Cells[4].Text.Trim();
                string vinnum= GridView_allocated.Rows[i].Cells[5].Text.Trim();

                //To get vehile details based on vin number
                con.Open();
                string sql = "SELECT stock_status,engine_num,chasis_num,register_num,contract_num,vehicle_num FROM tbl_vehicle WHERE case_number=@vin";
                cmd = new SqlCommand(sql, con);
                cmd.Parameters.AddWithValue("@vin", vinnum);
                cmd.ExecuteNonQuery();
                sqlad.SelectCommand = cmd;
                sqlad.Fill(ds);

                con.Close();

                if (ds.Tables[0].Rows.Count > 0)
                {
                    //To get contract details based on contract number

                    con.Open();
                    string sql1 = "SELECT * FROM tbl_salescontract WHERE ContractNo=@contract";
                    cmd = new SqlCommand(sql1, con);
                    cmd.Parameters.AddWithValue("@contract", contractno);
                    cmd.ExecuteNonQuery();
                    sqlad.SelectCommand = cmd;
                    sqlad.Fill(ds1);

                    con.Close();

                    //Check whether contract number exist or not
                    if (ds1.Tables[0].Rows.Count > 0)
                    {
                        string salesmancode = ds1.Tables[0].Rows[0]["salesmancode"].ToString();
                        string name = ds1.Tables[0].Rows[0]["BuyyersName"].ToString();
                        string fincomp = ds1.Tables[0].Rows[0]["fincompcode"].ToString();
                        string successdate = ds1.Tables[0].Rows[0]["coesuccess_date"].ToString();

                        if (successdate != " " || successdate != null)
                        {
                            string status = ds.Tables[0].Rows[0]["stock_status"].ToString();
                            if (status != "H" || status != "K")
                            {
                                //check whether the vehicle is registered 
                                string regnum = ds.Tables[0].Rows[0]["register_num"].ToString();
                                if (regnum == "" || regnum == null)
                                {
                                    //check whether model match 
                                    string model = ds1.Tables[0].Rows[0]["modelshort_desc"].ToString();
                                    if (model == modeldesc)
                                    {
                                        //check whether colour match
                                        string colour = ds1.Tables[0].Rows[0]["colour_code"].ToString();
                                        if (colour == colourdesc)
                                        {
                                            string vehicle = ds.Tables[0].Rows[0]["vehicle_num"].ToString();
                                            string engine = ds.Tables[0].Rows[0]["engine_num"].ToString();
                                            string chasis = ds.Tables[0].Rows[0]["chasis_num"].ToString();
                                            try
                                            {
                                                con.Open();
                                                string sql3 = " SELECT contract_num,stock_remark,stock_status,hold_date,customer_name,caralloc_date,case_remark,reserved_salesman,fin_comp,coesuccess_date,vie,register_num FROM tbl_vehicle WHERE contract_num=@contract ";
                                                cmd = new SqlCommand(sql3, con);
                                                cmd.Parameters.AddWithValue("@contract",contractno);
                                                cmd.ExecuteNonQuery();
                                                sqlad.SelectCommand = cmd;
                                                sqlad.Fill(ds2);


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

                                            if (ds2.Tables[0].Rows.Count > 0)
                                            {
                                                

                                                string reg = ds2.Tables[0].Rows[0]["register_num"].ToString();
                                                if (reg == "" || reg == null)
                                                {


                                                    //if contract not registered , clear the old contract details from the vehicle table  
                                                    try
                                                    {
                                                        con.Open();
                                                        string sql2 = "UPDATE tbl_vehicle SET contract_num='',stock_remark='',stock_status='',hold_date=NULL,customer_name='',caralloc_date = NULL,case_remark='',reserved_salesman='',fin_comp='',coesuccess_date = NULL,vie ='',register_num='' WHERE contract_num=@contract ";
                                                        cmd = new SqlCommand(sql2, con);
                                                        cmd.Parameters.AddWithValue("@contract", contractno);
                                                        cmd.ExecuteNonQuery();
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
                                                    
                                                   
                                                    goto end;
                                                }
                                            }
                                                //update contract table with vehicle details 
                                                try
                                                    {
                                                        con.Open();
                                                        string sql3 = "UPDATE tbl_salescontract SET vehicle_num=@vehicle,engine_num=@engine,chasis_num=@chasis,case_num=@vin WHERE ContractNo=@contract ";
                                                        cmd = new SqlCommand(sql3, con);
                                                        cmd.Parameters.AddWithValue("@vehicle", vehicle);
                                                        cmd.Parameters.AddWithValue("@engine", engine);
                                                        cmd.Parameters.AddWithValue("@chasis", chasis);
                                                        cmd.Parameters.AddWithValue("@vin",vinnum);
                                                        cmd.Parameters.AddWithValue("@contract", contractno);
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


                                                    //update vehicle table with contract details 
                                                    try
                                                    {
                                                        con.Open();
                                                        DateTime success = DateTime.Parse(successdate);
                                                        string sql3 = "UPDATE tbl_vehicle SET contract_num=@contract,reserved_salesman=@salescode,progress_status=@pstatus,fin_comp=@fin,stock_status=@stock,caralloc_date=@caralloc,customer_name=@name,coesuccess_date=@success,vie=@vie WHERE case_number=@vin";
                                                        cmd = new SqlCommand(sql3, con);
                                                        cmd.Parameters.AddWithValue("@contract", contractno);
                                                        cmd.Parameters.AddWithValue("@salescode", salesmancode);
                                                        cmd.Parameters.AddWithValue("@pstatus", "R");
                                                        cmd.Parameters.AddWithValue("@fin", fincomp);
                                                        cmd.Parameters.AddWithValue("@stock", "H");
                                                        cmd.Parameters.AddWithValue("@caralloc", DateTime.Now);
                                                        cmd.Parameters.AddWithValue("@name", name);
                                                        cmd.Parameters.AddWithValue("@success", success);
                                                        cmd.Parameters.AddWithValue("@vie", "R");
                                                        cmd.Parameters.AddWithValue("@vin", vinnum);
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

                                                    //Insert deatails to audit vehicle table
                                                    try
                                                    {
                                                        con.Open();
                                                        DateTime coesucc = DateTime.Parse(successdate);
                                                        string sql4 = " INSERT INTO tbt_AUDIT_vehicle(contract_num,stock_status,progress_status,customer_name,reserved_salesman,caralloc_date,case_number,vie,coe_success_date,finance_comp,updated_status,updated_by,update_date) VALUES (@contract,@stockstatus,@progressstatus,@name,@salescode,@todaydate,@vin,@vie,@successdate,@fincomp,@updatestat,@updateby,@todaydate1)";
                                                        cmd = new SqlCommand(sql4, con);
                                                        cmd.Parameters.AddWithValue("@contract", contractno);
                                                        cmd.Parameters.AddWithValue("@stockstatus", "H");
                                                        cmd.Parameters.AddWithValue("@progressstatus", "R");
                                                        cmd.Parameters.AddWithValue("@name", name);
                                                        cmd.Parameters.AddWithValue("@salescode", salesmancode);
                                                        cmd.Parameters.AddWithValue("@todaydate", DateTime.Now);
                                                        cmd.Parameters.AddWithValue("@vin", vinnum);
                                                        cmd.Parameters.AddWithValue("@vie", "R");
                                                        cmd.Parameters.AddWithValue("@successdate", coesucc);
                                                        cmd.Parameters.AddWithValue("@fincomp", fincomp);
                                                        cmd.Parameters.AddWithValue("@updatestat", "UPDATE");
                                                        cmd.Parameters.AddWithValue("@updateby", "ADMIN");
                                                        cmd.Parameters.AddWithValue("@todaydate1", DateTime.Now);
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

                                                    //update tbl_contractbooking table

                                                    con.Open();
                                                    string sql5 = "SELECT Buyer_orderno,case_number,engine_num,chasis_num,Model,colour FROM tbl_contractbooking WHERE ContractNo=@contract";
                                                    cmd = new SqlCommand(sql5, con);
                                                    cmd.Parameters.AddWithValue("@contract", contractno);
                                                    cmd.ExecuteNonQuery();
                                                    sqlad.SelectCommand = cmd;
                                                    sqlad.Fill(ds3);
                                                    con.Close();


                                                    if (ds3.Tables[0].Rows.Count > 0)
                                                    {
                                                        //update tbl_contractbooking table
                                                        try
                                                        {
                                                            con.Open();
                                                            string sql6 = "UPDATE tbl_contractbooking SET case_number=@vin,engine_num=@engine,chasis_num=@chasis WHERE ContractNo=@contract";
                                                            cmd = new SqlCommand(sql6, con);
                                                            cmd.Parameters.AddWithValue("@vin",vinnum);
                                                            cmd.Parameters.AddWithValue("@engine", engine);
                                                            cmd.Parameters.AddWithValue("@chasis", chasis);
                                                            cmd.Parameters.AddWithValue("@contract", contractno);
                                                            cmd.ExecuteNonQuery();
                                                        }
                                                        catch (Exception ex)
                                                        {
                                                            throw ex;
                                                        }
                                                        finally
                                                        {
                                                            con.Close();
                                                        }


                                                        //Update coesock table
                                                        try
                                                        {
                                                            con.Open();
                                                            string orderno = ds3.Tables[0].Rows[0]["Buyer_orderno"].ToString();
                                                            string sql7 = "UPDATE tbl_coesock SET contract_num=@contract WHERE Buyer_order_no=@orderno AND contract_num is NULL";
                                                            cmd = new SqlCommand(sql7, con);
                                                            cmd.Parameters.AddWithValue("@contract",contractno);
                                                            cmd.Parameters.AddWithValue("@orderno", orderno);
                                                            cmd.ExecuteNonQuery();
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

                                                    //Get coestock details
                                                    try
                                                    {
                                                        con.Open();
                                                        string sql8 = "SELECT certificate_num,bid_date,coe_amount FROM tbl_coestock_dtl WHERE contract_num=@contract";
                                                        cmd = new SqlCommand(sql8, con);
                                                        cmd.Parameters.AddWithValue("@contract",contractno);
                                                        cmd.ExecuteNonQuery();
                                                        sqlad.SelectCommand = cmd;
                                                        sqlad.Fill(ds4);
                                                    }
                                                    catch (Exception ex)
                                                    {
                                                        throw ex;
                                                    }
                                                    finally
                                                    {
                                                        con.Close();
                                                    }



                                                    string certno = "";
                                                    string biddate = "";
                                                    string coeamt = "";
                                                    if (ds4.Tables[0].Rows.Count > 0)
                                                    {
                                                        certno = ds4.Tables[0].Rows[0]["certificate_num"].ToString();
                                                        biddate = ds4.Tables[0].Rows[0]["bid_date"].ToString();
                                                        coeamt = ds4.Tables[0].Rows[0]["coe_amount"].ToString();
                                                    }
                                                    else
                                                    {
                                                        certno = "";
                                                        biddate = "";
                                                        coeamt = "0";
                                                    }
                                                    //update tbl_vehicle with table details like certno, coeamnt
                                                    try
                                                    {
                                                        con.Open();
                                                        string sql9 = "UPDATE tbl_vehicle SET certificate_no=@certno,coe_biddate=@biddate,coe_amount=@amount,progress_status=@status,last_updated=@lastupdate,last_updateduser=@updateuser WHERE contract_num=@contract";
                                                        cmd = new SqlCommand(sql9, con);
                                                        cmd.Parameters.AddWithValue("@certno", certno);
                                                        cmd.Parameters.AddWithValue("@biddate", biddate);
                                                        cmd.Parameters.AddWithValue("@amount", coeamt);
                                                        cmd.Parameters.AddWithValue("@status", "L");
                                                        cmd.Parameters.AddWithValue("@lastupdate", DateTime.Now);
                                                        cmd.Parameters.AddWithValue("@updateuser", "USER");
                                                        cmd.Parameters.AddWithValue("@contract", contractno);
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
                                            string script4 = "alert('VIN Number" + vinnum + " does not match the colour " + colourdesc + " for contract "+contractno+". ');";
                                            ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScripts", script4, true);

                                        }
                                    }
                                    else
                                    {
                                        string script5 = "alert('VIN Number "+ vinnum + " does not match the model " + modeldesc + " selected for this contract " + contractno + ". ');";
                                        ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScripts", script5, true);

                                    }
                                }
                                else
                                {
                                    string script6 = "alert('Vin number " + vinnum + " is registered,Reallocation not allowed');";
                                    ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScripts", script6, true);

                                }
                            }
                            else
                            {
                                string script7 = "alert('Vin number " + vinnum + " is blocked .Please release the stock');";
                                ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScripts", script7, true);

                            }
                        }

                        else
                        {
                            string script8 = "alert('COE is not secured for this contract');";
                            ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScripts", script8, true);

                        }
                    }
                    else
                    {
                        string script9 = "alert('Contract number " +contractno + " not found');";
                        ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScripts", script9, true);

                    }
                }
                else
                {
                    string script10 = "alert('Vin number " + vinnum + " not found');";
                    ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScripts", script10, true);

                }
               end:
                string script3 = "alert('The VIN number is registered, reallocation is not allowed');";
                ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScripts", script3, true);

            }
            try
            {
                con.Open();
                string sql10 = "UPDATE tbl_vehicle SET stock_status='R' WHERE stock_status='N'";
                cmd = new SqlCommand(sql10, con);
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
            string script2 = "alert('Auto Allocation is done.To see unallocated vehicles, click on Allocate All button');";
            ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScripts", script2, true);

        }
    }
    }
