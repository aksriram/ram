using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Auto_Pac.Sales
{
    public partial class Discount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                dt.Columns.AddRange(new DataColumn[3]
                   {
                    new DataColumn("Model", typeof(string)),
                    new DataColumn("Category", typeof(string)),
                    new DataColumn("Discount", typeof(int)),

               });


                dt.Rows.Add("smart", "B", "19000");

                Gridview_access.DataSource = dt;
                Gridview_access.DataBind();



                Gridview_access1.DataSource = dt;
                Gridview_access1.DataBind();
            }
            else
            {

            }
            }

        protected void ImageUpdate_Click(object sender, ImageClickEventArgs e)
        {
           
            
                foreach (GridViewRow row in Gridview_access.Rows)
                {
                    CheckBox chk = row.Cells[0].FindControl("chkCtrl") as CheckBox;
                    if (chk != null && chk.Checked)
                    {
                        DataTable dt = new DataTable();
                        dt.Columns.AddRange(new DataColumn[3]
                       {
                    new DataColumn("Model", typeof(string)),
                    new DataColumn("Category", typeof(string)),
                    new DataColumn("Discount", typeof(int)),

                       });
                       
                        dt.Rows.Add("smart", "A", "10123");

                        Gridview_access.DataSource = dt;
                        Gridview_access.DataBind();

                    }
                    else
                    {
                        DataTable dt = new DataTable();
                        dt.Columns.AddRange(new DataColumn[3]
                           {
                    new DataColumn("Model", typeof(string)),
                    new DataColumn("Category", typeof(string)),
                    new DataColumn("Discount", typeof(int)),

                       });
                        // dt.Rows.Add("smart", "B", "10000");
                        // row.Cells[4].Text = "4321";
                        dt.Rows.Add("smart", "B", "10111");

                        Gridview_access.DataSource = dt;
                        Gridview_access.DataBind();

                    }
                }
           
        }
    }
}