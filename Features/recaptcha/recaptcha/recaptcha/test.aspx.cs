using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json.Linq;
using System.Configuration;
using System.Net;
using System.IO;

namespace recaptcha
{
    public partial class test : System.Web.UI.Page
    {
        dbDataContext db = new dbDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public bool IsReCaptchValid()
        {
            var result = false;
            var captchaResponse = Request.Form["g-recaptcha-response"];
            var secretKey = "6Lf9acoUAAAAAC0C8Ao1CeaWGgEO6sUhCglv034h";
            var apiUrl = "https://www.google.com/recaptcha/api/siteverify?secret={0}&response={1}";
            var requestUri = string.Format(apiUrl, secretKey, captchaResponse);
            var request = (HttpWebRequest)WebRequest.Create(requestUri);

            using (WebResponse response = request.GetResponse())
            {
                using (StreamReader stream = new StreamReader(response.GetResponseStream()))
                {
                    JObject jResponse = JObject.Parse(stream.ReadToEnd());
                    var isSuccess = jResponse.Value<bool>("success");
                    result = (isSuccess) ? true : false;
                }
            }
            return result;
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string username = txtUsername.Text;
                string password = txtPsw.Text;
                string gender = rblGender.Text;
                string email = txtEmail.Text;
                string contactNo = txtContactNumber.Text;

                User u = new User
                {
                    Username = username,
                    Password = password,
                    Gender = gender,
                    Email = email,
                    ContactNo = contactNo
                };
                db.Users.InsertOnSubmit(u);
                db.SubmitChanges();

                Response.Redirect("login.aspx");

            }

            if (IsReCaptchValid())
            {
                reCaptchaValidation.Text = "Google reCaptcha validation success";
            }
            else
            {
                reCaptchaValidation.Text = "Google reCaptcha validation fail";
            }

        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            Response.Redirect("test.aspx");
        }

        protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string password = args.Value;

            if (password.Length >= 6 && password.Length <= 12)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }
        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string username = args.Value;

            if (db.Users.Any(s => s.Username == username))
            {
                args.IsValid = false;
            }
        }

        protected void CustomValidator3_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string contact = args.Value;

            if (db.Users.Any(s => s.ContactNo == contact))
            {
                args.IsValid = false;
            }
        }

        protected void CustomValidator4_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string email = args.Value;

            if (db.Users.Any(s => s.Email == email))
            {
                args.IsValid = false;
            }
        }
    }
}