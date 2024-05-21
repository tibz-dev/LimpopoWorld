using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LimpopoWorld
{
    public partial class AdminiLogin2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (password.Text == "admin" && name.Text == "admin@gmail.com")
            {
                Response.Redirect("AdminProfile.aspx");
                Server.Transfer("AdminProfile.aspx");
            }
        }
    }
}