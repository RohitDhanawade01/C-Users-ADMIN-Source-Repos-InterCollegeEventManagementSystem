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
    public partial class viewevent : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        //go button for checking Participation Id is Exists or not
        protected void Button3_Click(object sender, EventArgs e)
        {
            if (CheckIfParticipationIdExists())
            {
                Response.Write("<script>alert('Participation Id Already Exist Try another one');</script>");
            }
            
        }

        // go button for checking event exists or not
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {

                
                if (CheckIfEventExists())
                {
                    GetEventByID();
                }
                else
                {
                    Response.Write("<script>alert('Event does not exist');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        // Register button for event Registration
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (CheckIfParticipationIdExists())
            {
                Response.Write("<script>alert('Participation Id Already Exist Try another one');</script>");
            }
           else 
            {
                RegisterNewEvent();
            }

            
        }

        // De-Register button for De-Registering from Event
        protected void Button4_Click(object sender, EventArgs e)
        {
            if (CheckIfParticipationIdExists())
            {
                DeregisterEvent();
            }
            else
            {
                Response.Write("<script>alert('You Cannot De-Register for Event Because Participation ID Not Exist ');</script>");
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
        bool CheckIfEventExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from event_table where Event_ID='" + TextBox1.Text.Trim() + "';", con);
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

        

        void GetEventByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from event_table where Event_ID='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    //TextBox1.Text = dt.Rows[0][1].ToString();
                    TextBox2.Text = dt.Rows[0][1].ToString();
                    TextBox3.Text = dt.Rows[0][3].ToString();
                    TextBox4.Text = dt.Rows[0][5].ToString();
                    TextBox5.Text = dt.Rows[0][6].ToString();
                    TextBox6.Text = dt.Rows[0][7].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Invalid Event ID');</script>");
                }


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }

        

        void RegisterNewEvent() 
        {
            //Response.Write("<script>alert('Testing');</script>");
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand(" INSERT INTO studenteventreg_table(Event_ID,eventname,teachername,collegename,date,eventtype,studentname,Student_ID,Participation_ID) values(@Event_ID,@eventname,@teachername,@collegename,@date,@eventtype,@studentname,@Student_ID,@Participation_ID)", con);
                cmd.Parameters.AddWithValue("@Event_ID", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@eventname", TextBox2.Text.Trim());               
                cmd.Parameters.AddWithValue("@teachername", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@collegename", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@date", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@eventtype", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@studentname", Session["firstname"].ToString());
                cmd.Parameters.AddWithValue("@Student_ID", Session["username"].ToString());
                cmd.Parameters.AddWithValue("@Participation_ID", TextBox7.Text.Trim());



                cmd.ExecuteNonQuery();

                Response.Write("<script>alert('Event Registration Successful. ');</script>");
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void DeregisterEvent() 
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("DELETE from studenteventreg_table WHERE Participation_ID='" + TextBox7.Text.Trim() + "'", con);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('You Have  Successfully De-Registerd From Event');</script>");
                
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        
    }
}