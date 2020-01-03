using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class FoodDelete : System.Web.UI.Page
    {
        string foodDB = Global.FoodDB;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                bool found = false;

                string id = Request.QueryString["foodId"] ?? "";

                string sql = "SELECT * FROM Food WHERE foodId=@foodId";

                SqlConnection con = new SqlConnection(foodDB);
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.Parameters.AddWithValue("@foodId", id);
                con.Open();
                SqlDataReader dataReader = cmd.ExecuteReader();
                if (dataReader.Read())
                {
                    found = true;
                    lblId.Text = (string)dataReader["foodId"];
                    lblName.Text = (string)dataReader["foodName"];
                    lblPrice.Text = dataReader.GetDecimal(dataReader.GetOrdinal("foodPrice"));
                    lblType.Text = (string)dataReader["foodType"];
                }
                dataReader.Close();
                con.Close();

                if (!found)
                {
                    Response.Redirect("FoodSelect.aspx");
                }

            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("FoodSelect.aspx");
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            string id = lblId.Text;

            string sql = "DELETE FROM Food WHERE foodId =@foodId";

            SqlConnection con = new SqlConnection(foodDB);
            SqlCommand cmd = new SqlCommand(sql, con);

            cmd.Parameters.AddWithValue("@foodId", id);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("FoodSelect.aspx");
        }
    }
}