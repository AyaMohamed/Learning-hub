<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ArticlesPage.aspx.cs" Inherits="Lhub_Project.ArticlesPage" %>


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

        .container-login100-form-btn {
            width: 100%;
            display: -webkit-box;
            display: -webkit-flex;
            display: -moz-box;
            display: -ms-flexbox;
            display: flex;
            flex-wrap: wrap;
        }

        .login100-form-btn {
            font-family: Raleway-Bold;
            font-size: 16px;
            color: #fff;
            line-height: 1.2;
            display: -webkit-box;
            display: -webkit-flex;
            display: -moz-box;
            display: -ms-flexbox;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 0 20px;
            min-width: 150px;
            height: 55px;
            background-color: #333333;
            border-radius: 27px;
            -webkit-transition: all 0.4s;
            -o-transition: all 0.4s;
            -moz-transition: all 0.4s;
            transition: all 0.4s;
        }

            .login100-form-btn:hover {
                background-color: #e2c1c7;
                color: black;
            }
    </style>
</head>
<body style="background-image: url(../images/76ba31b9-b382-4ae8-929e-3327c7267c94.jpg); background-repeat: repeat; background-size: cover">

    <div class="colorlib-loader"></div>
    <form style="display: inline;" runat="server" method="post">
        <div id="page">
            <nav class="colorlib-nav" role="navigation">

                <div class="top-menu" style="height: 120px; vertical-align: middle;">
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
            <br />



        </div>
        <br />
        <br />
        <div class="wrap-login100 p-l-85 p-r-85 p-t-55 p-b-55" style="background: rgba(0,0,0,.5); position: relative; top: 20%; margin: auto; width: 80%; height: 70%; border-radius: 0.35em; /* box-shadow: 0 3px 10px 0 rgba(0, 0, 0, 0.2); */
            text-align: center; padding-bottom:75px;padding-top:45px">
            <div class="wrap-input100 validate-input m-b-36" style="margin-left: 10%">
                <span class="txt1 p-b-11" style="font-size:large;color:white">Category Name &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input name="Text1" type="text" id="categorytxt" runat="server" disabled="disabled" class="input100" style="height: 30%; width: 30%;color:black;" />
                </span><span class="focus-input100"></span>
            </div>
            <br />
            <div class="wrap-input100 validate-input m-b-36" style="margin-left: 10%">
                <span class="txt1 p-b-11" style="font-size:large;color:white">Article title &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </span>
                <input name="titletxt" type="text" id="titletxt" runat="server" disabled="disabled" class="input100" style="height: 30%; width: 30%;color:black;" />
                <span class="focus-input100"></span>
            </div>
            <br />

            <div class="wrap-input100 validate-input m-b-36" style="margin-left: 10%;font-size:large;color:white">
                <span class="txt1 p-b-11">Upload Date &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </span>
                <input name="datetxt" runat="server" type="text" disabled="disabled" id="datetxt" class="input100" style="height: 30%; width: 30%;color:black" />
                <span class="focus-input100"></span>
            </div>
            <br />
            <div class="wrap-input100 validate-input m-b-36" style="margin-left: 10%;font-size:large;color:white">
                <span class="txt1 p-b-11">Article Author &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </span>
                <input name="authortxt" runat="server" type="text" id="authortxt" class="input100" style="height: 30%; width: 30%;color:black" disabled="disabled" />
                <span class="focus-input100"></span>
            </div>
            <br />


            <div class="wrap-input100 validate-input m-b-36" style="margin-left: 12%">

                <span class="txt1 p-b-11" style="vertical-align: top;font-size:large;color:white">Article Text &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </span>
                <textarea name="texttxt" runat="server" id="texttxt" disabled="disabled" style="resize: none; width: 385px; height: 97px; margin: 0px 0px 0px 12.125px;color:black" cols="52" rows="1" class="srchLbl"></textarea>
                <span class="focus-input100"></span>
            </div>
        </div>
        <br />
        <br />





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


