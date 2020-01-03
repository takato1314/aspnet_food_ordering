using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FAQ
{
    public partial class FAQUpdate : System.Web.UI.Page
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
                    txtQuestion.Text = f.Question;
                    txtAnswer.Text = f.Answer;
                }
                else
                {
                    Response.Redirect("FAQAdmin.aspx");
                }
            }
            
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string id = Request.QueryString["Id"];
                string question = txtQuestion.Text;
                string answer = txtAnswer.Text;
                FAQ f = db.FAQs.SingleOrDefault(x => x.Id.ToString() == id);
                if (f != null)
                {
                    f.Question = question;
                    f.Answer = answer;

                    db.SubmitChanges();
                }
                Response.Redirect("FAQAdmin.aspx");
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("FAQAdmin.aspx");
        }
    }
}