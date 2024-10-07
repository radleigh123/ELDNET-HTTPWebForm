using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HTTPWebForm
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void LogOutBTN_Click(object sender, EventArgs e)
        {
            if (Request.Cookies["Username"] != null)
            {
                HttpCookie cookName = new HttpCookie("Username");
                HttpCookie cookPass = new HttpCookie("Password");
                cookName.Expires = DateTime.Now.AddMinutes(-1);
                cookPass.Expires = DateTime.Now.AddMinutes(-1);
                Response.Cookies.Add(cookName);
                Response.Cookies.Add(cookPass);
            }

            Response.Redirect("LoginPage.aspx");
        }
    }
}