using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace HTTPWebForm
{
    public class Global : HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            RegisterRoutes(RouteTable.Routes);
        }

        protected void RegisterRoutes(RouteCollection routes)
        {
            routes.MapPageRoute("AdminPage", "Administrator Page", "~/AdminPage.aspx");
            routes.MapPageRoute("StudentPage", "Student Page", "~/StudentPage.aspx");
            routes.MapPageRoute("TeacherPage", "Teacher Page", "~/TeacherPage.aspx");
        }
    }
}