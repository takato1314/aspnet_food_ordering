using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class FoodInsert : System.Web.UI.Page
    {
        string foodDB = Global.FoodDB;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnInsert_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string foodId = txtId.Text;
                string foodName = txtName.Text;
                decimal foodPrice = Convert.ToDecimal(txtPrice.Text);
                string foodType = ddlType.Text;

                string sql = @"INSERT INTO Food (foodId,foodName,foodPrice,foodType)
                            VALUES (@foodId,@foodName,@foodPrice,@foodType)";

                SqlConnection con = new SqlConnection(foodDB);
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.Parameters.AddWithValue("@foodId", foodId);
                cmd.Parameters.AddWithValue("@foodName", foodName);
                cmd.Parameters.AddWithValue("@foodPrice", foodPrice);
                cmd.Parameters.AddWithValue("@foodType", foodType);


                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                Response.Redirect("FoodSelect.aspx");


            }
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            Server.Transfer("FoodSelect.aspx");
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {

            string foodId = args.Value;
            string sql = "SELECT COUNT(*) FROM Food WHERE foodId=@foodId";

            SqlConnection con = new SqlConnection(foodDB);
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@foodId", foodId);

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