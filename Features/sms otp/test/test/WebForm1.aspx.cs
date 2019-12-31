using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows.Forms;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Specialized;

namespace test
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SendOTP_Click(object sender, EventArgs e)
        {
            using (System.Net.WebClient client = new System.Net.WebClient())
            {
                Random random = new Random();
                int value = random.Next(100001, 999999);
                string destinationaddr = ddlPhone.Text + TextBox1.Text;
                string message = "Your OTP Number is " + value;
                String message1 = HttpUtility.UrlEncode(message);

                string apiKey = "3Hq_J2oVQKueWdtggNVoJw==";
                string numbers = destinationaddr;
                string message2 = message; 

                string url = "https://platform.clickatell.com/messages/http/send?" +
                    "apiKey=" + apiKey +
                    "&to=" + numbers +
                    "&content=" + message2;
                string result = client.DownloadString(url);
                Session["otp"] = value;


            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (TextBox2.Text == Session["otp"].ToString())
            {
                MessageBox.Show("Register Successful", "Registation");
               // TextBox1.Visible = false;
            }
        }

        protected void otpCheck_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if(TextBox2.Text != Session["otp"].ToString())
            {
                args.IsValid = false;
            }
        }
    }
}