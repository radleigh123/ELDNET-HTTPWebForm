using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HTTPWebForm
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        private string username;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["Username"] != null)
                {
                    username = Request.Cookies["Username"].Value;
                    Label1.Text = "Welcome back " + username;
                } 
                else if (Session["Username"] != null)
                {
                    username = Session["Username"].ToString();
                    Label1.Text = username + " has successfully logged in.";
                }
                else
                {
                    Response.Redirect("LoginPage.aspx");
                }
            }
        }
    }
}