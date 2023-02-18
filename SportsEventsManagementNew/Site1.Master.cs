using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SportsEventsManagementNew
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].Equals(""))
                {
                    LinkButton1.Visible = true; //  user log in link button
                    LinkButton2.Visible = true; //  user sign up link button

                    LinkButton3.Visible = false; //  user log out link button
                    LinkButton7.Visible = false; // hello user  link button


                    LinkButton6.Visible = false; //  Admin log in link button
                    LinkButton11.Visible = false; //  Teacher management link button
                    LinkButton12.Visible = false; //  Student management link button
                    LinkButton8.Visible = false; //  Event management link button
                    LinkButton9.Visible = false; //  view result link button
                }
                else if (Session["role"].Equals("student"))
                {
                    LinkButton1.Visible = false; //  user log in link button
                    LinkButton2.Visible = false; //  user sign up link button

                    LinkButton3.Visible = true; //  user log out link button
                    LinkButton7.Visible = true; // hello user  link button
                    LinkButton7.Text = "Hello  " + Session["firstname"].ToString();


                    LinkButton6.Visible = false; //  Admin log in link button
                    LinkButton11.Visible = false; //  Teacher management link button
                    LinkButton12.Visible = false; //  Student management link button
                    LinkButton8.Visible = false; //  Event management link button
                    LinkButton9.Visible = true; //  view result link button
                    LinkButton13.Visible = true; //   nav bar view result link button
                    LinkButton14.Visible = true; //   nav bar view Events link button
                    LinkButton17.Visible = true; //   nav bar view Events link button
                }
                else if (Session["role"].Equals("teacher"))
                {
                    LinkButton1.Visible = false; //  user log in link button
                    LinkButton2.Visible = false; //  user sign up link button

                    LinkButton3.Visible = true; //  user log out link button
                    LinkButton7.Visible = true; // hello user  link button
                    LinkButton7.Text = "Hello  " + Session["firstname"].ToString();


                    LinkButton6.Visible = false; //  Admin log in link button
                    LinkButton11.Visible = false; //  Teacher management link button
                    LinkButton12.Visible = false; //  Student management link button
                    LinkButton8.Visible = false; //  Event management link button
                    LinkButton9.Visible = true; //  view result link button
                    LinkButton10.Visible = true; //  view Assigned Event link button
                    LinkButton13.Visible = true; //   nav bar view result link button
                    LinkButton15.Visible = true; //   nav bar view Registered Students link button
                    LinkButton16.Visible = true; //   nav bar Declare Result  link button
                }
                else if (Session["role"].Equals("admin"))
                {
                    LinkButton1.Visible = false; //  user log in link button
                    LinkButton2.Visible = false; //  user sign up link button

                    LinkButton3.Visible = true; //  user log out link button
                    LinkButton7.Visible = true; // hello user  link button
                    LinkButton7.Text = "Hello  " + Session["firstname"].ToString();


                    LinkButton6.Visible = false; //  Admin log in link button
                    LinkButton11.Visible = true; //  Teacher management link button
                    LinkButton5.Visible = true; //  college management link button
                    LinkButton12.Visible = true; //  Student management link button
                    LinkButton8.Visible = true; //  Event management link button
                    LinkButton9.Visible = true; //  view result link button                   
                    LinkButton13.Visible = true; //   nav bar view result link button
                }
            }
            catch(Exception ex)
            {

            }
            


        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");

        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminteachermanagement.aspx");
        }

        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminstudentmanagement.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("admineventmanagement.aspx");
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewresults.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewresults.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("signup.aspx");
        }
        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("admincollegemanagement.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            try
            {
                Session["username"] = "";
                Session["firstname"] = "";
                Session["role"] = "";
                Session["status"] = "";
                Response.Write("<script>alert('Log Out successful !');</script>");
                Response.Redirect("Homepage.aspx");

                LinkButton1.Visible = true; //  user log in link button
                LinkButton2.Visible = true; //  user sign up link button

                LinkButton3.Visible = false; //  user log out link button
                LinkButton7.Visible = false; // hello user  link button


                LinkButton6.Visible = false; //  Admin log in link button
                LinkButton11.Visible = false; //  Teacher management link button
                LinkButton12.Visible = false; //  Student management link button
                LinkButton8.Visible = false; //  Event management link button
                LinkButton9.Visible = true; //  view result link button

                Response.Redirect("Homepage.aspx");
            }
            catch(Exception ex)
            {

            }
            
        }

        // hello user profile button
        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            if (Session["role"].Equals("student"))
            {
                Response.Redirect("studentprofile.aspx");
            }
            else if (Session["role"].Equals("teacher"))
            {
                Response.Redirect("teacherprofile.aspx");
            }
        }


        // Assigned Events for Teacher
        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("assignedevent.aspx");
        }

        // View Results
        protected void LinkButton13_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewresults.aspx");
        }

        // View Events for Students
        protected void LinkButton14_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewevent.aspx");
        }

        // View Registered Students for Teachers
        protected void LinkButton15_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewregisteredstudents.aspx");
        }

        // declare result for teachers
        protected void LinkButton16_Click(object sender, EventArgs e)
        {
            Response.Redirect("declareresult.aspx");
        }

        //  my events students
        protected void LinkButton17_Click(object sender, EventArgs e)
        {
            Response.Redirect("myevents.aspx");
        }
    }
}