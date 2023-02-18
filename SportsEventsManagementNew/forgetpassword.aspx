<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="forgetpassword.aspx.cs" Inherits="SportsEventsManagementNew.forgetpassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="container">
        <div class="row">
            <div class="col-md-6">

                <div class="card">
                    <div class="card-body">



                        <div class="row">
                            <div class="col">
                                <center>
                                        <h4> For Students</h4>
                                    </center>
                            </div>
                        </div>

                       

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        

                         <div class="row">
                            <div class="col-md-4">
                                <label> Student ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Student ID"></asp:TextBox>
                                        <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Go" OnClick="Button1_Click"  />
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-8">                         
                                <div class="form-group">
                                    

                                </div>
                            </div>
                        </div>

                         <div class="row">
                            <div class="col-md-4">
                                <label> Student Name </label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Student Name" ReadOnly="true"></asp:TextBox>
                                        
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-8">
                                <label>E-mail Address</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Email Address" ReadOnly="true" ></asp:TextBox>

                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-4 m-xl-auto">
                                <asp:Button ID="Button2" class="btn btn-lg btn-block btn-success" runat="server" Text="Reset " OnClick="Button2_Click"  />
                            </div>
                            


                    </div>
                </div>


            </div>

                <a href="homepage.aspx"><< Back to Home</a><br>
                <br>
            </div>

            <div class="col-md-6">

                <div class="card">
                    <div class="card-body">



                        <div class="row">
                            <div class="col">
                                <center>
                                        <h4> For Teachers</h4>
                                    </center>
                            </div>
                        </div>

                       

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        

                         <div class="row">
                            <div class="col-md-4">
                                <label> Teacher ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Teacher ID"></asp:TextBox>
                                        <asp:Button class="btn btn-primary" ID="Button3" runat="server" Text="Go" OnClick="Button7_Click" style="width: 32px"  />
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-8">                         
                                <div class="form-group">
                                    

                                </div>
                            </div>
                        </div>

                         <div class="row">
                            <div class="col-md-4">
                                <label> Teacher Name </label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Teacher Name" ReadOnly="true"></asp:TextBox>
                                        
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-8">
                                <label>E-mail Address</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Email Address" ReadOnly="true"></asp:TextBox>

                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-4 m-xl-auto">
                                <asp:Button ID="Button4" class="btn btn-lg btn-block btn-success" runat="server" Text="Reset " OnClick="Button8_Click"  />
                            </div>
                            


                    </div>
                </div>


            </div>

        </div>
    </div>

</asp:Content>
