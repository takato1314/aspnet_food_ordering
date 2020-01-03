using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class EmployeeDelete : System.Web.UI.Page
    {
        string cs = Global.CS;

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                bool found = false;

                string id = Request.QueryString["EmployeeId"] ?? "";

                string sql = "SELECT * FROM Employee WHERE EmployeeId=@EmployeeId";

                SqlConnection con = new SqlConnection(cs);
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.Parameters.AddWithValue("@EmployeeId", id);
                con.Open();
                SqlDataReader dataReader = cmd.ExecuteReader();
                if (dataReader.Read())
                {
                    found = true;
                    lblId.Text = (string)dataReader["EmployeeId"];
                    lblName.Text = (string)dataReader["EmployeeName"];
                    lblContact.Text = (string)dataReader["EmployeeContact"];
                    lblGender.Text = (string)dataReader["EmployeeGender"];
                }
                dataReader.Close();
                con.Close();

                if(!found)
                {
                    Response.Redirect("EmployeeRead.aspx");
                }

            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("EmployeeRead.aspx");
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            string id = lblId.Text;

            string sql = "DELETE FROM Employee WHERE EmployeeId =@EmployeeId";

            SqlConnection con = new SqlConnection(cs);
            SqlCommand cmd = new SqlCommand(sql, con);

            cmd.Parameters.AddWithValue("@EmployeeId", id);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("EmployeeRead.aspx");
        }
    }
}