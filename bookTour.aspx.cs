using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LimpopoWorld
{
    public partial class Order : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PopulateDropDownList();
            }
        }

        private void PopulateDropDownList()
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
            try
            {
                conn.Open();
                string query = "SELECT TOUR_NAME FROM Tour";
                SqlCommand cmd = new SqlCommand(query, conn);
                SqlDataReader reader = cmd.ExecuteReader();
                DropDownList1.DataSource = reader;
                DropDownList1.DataTextField = "TOUR_NAME";
                DropDownList1.DataValueField = "TOUR_NAME";
                DropDownList1.DataBind();
                reader.Close();
            }
            catch (Exception ex)
            {
                // Handle exception (e.g., log the error)
                Response.Write("Error: " + ex.Message);
            }
            finally
            {
                conn.Close();
            }
        }



        protected void btn_click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
            conn.Open();
            string insertQuery = "insert into booking(TOUR_NAME,PLACE,Email,FirstName) values(@TOUR_NAME,@PLACE,@Email,@FirstName)";
            SqlCommand com = new SqlCommand(insertQuery, conn);
            string tour_name = DropDownList1.SelectedItem.ToString();
            com.Parameters.AddWithValue("@TOUR_NAME", tour_name);

            com.Parameters.AddWithValue("@PLACE", city.Text);

            com.Parameters.AddWithValue("@Email", number.Text);
            com.Parameters.AddWithValue("@FirstName", name.Text);

            com.ExecuteNonQuery();
            Response.Write("Registration Successful");
            Response.Redirect("userBookings.aspx");
            Server.Transfer("userBookings.aspx");
            conn.Close();

        }

        protected void Reset_Click(object sender, EventArgs e)
        {
            // Clear form fields
            name.Text = "";
            city.Text = "";
            number.Text = "";
            DropDownList1.SelectedIndex = -1;
        }
    }
}