<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="viewresults.aspx.cs" Inherits="SportsEventsManagementNew.viewresults" %>
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
<div class="container-fluid">
      <div class="row">
         
         <div class="col-md-12">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                            <img src="images/Result%20Rank.png" />
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h3>Final Results</h3>
                           <asp:Label class="badge badge-pill badge-info" ID="Label2" runat="server" Text="Result"></asp:Label>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="SELECT * FROM [result_table]"></asp:SqlDataSource>
                     <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Participation_ID" DataSourceID="SqlDataSource1" >
                            <Columns>
                                <asp:BoundField DataField="Participation_ID" HeaderText="Participation_ID" ReadOnly="True" SortExpression="Participation_ID" />
                                <asp:BoundField DataField="Student_ID" HeaderText="Student_ID" SortExpression="Student_ID" />
                                <asp:BoundField DataField="studentname" HeaderText="studentname" SortExpression="studentname" />
                                <asp:BoundField DataField="Event_ID" HeaderText="Event_ID" SortExpression="Event_ID" />
                                <asp:BoundField DataField="eventname" HeaderText="eventname" SortExpression="eventname" />
                                <asp:BoundField DataField="teachername" HeaderText="teachername" SortExpression="teachername" />
                                <asp:BoundField DataField="collegename" HeaderText="collegename" SortExpression="collegename" />
                                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                                <asp:BoundField DataField="eventtype" HeaderText="eventtype" SortExpression="eventtype" />
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
