using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace WEBENG_PROJECT
{
    public partial class student_data : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadRecord();
            }
        }
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-9RRSD5S\\SQLEXPRESS;Initial Catalog=ST_DATA;Integrated Security = True");
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            
            
            con.Open();
            SqlCommand comm = new SqlCommand("Insert into Students_info values('"+int.Parse(txtStudentID.Text)+"', '"+txtName.Text+"', '"+ddldept.SelectedValue+"', '"+double.Parse(txtAge.Text)+"','"+txtContact.Text+"','"+ddlAddress.SelectedValue+"')", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Inserted')", true);
            LoadRecord();
            txtStudentID.Text = "";
            txtName.Text = "";
            ddldept.SelectedValue = "-1";
            txtAge.Text = "";
            txtContact.Text = "";
            ddlAddress.SelectedValue = "-1";
            
        }

        void LoadRecord()
        {
            SqlCommand comm = new SqlCommand("select * from Students_info", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();


        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("update Students_info set StudentName = '"+txtName.Text+ "' , Department = '" + ddldept.SelectedValue + "', Age ='" + double.Parse(txtAge.Text)+ "', Contact= '" + txtContact.Text + "', Address ='" + ddlAddress.SelectedValue+ "' where StudentID= '"+int.Parse(txtStudentID.Text)+"'", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Updated')", true);
            LoadRecord();
            txtStudentID.Text = "";
            txtName.Text = "";
            ddldept.SelectedValue = "-1";
            txtAge.Text = "";
            txtContact.Text = "";
            ddlAddress.SelectedValue = "-1";
        }

        protected void btndel_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("Delete Students_info where StudentID= '" + int.Parse(txtStudentID.Text) + "'", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Deleted')", true);
            LoadRecord();
            txtStudentID.Text = "";
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            SqlCommand comm = new SqlCommand("select * from Students_info where StudentID= '" + int.Parse(txtStudentID.Text) + "'", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            txtStudentID.Text = "";
        }
    }
}