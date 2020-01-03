using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FAQ
{
    public partial class FAQInsert : System.Web.UI.Page
    {
        dbDataContext db = new dbDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string question = txtQuestion.Text;
                string answer = txtAnswer.Text;

                FAQ f = new FAQ
                {
                    Question = question,
                    Answer = answer
                };

                db.FAQs.InsertOnSubmit(f);
                db.SubmitChanges();

                Response.Redirect("FAQAdmin.aspx");
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("FAQAdmin.aspx");
        }
    }
}