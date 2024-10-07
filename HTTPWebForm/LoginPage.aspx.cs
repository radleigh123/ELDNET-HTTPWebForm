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
            if (Request.Cookies["Username"] != null)
            {
                string userCookie = Request.Cookies["Username"].Value;
                if (!string.IsNullOrEmpty(userCookie))
                {
                    switch (userCookie)
                    {
                        case "admin":
                            Response.RedirectToRoute("AdminPage");
                            break;
                        case "student":
                            Response.RedirectToRoute("StudentPage");
                            break;
                        case "teacher":
                            Response.RedirectToRoute("TeacherPage");
                            break;
                    }
                }
            }
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            username = UserIN.Text;
            password = PassIN.Text;
            string user = AuthenticateUser(username, password);

            if (!string.IsNullOrEmpty(user))
            {
                Session["Username"] = username;

                if (RememberCB.Checked)
                {
                    HttpCookie cookName = new HttpCookie("Username", username);
                    HttpCookie cookPass = new HttpCookie("Password", password);

                    cookName.Expires = DateTime.Now.AddSeconds(60);
                    cookPass.Expires = DateTime.Now.AddSeconds(60);

                    Response.Cookies.Add(cookName);
                    Response.Cookies.Add(cookPass);
                }

                switch (user)
                {
                    case "admin":
                        Response.RedirectToRoute("AdminPage");
                        break;
                    case "student":
                        Response.RedirectToRoute("StudentPage");
                        break;
                    case "teacher":
                        Response.RedirectToRoute("TeacherPage");
                        break;
                }
            }
            else
            {
                string errorStr = @"<div class='alert alert-danger m-0' role='alert'>
                                        Invalid username or password
                                    </div>";
                Response.Write(errorStr);
            }
        }

        private string AuthenticateUser(string username, string password)
        {
            if (username == "admin" && password == "123")
            {
                return "admin";
            }

            if (username == "student" && password == "123")
            {
                return "student";
            }

            if (username == "teacher" && password == "123")
            {
                return "teacher";
            }

            return "";
        }

        protected void UserIN_TextChanged(object sender, EventArgs e)
        {
            if (UserIN.Text.Length < 5)
            {
                string errorStr = @"<div class='alert alert-danger m-0' role='alert'>
                                    Username must be at least 5 characters long
                                </div>";
                Response.Write(errorStr);
            }
        }
    }
}