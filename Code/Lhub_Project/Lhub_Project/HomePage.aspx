<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Lhub_Project.HomePage" %>

<!DOCTYPE HTML>
<html>
<head>
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
<body  style="background-image:url(../images/background1.jpg);background-repeat:repeat;background-size:cover">

    <div class="colorlib-loader"></div>
    <form style="display: inline;" runat="server" method="post">
    <div id="page">
        <nav class="colorlib-nav" role="navigation">
         
            <div class="top-menu" style="height: 30px; vertical-align: middle;">
                <div class="container">
                    <div class="row" style="margin-top: -15px;">
                   
                        <div class="col-md-12 text-left menu-2">
                            <ul>
                                <li class="active"><a href="HomePage.aspx?userName=<%=nameLbl.Text.ToString()%>">
                                    <img src="/images/logo.png" style="height: 10%; width: 10%"></a></li>


                                <li><a href="HomePage.aspx?userName=<%=nameLbl.Text.ToString()%>">Home</a></li>
                                <li><a href="CategoryPage.aspx?catName=Network&userName=<%=nameLbl.Text.ToString()%>">Networks</a></li>
                                <li><a href="CategoryPage.aspx?catName=Embedded systems&userName=<%=nameLbl.Text.ToString()%>">Embedded Systems</a></li>
                                <li><a href="CategoryPage.aspx?catName=Software&userName=<%=nameLbl.Text.ToString()%>">Software</a></li>
                                <li><a href="CategoryPage.aspx?catName=Biotechnology&userName=<%=nameLbl.Text.ToString()%>">Biotechnology</a></li>
                                <li><a href="#">
                                    <img src="images/notification.png" /></a></li>
                                <li><a href="UploadArticlePage.aspx?userName=<%=nameLbl.Text.ToString()%>">
                                    <img src="images/add.png" /></a></li>
                                <li>
                                    <asp:TextBox ID="txtsrch" CssClass="srchLbl" Style="width: 100px; margin-left: 1%;" placeHolder="search" runat="server" TextMode="Search"></asp:TextBox></li>
                                <li><a href="#">
                                    <img src="images/user.png" /></a></li>
                                <li>
                                    <asp:Label ID="nameLbl" CssClass="srchLbl" runat="server" Text="Label"></asp:Label></li>

                            </ul>
                        </div>


                    </div>
                </div>
            </div>
        </nav>
        <br />
        <br />
        <div class="col-md-8">
            <asp:Label ID="Label2" runat="server" Text="Recently uploaded articles" Font-Size="X-Large" Font-Underline="True"></asp:Label>
           
            <div class="fancy-collapse-panel" style="width:60%">
                <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                    <div class="panel panel-default" id="panel1" runat="server">
                        <div class="panel-heading" role="tab" id="headingOne">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="false" aria-controls="collapseOne" class="collapsed">
                                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                </a>
                            </h4>
                        </div>
                        <div id="collapseOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne" aria-expanded="false" style="height: 0px;">
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-md-6">
                                        <asp:Label ID="article1ID" Style="word-wrap: normal;" runat="server" Text="Label"></asp:Label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <br />
                    <div class="panel panel-default" id="panel2" runat="server">
                        <div class="panel-heading" role="tab" id="headingTwo">
                            <h4 class="panel-title">
                                <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                                </a>
                            </h4>
                        </div>
                        <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo" aria-expanded="false">
                            <div class="panel-body">
                                <asp:Label ID="article2ID" Style="word-wrap: normal;" runat="server" Text="Label"></asp:Label>
                            </div>
                        </div>
                    </div>
                    <br />
                    <div class="panel panel-default" id="panel3" runat="server">
                        <div class="panel-heading" role="tab" id="headingThree">
                            <h4 class="panel-title">
                                <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                                </a>
                            </h4>
                        </div>
                        <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree" aria-expanded="false">
                            <div class="panel-body">
                                <asp:Label ID="article3ID" Style="word-wrap: normal;" runat="server" Text="Label"></asp:Label>
                            </div>
                        </div>
                    </div>
                    <br />
                    <div class="panel panel-default" id="panel4" runat="server">
                        <div class="panel-heading" role="tab" id="headingFour">
                            <h4 class="panel-title">
                                <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseThree">
                                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                                </a>
                            </h4>
                        </div>
                        <div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour" aria-expanded="false">
                            <div class="panel-body">
                                <asp:Label ID="article4ID" Style="word-wrap: normal;" runat="server" Text="Label"></asp:Label>
                            </div>
                        </div>
                    </div>
                    <br />
                    <div class="panel panel-default" id="panel5" runat="server">
                        <div class="panel-heading" role="tab" id="headingFive">
                            <h4 class="panel-title">
                                <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseFive" aria-expanded="false" aria-controls="collapseThree">
                                    <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                                </a>
                            </h4>
                        </div>
                        <div id="collapseFive" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFive" aria-expanded="false">
                            <div class="panel-body">
                                <asp:Label ID="article5ID" Style="word-wrap: normal;" runat="server" Text="Label"></asp:Label>
                            </div>
                        </div>
                    </div>
                    <br />
                </div>
            </div>
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

