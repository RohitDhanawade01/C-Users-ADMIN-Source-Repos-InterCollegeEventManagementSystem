﻿using System;
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
    public partial class studentsignup : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        // sign up button click event
        protected void Button_Click(object sender, EventArgs e)
        {
            if (CheckStudentExists())
            {

                Response.Write("<script>alert('Student Already Exist with this Student ID, try other ID');</script>");
            }
            else
            {
                SignUpNewStudent();
            }
        }

        // user defined method
        bool CheckStudentExists() 
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from student_table where Student_ID ='" + TextBox8.Text.Trim() + "';", con);
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
        void SignUpNewStudent() 
        {
            //Response.Write("<script>alert('Testing');</script>");
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                  
                SqlCommand cmd = new SqlCommand(" INSERT INTO student_table(firstname,lastname,gender,dob,contact,email,state,city,pincode,address,Student_ID,password,acstatus) values(@firstname,@lastname,@gender,@dob,@contact,@email,@state,@city,@pincode,@address,@Student_ID,@password,@acstatus)", con);
                cmd.Parameters.AddWithValue("@firstname", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@lastname", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@gender", DropDownList2.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@dob", TextBox10.Text.Trim());
                cmd.Parameters.AddWithValue("@contact", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@email", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@state", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@city", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@pincode", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@address", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@Student_ID", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@password", TextBox.Text.Trim());
                cmd.Parameters.AddWithValue("@acstatus", "Pending");
                cmd.ExecuteNonQuery();
                
                Response.Write("<script>alert('Sign Up Successful. Go to User Login to Login');</script>");
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        
        
    }
}