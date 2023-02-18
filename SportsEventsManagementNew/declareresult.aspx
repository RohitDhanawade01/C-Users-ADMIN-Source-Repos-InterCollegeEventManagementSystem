<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="declareresult.aspx.cs" Inherits="SportsEventsManagementNew.declareresult" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {

            //$(document).ready(function () {
            //$('.table').DataTable();
            // });

            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
            //$('.table1').DataTable();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-5">

                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                        <h4> Declare Result </h4>
                                    </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>                                   
                                    <img src="images/Results.JPG" width="300" />                                 
                                    </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label> Participation ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Participation ID"></asp:TextBox>
                                        <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Go" OnClick="Button1_Click1"  />
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                
                                <div class="form-group">
                                    

                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>Student ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Student ID" ReadOnly="true"></asp:TextBox>
                                        
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-8">
                                <label> Student Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Student Name" ReadOnly="true"></asp:TextBox>

                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label> Event ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Event ID" ReadOnly="true"></asp:TextBox>
                                        
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-8">
                                <label> Event Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Event Name" ReadOnly="true"></asp:TextBox>

                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label> Teacher Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Teacher Name" ReadOnly="true"></asp:TextBox>

                                </div>
                            </div>

                            <div class="col-md-8">
                                <label> College Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="College Name" ReadOnly="true"></asp:TextBox>

                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label> Event Date </label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Event Date" ReadOnly="true"></asp:TextBox>

                                </div>
                            </div>

                            <div class="col-md-8">
                                <label> Event Type </label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Event Type" ReadOnly="true"></asp:TextBox>

                                </div>
                            </div>
                        </div>
                        

                        <div class="row">
                            <div class="col-5">
                                <asp:Button ID="Button2" class="btn btn-lg btn-block btn-success" runat="server" Text="Winner" OnClick="Button2_Click"   />
                            </div>                            
                            <div class="col-5">
                                <asp:Button ID="Button4" class="btn btn-lg btn-block btn-danger" runat="server" Text="Delete " OnClick="Button4_Click"   />
                            </div>
                        </div>


                    </div>
                </div>

                <a href="homepage.aspx"><< Back to Home</a><br>
                <br>
            </div>

            <div class="col-md-7">

                <div class="card">
                    <div class="card-body">



                        <div class="row">
                            <div class="col">
                                <center>
                                        <h4> Event List</h4>
                                    </center>
                            </div>
                        </div>

                       

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="SELECT * FROM [studenteventreg_table]"></asp:SqlDataSource>
                              <div class="col">
                                
                                  <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Participation_ID" DataSourceID="SqlDataSource1">
                                      <Columns>
                                          <asp:BoundField DataField="Participation_ID" HeaderText="Part_ID" ReadOnly="True" SortExpression="Participation_ID" />
                                          <asp:BoundField DataField="eventname" HeaderText="Event " SortExpression="eventname" />
                                          <asp:BoundField DataField="teachername" HeaderText="Teacher" SortExpression="teachername" />
                                          <asp:BoundField DataField="collegename" HeaderText="College" SortExpression="collegename" />
                                          <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date" />
                                          <asp:BoundField DataField="eventtype" HeaderText="Type" SortExpression="eventtype" />
                                          <asp:BoundField DataField="studentname" HeaderText="Student Name" SortExpression="studentname" />
                                      </Columns>
                                  </asp:GridView>
                            </div>
                        </div>


                    </div>
                </div>


            </div>

        </div>
    </div>

</asp:Content>
