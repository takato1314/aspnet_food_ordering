﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace WebApplication1
{
    public class Global : System.Web.HttpApplication
    {
        public const string CS = @"
            Data Source=(LocalDB)\mssqllocaldb;
            AttachDBFilename=|DataDirectory|\EmployeeDB.mdf;
            Integrated Security=True";
        public const string FoodDB = @"
            Data Source=(LocalDB)\mssqllocaldb;
            AttachDBFilename=|DataDirectory|\FoodDB.mdf;
            Integrated Security=True";
        protected void Application_Start(object sender, EventArgs e)
        {

        }

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}