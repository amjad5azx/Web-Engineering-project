<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="DBMSProject.Profile" %>

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
    <nav class="navbar navbar-expand-lg navbar-light bg-dark" " >
  <a class="navbar-brand" href="#" style="font-size:30px;color:white;font-weight:bold;">   Your Insurance</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav mx-auto">
      <li class="nav-item active">
        <a class="nav-link" style="color:white;" href="Profile.aspx">Profile</a>
      </li>
         
      <li class="nav-item">
        <a class="nav-link" href="Policy Detail.aspx">Policy Detail</a>
      </li>
        <li class="nav-item ">
        <a class="nav-link"  href="Update.aspx">Setting</a>
      </li>
    </ul>
  </div>
</nav>
    <div class="container-fluid" style="background-color:#E5E4E2;">
         <div class="container" style="background-color:#E5E4E2;">
  
       
         <!-- for form -->
          
                  <form id="form1" runat="server">
                     
  <div class="row" style="padding:50px;">
    <div class="col-12 col-sm-12 col-md-12 col-lg-12">
      <div class="card">
        <img class="card-img-top" src="1887291.jpg" alt="Bologna">
        <div class="card-body text-center">
          <img class="avatar rounded-circle" src="profile-icon-png-909.png" alt="Bologna" style="  border: 0.3rem solid rgba(#fff, 0.3);
  margin-top: -6rem;
  margin-bottom: 1rem;
  max-width: 9rem;">
            <br />
            <asp:Label ID="nameid" runat="server" Text="Name: " Font-Bold></asp:Label><asp:Label ID="nametct" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <asp:Label ID="addressid" runat="server" Text="Address: " Font-Bold></asp:Label><asp:Label ID="addresstxt" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="City: " Font-Bold></asp:Label><asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <asp:Label ID="nomineename" runat="server" Text="Nominee: " Font-Bold></asp:Label><asp:Label ID="nomineetxt" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <asp:Label ID="ph_no" runat="server" Text="Ph-No: " Font-Bold></asp:Label><asp:Label ID="phtxt" runat="server" Text="Label" ></asp:Label>
            <br />
            <br />
            <%--<asp:Label ID="dob" runat="server" Text="Date-Of-Birth :"></asp:Label><asp:Label ID="dobtxt" runat="server" Text="Label"></asp:Label>
            <br />
            <br />--%>

           <%-- <button type="button" class="btn btn-info" data-toggle="modal" data-target="#exampleModalLong">
  Update Info
 </button> --%>
                <asp:Button ID="Button1" runat="server" class="btn btn-outline-info" Text="Sign Out" OnClick="Button1_Click" />
          <%--<a href="#" class="btn btn-outline-info">Sign out</a>--%>
        </div>
      </div>
    </div>
  </div>
</div>

        <!-- update pop up -->
        <div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Profile update</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="tru&times;</span>
        </button>
      </div>
      <div class="modal-body">
          <br>
                  <asp:Label ID="upname" runat="server" Text="Name"> </asp:Label><asp:TextBox class="form-control" ID="upnametxt" runat="server"></asp:TextBox>
                      <br>
                  <asp:Label ID="uppass" runat="server" Text="Password"> </asp:Label><asp:TextBox class="form-control" ID="uppasstxt" runat="server" TextMode="Password"></asp:TextBox>
                      <br>
                  <asp:Label ID="upphone" runat="server" Text="Phone No."> </asp:Label><asp:TextBox class="form-control" ID="upphonetxt" runat="server" TextMode="Number"></asp:TextBox>
<br>
                 
                  <asp:Label ID="upcity" runat="server" Text="City"> </asp:Label><asp:TextBox class="form-control" ID="upcitytxt" runat="server"></asp:TextBox>
<br>
  <asp:Label ID="upAddress" runat="server" Text="Address"> </asp:Label><asp:TextBox class="form-control" ID="upaddresstxt" runat="server"></asp:TextBox>
<br> 
            
  <asp:Label ID="upnominee" runat="server" Text="Nominee"> </asp:Label><asp:TextBox class="form-control" ID="upnomineetxt" runat="server"></asp:TextBox>
                     
      </div>
      <div class="modal-footer">
          <asp:Button ID="Button3" runat="server" Text="Close"   class="btn btn-secondary" data-dismiss="modal" />
          <asp:Button ID="Button4" runat="server" Text="Save changes"  class="btn btn-primary" OnClick="Button4_Click1" />
      
      </div>
    </div>
  </div>
</div>


        <!--update/ -->
                  
                        </form>
                   
                  

                 

              


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
          <h5 class="text-uppercase mb-4">About companyany</h5>

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
