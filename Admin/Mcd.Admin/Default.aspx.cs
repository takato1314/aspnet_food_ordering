using System;
using System.Linq;
using System.Web.UI;
using Mcd.Admin.Data;

namespace Mcd.Admin
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                using (var ctx = new McdAdminContext())
                {
                    var employees = ctx.Employees.ToList();
                    Gridview1.DataSource = employees;
                    Gridview1.DataBind();
                }
            }
        }
    }
}