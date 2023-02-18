<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="viewevent.aspx.cs" Inherits="SportsEventsManagementNew.viewevent" %>
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
                                        <h4> Event Details</h4>
                                    </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>                                   
                                    <img src="images/sports%20event%20logo.JPG" width="100"/>                                       
                                    </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label> Participation ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Participation ID"></asp:TextBox>
                                        <asp:Button class="btn btn-primary" ID="Button3" runat="server" Text="Go" OnClick="Button3_Click"  />
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label> Event ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Event ID"></asp:TextBox>
                                        <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Go" OnClick="Button1_Click"  />
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
                                <asp:Button ID="Button2" class="btn btn-lg btn-block btn-success" runat="server" Text="Register" OnClick="Button2_Click"  />
                            </div>                            
                            <div class="col-5">
                                <asp:Button ID="Button4" class="btn btn-lg btn-block btn-danger" runat="server" Text="De-Register " OnClick="Button4_Click"  />
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
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="SELECT * FROM [event_table]"></asp:SqlDataSource>
                              <div class="col">
                                
                                  <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Event_ID" DataSourceID="SqlDataSource1">
                                      <Columns>
                                          <asp:BoundField DataField="Event_ID" HeaderText="ID" ReadOnly="True" SortExpression="Event_ID" />
                                          <asp:BoundField DataField="eventname" HeaderText="Event" SortExpression="eventname" />
                                          <asp:BoundField DataField="teachername" HeaderText="Teacher" SortExpression="teachername" />
                                          <asp:BoundField DataField="collegename" HeaderText="College" SortExpression="collegename" />
                                          <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date" />
                                          <asp:BoundField DataField="eventtype" HeaderText="Type" SortExpression="eventtype" />
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
