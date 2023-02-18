<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="viewregisteredstudents.aspx.cs" Inherits="SportsEventsManagementNew.viewregisteredstudents" %>
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
    <center>
    <div class="container">
        <div class="row">
            

            <div class="col-md-12">

                <div class="card">
                    <div class="card-body">



                        <div class="row">
                            <div class="col">
                                <center>
                                        <h4> Registered Students List</h4>
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
                                          <asp:BoundField DataField="Participation_ID" HeaderText="Participation_ID" ReadOnly="True" SortExpression="Participation_ID" />
                                          <asp:BoundField DataField="eventname" HeaderText="Event Name" SortExpression="eventname" />
                                          <asp:BoundField DataField="teachername" HeaderText="Teacher Name" SortExpression="teachername" />
                                          <asp:BoundField DataField="collegename" HeaderText="College Name" SortExpression="collegename" />
                                          <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date" />
                                          <asp:BoundField DataField="eventtype" HeaderText="Type" SortExpression="eventtype" />
                                          <asp:BoundField DataField="studentname" HeaderText="Student Name" SortExpression="studentname" />
                                          <asp:BoundField DataField="Student_ID" HeaderText="Student_ID" SortExpression="Student_ID" />
                                      </Columns>
                                  </asp:GridView>
                            </div>
                        </div>


                    </div>
                </div>


            </div>

        </div>
    </div>
    </center>
</asp:Content>
