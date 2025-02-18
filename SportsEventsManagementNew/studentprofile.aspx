﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="studentprofile.aspx.cs" Inherits="SportsEventsManagementNew.studentprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

       <div class="container">
      <div class="row">
         <div class="col-md-8 mx-auto">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                            <img src="images/Student%20login.JPG"  width="100"/>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Student Profile</h4>
                            <span> Account Status - </span>
                               <asp:Label class="badge bg-success" ID="Label1" runat="server" Text="Status"></asp:Label>
                        </center>
                     </div>
                  </div>

                  <div class="row">
                     <div class="col">
                        
                     </div>
                  </div>

                   <div class="row">
                       <div class="col-md-6">
                           <label> Enter First Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="First Name"></asp:TextBox>
                        </div>
                           
                       </div>

                       <div class="col-md-6">
                           <label> Enter Last Name </label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="Last Name"></asp:TextBox>
                        </div>                                                  
                       </div>                    
                   </div>

                   <div class="row">
                       <div class="col-md-6">
                           <label> Gender </label>
                        <div class="form-group">
                            <asp:DropDownList CssClass="form-control" ID="DropDownList2" runat="server">                                
                                <asp:ListItem Text="Select" Value="select" />
                              <asp:ListItem Text="MALE" Value="MALE" />
                              <asp:ListItem Text="FEMALE" Value="FEMALE" />
                                </asp:DropDownList>
                                   
                            </div>
                       </div>

                       <div class="col-md-6">
                           <label> Date Of Birth</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Date Of Birth" TextMode="date"></asp:TextBox>
                        </div>
                        
                       </div>
                         
                   </div>

                   <div class="row">
                       <div class="col-md-6">
                           <label> Contact Number</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Contact Number" TextMode="Phone"></asp:TextBox>
                        </div>
                           
                       </div>

                       <div class="col-md-6">
                           <label> Email Address</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Email Address" TextMode="Email" ></asp:TextBox>
                        </div>                      
                       </div>                   
                  </div>

                   <div class="row">
                       <div class="col-md-4">
                           <label> State </label>
                        <div class="form-group">
                            <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server">
                                <asp:ListItem Text="select" Value="select"/>
                                <asp:ListItem Text="Select" Value="select" />
                              <asp:ListItem Text="Andhra Pradesh" Value="Andhra Pradesh" />
                              <asp:ListItem Text="Arunachal Pradesh" Value="Arunachal Pradesh" />
                              <asp:ListItem Text="Assam" Value="Assam" />
                              <asp:ListItem Text="Bihar" Value="Bihar" />
                              <asp:ListItem Text="Chhattisgarh" Value="Chhattisgarh" />
                              <asp:ListItem Text="Rajasthan" Value="Rajasthan" />
                              <asp:ListItem Text="Goa" Value="Goa" />
                              <asp:ListItem Text="Gujarat" Value="Gujarat" />
                              <asp:ListItem Text="Haryana" Value="Haryana" />
                              <asp:ListItem Text="Himachal Pradesh" Value="Himachal Pradesh" />
                              <asp:ListItem Text="Jammu and Kashmir" Value="Jammu and Kashmir" />
                              <asp:ListItem Text="Jharkhand" Value="Jharkhand" />
                              <asp:ListItem Text="Karnataka" Value="Karnataka" />
                              <asp:ListItem Text="Kerala" Value="Kerala" />
                              <asp:ListItem Text="Madhya Pradesh" Value="Madhya Pradesh" />
                              <asp:ListItem Text="Maharashtra" Value="Maharashtra" />
                              <asp:ListItem Text="Manipur" Value="Manipur" />
                              <asp:ListItem Text="Meghalaya" Value="Meghalaya" />
                              <asp:ListItem Text="Mizoram" Value="Mizoram" />
                              <asp:ListItem Text="Nagaland" Value="Nagaland" />
                              <asp:ListItem Text="Odisha" Value="Odisha" />
                              <asp:ListItem Text="Punjab" Value="Punjab" />
                              <asp:ListItem Text="Rajasthan" Value="Rajasthan" />
                              <asp:ListItem Text="Sikkim" Value="Sikkim" />
                              <asp:ListItem Text="Tamil Nadu" Value="Tamil Nadu" />
                              <asp:ListItem Text="Telangana" Value="Telangana" />
                              <asp:ListItem Text="Tripura" Value="Tripura" />
                              <asp:ListItem Text="Uttar Pradesh" Value="Uttar Pradesh" />
                              <asp:ListItem Text="Uttarakhand" Value="Uttarakhand" />
                              <asp:ListItem Text="West Bengal" Value="West Bengal" />


                            </asp:DropDownList>
                        </div>
                           
                       </div>

                       <div class="col-md-4">
                           <label> City</label>
                        <div class="form-group">
                           <asp:TextBox Class="form-control" ID="TextBox6" runat="server" placeholder="City"  ></asp:TextBox>
                        </div>                      
                       </div>
                       <div class="col-md-4">
                           <label> Pin code</label>
                        <div class="form-group">
                           <asp:TextBox Class="form-control" ID="TextBox7" runat="server" placeholder="Pin Code" TextMode="Number" ></asp:TextBox>
                        </div>                      
                       </div>
                  </div>

                   <div class="row">
                       <div class="col">
                           <label> FullAddress</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Full Address" TextMode="MultiLine"></asp:TextBox>
                        </div>
                           
                       </div>

                                          
                  </div>

                   <div class="row">
                     <div class="col">
                        <center>
                           <span class="badge badge-pill badge-info">Login Credentials</span>
                        </center>
                     </div>
                  </div>

                   <div class="row">
                       <div class="col-md-4">
                           <label> User Id</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="User Id" ReadOnly="true" ></asp:TextBox>
                        </div>
                           
                       </div>

                       <div class="col-md-4">
                           <label> old Password</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox" runat="server" placeholder=" old Password" ReadOnly="true" TextMode="Password" ></asp:TextBox>
                        </div>                      
                       </div>
                       <div class="col-md-4">
                           <label> New  Password</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="New Password" TextMode="Password" ></asp:TextBox>
                        </div>                      
                       </div>
                  </div>
                  </div>
                   <div class="row">
                       <div class="col-8 mx-auto">
                           <center>
                               <div class="form-group">
                           <asp:Button class="btn btn-primary btn-block  btn-lg" ID="Button" runat="server" Text="Update" OnClick="Button_Click" />
                        </div>
                           </center>
                           
                                               
                       </div>
                      
                   </div>
            </div>
            <a href="homepage.aspx"> << Back to Home</a><br><br>
         </div>
          <asp:GridView ID="GridView1" runat="server" OnRowDataBound="GridView1_RowDataBound"></asp:GridView>
          <div class="col-md-7">

          </div>

      </div>
   </div>



</asp:Content>
