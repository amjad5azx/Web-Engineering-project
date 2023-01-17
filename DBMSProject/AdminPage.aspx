<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="DBMSProject.AdminPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <title></title>
</head>
<body>
     <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.min.js" integrity="sha384-VHvPCCyXqtD5DqJeNxl2dtTyhF78xXNXdkwX1CZeRusQfRKp+tA7hAShOK/B/fQ2" crossorigin="anonymous"></script>
    -->
    <form id="form1" runat="server">
        <div align="center">
            <h1 align="center">User Policies</h1>
            <asp:Label ID="user" runat="server" Text="Enter Username: " Font-Bold></asp:Label>
            <br />
            <asp:TextBox class="form-control" ID="usertxt" runat="server"></asp:TextBox>
            <br />
            <asp:Button class="btn btn-success" ID="approvePolicy"  runat="server" Text="Check Details" OnClick="approvePolicy_Click" />
            <br /><br />
            <hr />
            <br />
            <asp:Label ID="Label1" runat="server" Text="No User Found" ForeColor="Red"></asp:Label><br />
            <br />
            <asp:Label ID="pnameid" runat="server" Text="Policy Name: " Font-Bold></asp:Label><asp:Label ID="nametct" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
             <asp:Label ID="Label2" runat="server" Text="Policy Status: " Font-Bold></asp:Label><asp:Label ID="status" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <asp:Label ID="premium_amount" runat="server" Text="Premium Amount: " Font-Bold></asp:Label><asp:Label ID="addresstxt" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <asp:Label ID="sum_assured" runat="server" Text="Sum Assured: " Font-Bold></asp:Label><asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <asp:Label ID="paid_amount" runat="server" Text="Paid Amount: " Font-Bold></asp:Label><asp:Label ID="nomineetxt" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <hr /><br />
            <asp:Button class="btn btn-success" ID="SignOut" runat="server" Text="Sign Out" OnClick="SignOut_Click" />
            <br />
            </br>
            <hr /><br />
            <h2>Inactive Users</h2>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="user_id" HeaderText="user_id" ReadOnly="True" InsertVisible="False" SortExpression="user_id"></asp:BoundField>
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name"></asp:BoundField>
                    <asp:BoundField DataField="username" HeaderText="username" SortExpression="username"></asp:BoundField>
                    <asp:BoundField DataField="nominee_id" HeaderText="nominee_id" ReadOnly="True" InsertVisible="False" SortExpression="nominee_id"></asp:BoundField>
                    <asp:BoundField DataField="nominee_name" HeaderText="nominee_name" SortExpression="nominee_name"></asp:BoundField>
                    <asp:BoundField DataField="policy_type_id" HeaderText="policy_type_id" SortExpression="policy_type_id"></asp:BoundField>
                    <asp:BoundField DataField="policy_type_name" HeaderText="policy_type_name" SortExpression="policy_type_name"></asp:BoundField>
                    <asp:BoundField DataField="policy_status" HeaderText="policy_status" SortExpression="policy_status"></asp:BoundField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:InsuranceConnectionString6 %>' SelectCommand="User_Policy_Status_Details" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
            <br /><hr>
            <br />
            <h2>Actived User Policies</h2>
            <br />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="user_id" HeaderText="user_id" ReadOnly="True" InsertVisible="False" SortExpression="user_id"></asp:BoundField>
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name"></asp:BoundField>
                    <asp:BoundField DataField="username" HeaderText="username" SortExpression="username"></asp:BoundField>
                    <asp:BoundField DataField="nominee_id" HeaderText="nominee_id" ReadOnly="True" InsertVisible="False" SortExpression="nominee_id"></asp:BoundField>
                    <asp:BoundField DataField="nominee_name" HeaderText="nominee_name" SortExpression="nominee_name"></asp:BoundField>
                    <asp:BoundField DataField="policy_type_id" HeaderText="policy_type_id" SortExpression="policy_type_id"></asp:BoundField>
                    <asp:BoundField DataField="policy_type_name" HeaderText="policy_type_name" SortExpression="policy_type_name"></asp:BoundField>
                    <asp:BoundField DataField="policy_status" HeaderText="policy_status" SortExpression="policy_status"></asp:BoundField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:InsuranceConnectionString7 %>' SelectCommand="Active_Users_Policies_Details" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
            <br /><hr />
            <h2>Claimed User Policies</h2>
            <br />
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3">
                <Columns>
                    <asp:BoundField DataField="user_id" HeaderText="user_id" ReadOnly="True" InsertVisible="False" SortExpression="user_id"></asp:BoundField>
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name"></asp:BoundField>
                    <asp:BoundField DataField="username" HeaderText="username" SortExpression="username"></asp:BoundField>
                    <asp:BoundField DataField="nominee_id" HeaderText="nominee_id" ReadOnly="True" InsertVisible="False" SortExpression="nominee_id"></asp:BoundField>
                    <asp:BoundField DataField="nominee_name" HeaderText="nominee_name" SortExpression="nominee_name"></asp:BoundField>
                    <asp:BoundField DataField="policy_type_id" HeaderText="policy_type_id" SortExpression="policy_type_id"></asp:BoundField>
                    <asp:BoundField DataField="policy_type_name" HeaderText="policy_type_name" SortExpression="policy_type_name"></asp:BoundField>
                    <asp:BoundField DataField="policy_status" HeaderText="policy_status" SortExpression="policy_status"></asp:BoundField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:InsuranceConnectionString8 %>' SelectCommand="Claimed_User_Policies" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        </div>
    </form>
    <br />
     <%--Remove container if empty--%>
    <div class=" row " style="padding-bottom:-1px;">
    <div class="col-md-12 pr-0 pl-0">
  <footer class="text-white text-center text-lg-start " style="background-color: #23242a;">
    <!-- Grid container -->
    <div class="container p-4">
      <!--Grid row-->
      <div class="row mt-4">
        <!--Grid column-->
        <div class="col-lg-4 col-md-12 mb-4 mb-md-0">
          <h5 class="text-uppercase mb-4">About company</h5>

          <p>
            At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium
            voluptatum deleniti atque corrupti.
          </p>

          <p>
            Blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas
            molestias.
          </p>

          <div class="mt-4">
            <!-- Facebook -->
            <a type="button" class="btn btn-floating btn-warning btn-lg"><i class="fab fa-facebook-f"></i></a>
            <!-- Dribbble -->
            <a type="button" class="btn btn-floating btn-warning btn-lg"><i class="fab fa-dribbble"></i></a>
            <!-- Twitter -->
            <a type="button" class="btn btn-floating btn-warning btn-lg"><i class="fab fa-twitter"></i></a>
            <!-- Google + -->
            <a type="button" class="btn btn-floating btn-warning btn-lg"><i class="fab fa-google-plus-g"></i></a>
            <!-- Linkedin -->
          </div>
        </div>
        <!--Grid column-->

        <!--Grid column-->
        <div class="col-lg-4 col-md-6 mb-4 mb-md-0">

          <ul class="fa-ul" style="margin-left: 1.65em;">
            <li class="mb-3">
              <span class="fa-li"><i class="fas fa-home"></i></span><span class="ms-2">New York, NY 10012, US</span>
            </li>
            <li class="mb-3">
              <span class="fa-li"><i class="fas fa-envelope"></i></span><span class="ms-2">info@example.com</span>
            </li>
            <li class="mb-3">
              <span class="fa-li"><i class="fas fa-phone"></i></span><span class="ms-2">+ 01 234 567 88</span>
            </li>
            <li class="mb-3">
              <span class="fa-li"><i class="fas fa-print"></i></span><span class="ms-2">+ 01 234 567 89</span>
            </li>
          </ul>
        </div>
        <!--Grid column-->

        <!--Grid column-->
        <div class="col-lg-4 col-md-6 mb-4 mb-md-0">
          <h5 class="text-uppercase mb-4">Opening hours</h5>

          <table class="table text-center text-white">
            <tbody class="font-weight-normal">
              <tr>
                <td>Mon - Thu:</td>
                <td>8am - 9pm</td>
              </tr>
              <tr>
                <td>Fri - Sat:</td>
                <td>8am - 1am</td>
              </tr>
              <tr>
                <td>Sunday:</td>
                <td>9am - 10pm</td>
              </tr>
            </tbody>
          </table>
        </div>
        <!--Grid column-->
      </div>
      <!--Grid row-->
    </div>
    <!-- Grid container -->

    <!-- Copyright -->
    <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
      © 2020 Copyright:
      <a class="text-white" href="https://mdChamp.com/">Yourinsurance.com</a>
    </div>
    <!-- Copyright -->
  </footer>
  </div>
</div>
</body>
</html>
