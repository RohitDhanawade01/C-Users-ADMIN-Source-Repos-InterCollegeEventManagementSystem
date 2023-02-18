using System;
using System.Collections.Generic;
using System.Linq;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SportsEventsManagementNew
{
    public partial class declareresult : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        // Go button for geting Details from participation ID
        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (CheckIfParticipationIdExists())
            {
                GetDataByParticipationID();
            }
            else
            {
                Response.Write("<script>alert('Invalid Participation ID');</script>");
            }
        }
                      
       
        // Winner Button For Declaring The Result
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (CheckIfParticipationIdExists())
            {
                RegisterNewWinner();
            }
            else
            {
                Response.Write("<script>alert('Invalid Participation ID');</script>");
            }
        }

        // Delete Button for Deleting The Result
        protected void Button4_Click(object sender, EventArgs e)
        {
            if (CheckIfParticipationIdExists())
            {
                DeleteWinner();
            }
            else
            {
                Response.Write("<script>alert('Invalid Participation ID');</script>");
            }
        }

        bool CheckIfParticipationIdExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from studenteventreg_table where Participation_ID='" + TextBox7.Text.Trim() + "';", con);
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

        void GetDataByParticipationID() 
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from studenteventreg_table where Participation_ID='" + TextBox7.Text.Trim() + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    TextBox1.Text = dt.Rows[0][0].ToString();
                    TextBox2.Text = dt.Rows[0][1].ToString();
                    TextBox3.Text = dt.Rows[0][2].ToString();
                    TextBox4.Text = dt.Rows[0][3].ToString();
                    TextBox5.Text = dt.Rows[0][4].ToString();
                    TextBox6.Text = dt.Rows[0][5].ToString();
                    TextBox8.Text = dt.Rows[0][7].ToString();
                    TextBox9.Text = dt.Rows[0][6].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Invalid Participation ID');</script>");
                }


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }

        void RegisterNewWinner() 
        {
            //Response.Write("<script>alert('Testing');</script>");
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand(" INSERT INTO result_table(Event_ID,eventname,teachername,collegename,date,eventtype,studentname,Student_ID,Participation_ID) values(@Event_ID,@eventname,@teachername,@collegename,@date,@eventtype,@studentname,@Student_ID,@Participation_ID)", con);
                cmd.Parameters.AddWithValue("@Event_ID", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@eventname", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@teachername", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@collegename", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@date", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@eventtype", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@studentname", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@Student_ID", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@Participation_ID", TextBox7.Text.Trim());



                cmd.ExecuteNonQuery();

                Response.Write("<script>alert('Winner Declared  Successfully.  ');</script>");
                con.Close();
                clearForm();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void DeleteWinner() 
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("DELETE from result_table WHERE Participation_ID='" + TextBox7.Text.Trim() + "'", con);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Winner Records Deleted Successfully');</script>");
                clearForm();
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        void clearForm()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";

        }

    }
}