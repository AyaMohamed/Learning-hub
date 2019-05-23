﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CategoryPage.aspx.cs" ValidateRequest="false" Inherits="Lhub_Project.CategoryPage" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Learning Hub</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <meta name="author" content="" />

    <!-- Facebook and Twitter integration -->
    <meta property="og:title" content="" />
    <meta property="og:image" content="" />
    <meta property="og:url" content="" />
    <meta property="og:site_name" content="" />
    <meta property="og:description" content="" />
    <meta name="twitter:title" content="" />
    <meta name="twitter:image" content="" />
    <meta name="twitter:url" content="" />
    <meta name="twitter:card" content="" />

    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700,800" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,700" rel="stylesheet">

    <link rel="icon" type="image/png" href="images/icons/logo.ico" />
    <!-- Animate.css -->
    <link rel="stylesheet" href="css/animate.css">
    <!-- Icomoon Icon Fonts-->
    <link rel="stylesheet" href="css/icomoon.css">
    <!-- Bootstrap  -->
    <link rel="stylesheet" href="css/bootstrap.css">

    <!-- Magnific Popup -->
    <link rel="stylesheet" href="css/magnific-popup.css">

    <!-- Flexslider  -->
    <link rel="stylesheet" href="css/flexslider.css">

    <!-- Owl Carousel -->
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">

    <!-- Flaticons  -->
    <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">

    <!-- Theme style  -->
    <link rel="stylesheet" href="css/style.css">
     <!-- Theme style  -->
    <link rel="stylesheet" href="css/main.css">



    <!-- Modernizr JS -->
    <script src="js/modernizr-2.6.2.min.js"></script>
    <!-- FOR IE9 below -->
    <!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->
    <style type="text/css">
        @-ms-viewport {
            width: device-width;
        }
    </style>
</head>
<body>

    <div class="colorlib-loader"></div>
    <form style="display: inline" runat="server" method="post">

        <div id="page">
            <nav class="colorlib-nav" role="navigation">
               
                <div class="top-menu" style="height: 30px; vertical-align: middle;">
                    <div class="container">
                        <div class="row" style="margin-top: -15px;">
                            
                         <div class="col-md-12 text-left menu-2">
                            <ul>
                                <li class="active"><a href="HomePage.aspx?userName=<%=nameLbl.Text.ToString()%>">
                                    <img src="images/logo.png" style="height: 10%; width: 10%"></a></li>


                                <li><a href="HomePage.aspx">Home</a></li>

                                <li><a href="CategoryPage.aspx?catName=network&userName=<%=nameLbl.Text.ToString()%>">Networks</a></li>
                                <li><a href="CategoryPage.aspx?catName=Embedded systems&userName=<%=nameLbl.Text.ToString()%>">Embedded Systems</a></li>
                                <li><a href="CategoryPage.aspx?catName=software&userName=<%=nameLbl.Text.ToString()%>">Software</a></li>
                                <li><a href="CategoryPage.aspx?catName=Biotechnology&userName=<%=nameLbl.Text.ToString()%>">Biotechnology</a></li>
                                <li><a href="#">
                                    <img src="images/notification.png" /></a></li>
                                <li><a href="UploadArticlePage.aspx?userName=<%=nameLbl.Text.ToString()%>">
                                    <img src="images/add.png" /></a></li>
                                <li>
                                    <asp:TextBox ID="txtsrch" CssClass="srchLbl" Style="width: 100px; margin-left: 1%;" placeHolder="search" runat="server" TextMode="Search"></asp:TextBox></li>
                                <li><a href="UserProfilePage.aspx?userName=<%=nameLbl.Text.ToString()%>">
                                        <img src="images/user.png" /></a></li>
                                <li>
                                    <asp:Label ID="nameLbl" CssClass="srchLbl" runat="server" Text="Label"></asp:Label></li>

                            </ul>
                        </div>


                        </div>
                    </div>
                </div>
            </nav>
            <br /><br />
            <div class="col-md-8">
                <span class="txt1 p-b-11">
                    <asp:Label ID="categoryNamelbl" Style="text-align: center" runat="server" Text="CategoryName" Width="30%"></asp:Label>
                    <asp:Button ID="followBtn" runat="server" CssClass="myButton" Text="Follow" OnClick="followBtn_Click" />
                </span>
              
                <asp:GridView ID="newGrid" runat="server" CssClass="mydatagrid" PagerStyle-CssClass="pager"
                    HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AllowPaging="True" >
                </asp:GridView>
               
            </div>

            <%--<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
	</div>--%>
        </div>
    </form>
    <!-- jQuery -->
    <script src="js/jquery.min.js"></script>
    <!-- jQuery Easing -->
    <script src="js/jquery.easing.1.3.js"></script>
    <!-- Bootstrap -->
    <script src="js/bootstrap.min.js"></script>
    <!-- Waypoints -->
    <script src="js/jquery.waypoints.min.js"></script>
    <!-- Stellar Parallax -->
    <script src="js/jquery.stellar.min.js"></script>
    <!-- Flexslider -->
    <script src="js/jquery.flexslider-min.js"></script>
    <!-- Owl carousel -->
    <script src="js/owl.carousel.min.js"></script>
    <!-- Magnific Popup -->
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/magnific-popup-options.js"></script>
    <!-- Counters -->
    <script src="js/jquery.countTo.js"></script>
    <!-- Main -->
    <script src="js/main.js"></script>

</body>
</html>

