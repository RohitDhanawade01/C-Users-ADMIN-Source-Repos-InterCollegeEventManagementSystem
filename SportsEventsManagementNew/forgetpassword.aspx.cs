using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SportsEventsManagementNew
{
    public partial class forgetpassword : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // Student Go Button 
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (CheckStudentExists())
            {
                getStudentDetails();
            }
            else
            {
                Response.Write("<script>alert('Student Id Does not exist ');</script>");
            }
        }

        // Student Reset Button
        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        // Teacher Go Button
        protected void Button7_Click(object sender, EventArgs e)
        {

        }

        // Teacher Reset Button
        protected void Button8_Click(object sender, EventArgs e)
        {

        }

        void getStudentDetails()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand(" select * from student_table where Student_ID='" + TextBox1.Text.Trim() + Session["username"].ToString() + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                TextBox2.Text = dt.Rows[0]["firstname"].ToString();
               // TextBox3.Text = dt.Rows[0]["email"].ToString();
                

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        bool CheckStudentExists() 
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from student_table where Student_ID ='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }
    }
}