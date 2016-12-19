using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;

namespace Auto_Pac
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Prevent the users who try to skip the login step by visit specified page.
            if (!Page.IsPostBack)
            {
                Session.Abandon();
            }
            if (Request.QueryString["info"] != null)
            {
                string message = Request.QueryString["info"].ToString();
                if (message == "0")
                {
                    Response.Write("<strong>you need login first to visit user page.</strong>");
                }
            }

        }

        /// <summary>
        /// User login method.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        //protected void btnLogin_Click(object sender, EventArgs e)
        //{
        //    string username = tbUserName.Text.Trim();
        //    if (tbUserName.Text.Trim() == "username" && tbPassword.Text.Trim() == "password")
        //    {
        //        Session["username"] = username;
        //        Response.Redirect("Default.aspx");
        //    }
        //    else
        //    {
        //        Response.Write("<strong>User name or pass word error.</strong>");
        //    }
        //}

        //protected void btn_login_Click(object sender, ImageClickEventArgs e)
        //{
        //    string username = tbUserName.Text.Trim();
        //    if (tbUserName.Text.Trim() == "acms" && tbPassword.Text.Trim() == "acms")
        //    {
        //        Session["username"] = username;
        //        Response.Redirect("Default1.aspx");
        //    }
        //    else
        //    {
        //        Response.Write("<strong>User name or pass word error.</strong>");
        //    }
        //}

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            string username = tbUserName.Text.Trim();
            if (tbUserName.Text.Trim() == "autopac" && tbPassword.Text.Trim() == "autopac")
            {
                Session["username"] = username;
                Response.Redirect("~/AutoPac/Home_Page.aspx");
            }
            else
            {
                Response.Write("<strong>User name or pass word error.</strong>");
            }
        }
    }
}