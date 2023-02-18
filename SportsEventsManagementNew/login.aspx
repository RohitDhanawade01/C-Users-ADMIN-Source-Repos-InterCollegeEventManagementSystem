<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="SportsEventsManagementNew.Login1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <section>
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <center>
                        <img src="images/Student%20login.JPG" width="150" />
                    <h4> <a href="studentlogin.aspx"> Student Login  </a> </h4> 
                    
                    </center>
                    
                </div>
                <div class="col-md-4">
                    <center>
                        <img src="images/Teacher%20login.png" width="150"/>
                        <div>
                          <h4>  <a href="Teacherlogin.aspx">  Teacher Login </a> </h4>
                        </div>
                    
                    
                    </center>
                    
                </div>
                <div class="col-md-4">
                    <center>
                        <img src="images/Admin%20Login.jpg" width="150"/>
                    <h4> <a href="adminlogin.aspx"> Admin Login </a> </h4>
                    
                    </center>
                    
                </div>
            </div>

        </div>
    </section>
</asp:Content>
