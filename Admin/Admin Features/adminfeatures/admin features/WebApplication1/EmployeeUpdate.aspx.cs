using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class EmployeeUpdate : System.Web.UI.Page
    {
        string cs = Global.CS;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                bool found = false;

                string id = Request.QueryString["EmployeeId"] ?? "";

                string sql = "SELECT * FROM Employee WHERE EmployeeId = @EmployeeId";

                SqlConnection con = new SqlConnection(cs);
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.Parameters.AddWithValue("@EmployeeId", id);

                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    found = true;
                    lblId.Text = (string)dr["EmployeeId"];
                    txtName.Text = (string)dr["EmployeeName"];
                    txtContact.Text = (string)dr["Employeecontact"];
                    rblGender.Text = (string)dr["EmployeeGender"];
                }
                dr.Close();
                con.Close();
                if (!found)
                {
                    Response.Redirect("EmployeeRead.aspx");
                }
            }
        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {

            if (Page.IsValid)
            {
                string id = lblId.Text;
                string name = txtName.Text;
                string contact = txtContact.Text;
                string gender = rblGender.Text;

                string sql = @"UPDATE Employee
                            SET EmployeeName =@EmployeeName,EmployeeContact=@EmployeeContact,EmployeeGender =@Employeegender WHERE EmployeeId =@EmployeeId";

                SqlConnection con = new SqlConnection(cs);
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.Parameters.AddWithValue("@EmployeeName", name);
                cmd.Parameters.AddWithValue("@EmployeeContact", contact);
                cmd.Parameters.AddWithValue("@EmployeeGender", gender);
                cmd.Parameters.AddWithValue("@EmployeeId", id);

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                Response.Redirect("EmployeeRead.aspx");
            }
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            Response.Redirect("EmployeeRead.aspx");

        }
    }
}