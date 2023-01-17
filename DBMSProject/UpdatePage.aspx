<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdatePage.aspx.cs" Inherits="DBMSProject.UpdatePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<body>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
 
    <form id="form1" runat="server">
        <div>
                <!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalLong">
  Launch demo modal
</button>

<!-- Modal -->
<div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Profile update</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
     <%-- <div class="modal-body">
          <br>
                  <asp:Label ID="name" runat="server" Text="Name"> </asp:Label><asp:TextBox class="form-control" ID="nametxt" runat="server"></asp:TextBox>
                      <br>
                  <asp:Label ID="pass" runat="server" Text="Password"> </asp:Label><asp:TextBox class="form-control" ID="passtxt" runat="server" TextMode="Password"></asp:TextBox>
                      <br>
                  <asp:Label ID="phone" runat="server" Text="Phone No."> </asp:Label><asp:TextBox class="form-control" ID="phonetxt" runat="server" TextMode="Number"></asp:TextBox>
<br>
                 
                  <asp:Label ID="city" runat="server" Text="City"> </asp:Label><asp:TextBox class="form-control" ID="citytxt" runat="server"></asp:TextBox>
<br>
  <asp:Label ID="Address" runat="server" Text="Address"> </asp:Label><asp:TextBox class="form-control" ID="addresstxt" runat="server"></asp:TextBox>
<br> 
            
  <asp:Label ID="nominee" runat="server" Text="Nominee"> </asp:Label><asp:TextBox class="form-control" ID="nomineetxt" runat="server"></asp:TextBox>
                     
      </div>--%>
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
          <asp:Button ID="Button1" runat="server" Text="Close"   class="btn btn-secondary" data-dismiss="modal" />
          <asp:Button ID="Button2" runat="server" Text="Save changes"  class="btn btn-primary" />
      
      </div>
    </div>
  </div>
</div>

        </div>
    </form>
</body>
</html>
