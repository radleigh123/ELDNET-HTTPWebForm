using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HTTPWebForm
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string username;
        string password;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                username = HttpUtility.HtmlEncode(Request.Form["UserIN"]);
                password = HttpUtility.HtmlEncode(Request.Form["PassIN"]);
            }
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            if (username == "admin" && password == "123")
            {
                Response.Redirect("AdminPage.aspx");
            }

            if (username == "student" && password == "123")
            {
                Response.Redirect("StudentPage.aspx");
            }

            if (username == "teacher" && password == "123")
            {
                Response.Redirect("TeacherPage.aspx");
            }
        }
    }
}