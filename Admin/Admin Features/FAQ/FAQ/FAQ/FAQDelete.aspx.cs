using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FAQ
{
    public partial class FAQDelete : System.Web.UI.Page
    {
        dbDataContext db = new dbDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string id = Request.QueryString["Id"];

                FAQ f = db.FAQs.SingleOrDefault(x => x.Id.ToString() == id);
                if (f != null)
                {
                    lblQuestion.Text = f.Question;
                    lblAnswer.Text = f.Answer;
                }
                else
                {
                    Response.Redirect("FAQAdmin.aspx");
                }

            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("FAQAdmin.aspx");
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            string id = Request.QueryString["Id"];

            FAQ f = db.FAQs.SingleOrDefault(x => x.Id.ToString() == id);
            if (f != null)
            {
                db.FAQs.DeleteOnSubmit(f);
                db.SubmitChanges();
            }
            Response.Redirect("FAQAdmin.aspx");
        }
    }
}