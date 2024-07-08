using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WEBENG_PROJECT
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        SqlConnection con = new SqlConnection("Data Source=DESKTOP-9RRSD5S\\SQLEXPRESS;Initial Catalog=ST_DATA;Integrated Security = True");
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string ins = "Insert into [Table](Name, Email) values('" + txtName.Text + "', '" + txtEmail.Text + "')";
            SqlCommand com = new SqlCommand(ins, con);
            con.Open();
            com.ExecuteNonQuery();
            con.Close();
            Response.Redirect("https://localhost:44338/Login.aspx");
        }
    }
}