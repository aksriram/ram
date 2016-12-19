﻿using System;
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
    public partial class Payment_Status : System.Web.UI.Page
    {
        String ConnectionString;
        public Payment_Status()
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
            dt.Columns.AddRange(new DataColumn[2]
               {
                    new DataColumn("Item", typeof(string)),
                    new DataColumn("Price", typeof(string)),
                    

           });

            dt.Rows.Add("Six(6) Bids Non-Guaranteed", "0");


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
                    if (name == "Payment Status")
                    {
                        lblpagetitle.Text = name;
                    }
                }
                // txtregdate.Text = ds.Tables[0].Rows[0][0].ToString();

            }
        }


    }
}