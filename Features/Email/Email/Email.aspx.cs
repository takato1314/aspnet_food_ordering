using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

    public partial class Email : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
                smtp.EnableSsl = true;
                smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                smtp.UseDefaultCredentials = false;
                smtp.Credentials = new NetworkCredential("mcd7175@gmail.com", "mcd202020");
                MailMessage msg = new MailMessage();
                msg.To.Add(txtto.Text);
                msg.From = new MailAddress("mcd7175@gmail.com");
                msg.Subject = txtsub.Text;
                msg.Body = txtContent.Text;
                smtp.Send(msg);
                //Response.Write("Message has been sent successfully!");
                ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('Message has been sent successfully!');", true);
            }
            catch (Exception ex)
            {
                Response.Write("Could not send email! " + ex.Message);
            }

        }
    }
