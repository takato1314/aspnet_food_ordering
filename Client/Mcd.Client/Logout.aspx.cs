using System;
using System.Web;
using System.Web.UI;

namespace Mcd.Client
{
    public partial class Logout : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Request.GetOwinContext().Authentication.SignOut();
        }
    }
}