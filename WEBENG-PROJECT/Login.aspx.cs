using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WEBENG_PROJECT
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        SqlConnection con = new SqlConnection("Data Source=DESKTOP-9RRSD5S\\SQLEXPRESS;Initial Catalog=ST_DATA;Integrated Security = True");
        protected void btnlog_Click(object sender, EventArgs e)
        {
            string check = "select count(*) from [Table] where Email = '" + Uname.Text + "'";
            SqlCommand com = new SqlCommand(check, con);
            con.Open();
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            con.Close();
            if (temp == 1)
            {
                Response.Redirect("https://localhost:44338/student_data.aspx");
            }
            else
            {
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Text = "Incorrect Email or Pass";
            }
        }
    }
}