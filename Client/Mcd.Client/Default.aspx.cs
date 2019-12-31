using System;
using System.Linq;
using System.Web.UI;
using Mcd.Admin.Data;
using Mcd.Client.Data;

namespace Mcd.Client
{
    public partial class Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                using (var ctx = new McdClientContext())
                {
                    var beverages = ctx.Beverages.ToList();
                    Gridview1.DataSource = beverages;
                    Gridview1.DataBind();
                }

                using (var ctx = new McdAdminContext())
                {
                    var employees = ctx.Employees.ToList();
                    Gridview2.DataSource = employees;
                    Gridview2.DataBind();
                }
            }
        }
    }
}