using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class FoodSelect : System.Web.UI.Page
    {
        string dbFood = Global.FoodDB;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string sql = "SELECT * FROM Food";

                SqlConnection con = new SqlConnection(dbFood);
                SqlCommand cmd = new SqlCommand(sql, con);

                con.Open();

                SqlDataReader dataReader = cmd.ExecuteReader();
                gvFood.DataSource = dataReader;
                gvFood.DataBind();

                dataReader.Close();

                con.Close();

            }
        }
    }
}