using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class FoodUpdate : System.Web.UI.Page
    {
        string foodDB = Global.FoodDB;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                bool found = false;

                string id = Request.QueryString["foodId"] ?? "";

                string sql = "SELECT * FROM Food WHERE foodId = @foodId";

                SqlConnection con = new SqlConnection(foodDB);
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.Parameters.AddWithValue("@foodId", id);

                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    found = true;
                    lblId.Text = (string)dr["foodId"];
                    txtName.Text = (string)dr["foodName"];
                    txtPrice.Text = (decimal parse)dr["foodPrice"];
                    ddlType.Text = (string)dr["foodType"];
                }
                dr.Close();
                con.Close();
                if (!found)
                {
                    Response.Redirect("FoodSelect.aspx");
                }
            }
        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {

            if (Page.IsValid)
            {
                string foodId = lblId.Text;
                string foodName = txtName.Text;
                decimal foodPrice = Convert.ToDecimal(txtPrice.Text);
                string foodType = ddlType.Text;

                string sql = @"UPDATE Food
                            SET foodName =@foodName,foodPrice=@foodPrice,foodType =@foodType WHERE foodId =@foodId";

                SqlConnection con = new SqlConnection(foodDB);
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.Parameters.AddWithValue("@foodName", foodName);
                cmd.Parameters.AddWithValue("@foodPrice", foodPrice);
                cmd.Parameters.AddWithValue("@foodType", foodType);
                cmd.Parameters.AddWithValue("@foodId", foodId);

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                Response.Redirect("FoodSelect.aspx");
            }
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            Response.Redirect("FoodSelect.aspx");

        }
    }
}