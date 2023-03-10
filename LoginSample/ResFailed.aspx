<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResFailed.aspx.cs" Inherits="LoginSample.ResFailed" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>LoginSample</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Load an icon library to show a hamburger menu (bars) on small screens -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="Styles.css" rel="stylesheet" />

    <script>
        function myFunction() {
          var x = document.getElementById("myTopnav");
          if (x.className === "topnav") {
            x.className += " responsive";
          } else {
            x.className = "topnav";
          }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">

            <div class="topnav" id="myTopnav">
                <a href="Default.aspx">Arly</a>
                <a href="Trine.aspx">Trine</a>
                <a href="Restricted.aspx" class="active">Restricted</a>
                <a href="Login.aspx">LoginPage</a>
                
                <a href="javascript:void(0);" class="icon" onclick="myFunction()">
                <i class="fa fa-bars"></i>
                </a>
            </div>
        <div class="content">
           <p> Du må Logge deg in som admin for å få tilgang: <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Login.aspx" runat="server">HyperLink</asp:HyperLink>
               </p>
        </div>
    </form>
</body>
</html>
