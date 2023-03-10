<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Trine.aspx.cs" Inherits="LoginSample.Trine" %>

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
        <div>
            <div class="topnav" id="myTopnav">
                <a href="Default.aspx">Arly</a>
                <a href="Trine.aspx" class="active">Trine</a>
                <a href="Restricted.aspx">Restricted</a>
                <a href="Login.aspx">LoginPage</a>
                
                <a href="javascript:void(0);" class="icon" onclick="myFunction()">
                <i class="fa fa-bars"></i>
                </a>
            </div>

            <div class="content">

            <h1>
                <asp:Label ID="LabelTrineHeaderText" runat="server" Text="TrineHeader"></asp:Label>
            </h1>
            <p>
                <asp:Label ID="LabelTrineTextFromDB" runat="server" Text="TrineText"></asp:Label>
            </p>
           
            </div>


                        
           
            <h5 class="content"> Menyen er hentet fra:<a href="https://www.w3schools.com/howto/howto_js_topnav_responsive.asp">https://www.w3schools.com/howto/howto_js_topnav_responsive.asp</a>

            </h5>
        </div>
    </form>
</body>
</html>