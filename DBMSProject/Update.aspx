<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="DBMSProject.Update" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <title></title>
</head>
<body >
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
    <nav class="navbar navbar-expand-lg navbar-light bg-dark fixed-top" " >
  <a class="navbar-brand" href="#" style="font-size:30px;color:white;font-weight:bold;">   Your Insurance</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav mx-auto">
       <li class="nav-item active">
        <a class="nav-link"  href="Profile.aspx">Profile</a>
      </li>
         
      <li class="nav-item">
        <a class="nav-link" href="Policy Detail.aspx">Policy Detail</a>
      </li>
        <li class="nav-item ">
        <a class="nav-link" style="color:white;" href="Update.aspx">Setting</a>
      </li>
    </ul>
  </div>
</nav>
    <div class="container-fluid" style="background-color:#E5E4E2;">
         
  
                      
          <!-- for imaage -->
          <div class="row ">
              <div class="col-sm-12 pl-0 pr-0">
                  
               &nbsp;</div>
              </div>
       
         <!-- for form -->
          <div class="row" style="height: auto;display: flex;
  align-items: center;
  justify-content: center;
  margin:20px;">

              <div class="col-md-6"  style="background-color:white;padding:10px;">
                  <form id="form1" runat="server">
                      <h1  style="font-size:50px;">Update Info</h1>
                  <br>
                      <hr>
                  <br>
                  <asp:Label ID="name" runat="server" Text="Update Name" Font-Bold> </asp:Label>
                      <br />
                      <asp:TextBox class="form-control" ID="name_txt" runat="server"></asp:TextBox>
                      <br />
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:Button ID="UpdateName" class="btn btn-success" runat="server" Text="Update Name" OnClick="UpdateName_Click" />
                      <br />
                      <br>
                      <hr /><hr />
                  <asp:Label ID="pass" runat="server" Text="Update Password" Font-Bold> </asp:Label>
                      <br />
                      <asp:TextBox class="form-control" ID="passtxt" runat="server" TextMode="Password"></asp:TextBox>
                      <br />
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:Button ID="UpdatePassword" class="btn btn-success" runat="server" Text="Update Password" OnClick="UpdatePassword_Click" />
                      <br />
                      <br>
                      <hr /><hr />
                  <asp:Label ID="phone" runat="server" Text="Update Phone No." Font-Bold> </asp:Label>
                      <br />
                      <asp:TextBox class="form-control" ID="phone_txt" runat="server" TextMode="Number" OnTextChanged="phone_txt_TextChanged"></asp:TextBox>
                      <br /> 
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:Button ID="UpdatePhone" class="btn btn-success" runat="server" Text="Update Phone no." />
                      <br />
                      <br>
                      <hr /><br />

                  <asp:Label ID="city" runat="server" Text="Update City" Font-Bold> </asp:Label>
                      <br />
                      <asp:TextBox class="form-control" ID="citytxt" runat="server"></asp:TextBox>
                      <br />
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:Button ID="UpdateCity" class="btn btn-success" runat="server" Text="Update City" OnClick="UpdateCity_Click" />
                      <br />
<br>
                      <hr /><br />
  <asp:Label ID="Address" runat="server" Text="Update Address" Font-Bold> </asp:Label>
                      <br />
                      <asp:TextBox class="form-control" ID="addresstxt" runat="server"></asp:TextBox>
                      <br />
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:Button ID="UpdateAddress" class="btn btn-success" runat="server" Text="Update Address" OnClick="UpdateAddress_Click" />
                      <br />
<br> 
            <hr /><br />
  <asp:Label ID="nominee" runat="server" Text="Update Nominee" Font-Bold></asp:Label>
                      <br />
                      <asp:TextBox class="form-control" ID="nomineetxt" runat="server"></asp:TextBox>
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:Button ID="UpdateNominee" class="btn btn-success" runat="server" Text="Update Nominee" OnClick="UpdateNominee_Click" />
                      <br>
                     <%-- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:Button class="btn btn-success" ID="signup" runat="server" Text="Update" OnClick="signup_Click" />--%>
                  </form>
                   
                  

                 
</div>
              </div>



                       <!-- Remove the container if you want to extend the Footer to full width. -->
<div class=" row ">
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
<!-- End of .container -->


        </div>
</body>
</html>
