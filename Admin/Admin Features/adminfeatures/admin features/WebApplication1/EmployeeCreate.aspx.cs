using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class EmployeeCreate : System.Web.UI.Page
    {
        string cs = Global.CS;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            if(Page.IsValid)
            {
                string id = txtId.Text;
                string name = txtName.Text;
                string contact = txtContact.Text;
                string gender = rblGender.Text;

                string sql = @"INSERT INTO Employee (EmployeeId,EmployeeName,EmployeeContact,EmployeeGender)
                            VALUES (@EmployeeId,@EmployeeName,@EmployeeContact,@EmployeeGender)";

                SqlConnection con = new SqlConnection(cs);
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.Parameters.AddWithValue("@EmployeeId", id);
                cmd.Parameters.AddWithValue("@EmployeeName", name);
                cmd.Parameters.AddWithValue("@EmployeeContact", contact);
                cmd.Parameters.AddWithValue("@EmployeeGender", gender);
               

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                Response.Redirect("EmployeeRead.aspx");
         

            }
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            Server.Transfer("EmployeeCreate.aspx");
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {

            string empId = args.Value;
            string sql = "SELECT COUNT(*) FROM Employee WHERE EmployeeId=@EmployeeId";

            SqlConnection con = new SqlConnection(cs);
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@EmployeeId", empId);

            con.Open();
            int count = (int)cmd.ExecuteScalar();
            con.Close();
            if (count > 0)
            {
                args.IsValid = false;
            }
        }
    }
}