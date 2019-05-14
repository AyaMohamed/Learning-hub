<%@ Page Title="" Language="C#"  AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Lhub_Project.HomePage" %>
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
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700,800" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,700" rel="stylesheet">
	
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

      @-ms-viewport       { width: device-width; }

   </style>
	</head>
	<body>
		
	<div class="colorlib-loader"></div>

	<div id="page">
		<nav class="colorlib-nav" role="navigation">
		<%--	<div class="upper-menu">
				<div class="container">
					<div class="row">
						<div class="col-xs-4">
							<p>Welcome to Learning-Hub</p>
						</div>
						
					</div>
				</div>
			</div>--%>
			<div class="top-menu" style="height:30px;vertical-align:middle;">
				<div class="container" >
					<div class="row" style="margin-top:-15px; ">
						<div class="col-md-1">
							<div id="colorlib-logo" style="width:20%"><a href="HomePage.aspx"><img src="images/logo.png" style="height:60px;width:60px;"/></a></div>
						</div>
						<div class="col-md-6 text-left menu-1">
							<ul style="vertical-align:middle;padding:12px">
								<li  class="active"><a href="HomePage.aspx">Home</a></li>
								<li  class="has-dropdown">
                                    <a href="#">Software</a>
                                    <a href="#">Networks</a>
                                    <a href="#">Biotechnology</a>
                                    <a href="#">Embedded Systems</a>
								</li>
								
							</ul>
						</div>
                        <div class="col-md-1" style="width:100px;padding:15px">
							<div  style="width:50px;display:inline"><img src="images/notification.png" />

                             </div>
                            &nbsp; &nbsp;
                            <div style="width:50px;display:inline"> <img src="images/add.png" /></div> &nbsp;
						</div>
                        <div class="col-md-2" style="padding:15px">
                              <div style="width:50px;display:inline"> 
                                  <form style="display:inline" runat="server" method="post">
                                      <asp:TextBox ID="searchTxt" CssClass="form-control" placeholder="search" runat="server" Wrap="true" BorderStyle="Groove"  Width="150px" Height="50%" >
                                      </asp:TextBox>
                                  </form>
                              </div>

						</div>

					</div>
				</div>
			</div>
		</nav>
        <br /><br /><br /><br />
        <div class="col-md-8">
            <asp:Label ID="Label2" runat="server" Text="Recently uploaded articles" Font-Size="X-Large" Font-Underline="True"></asp:Label>
		    <br />
            <br />

            <div class="fancy-collapse-panel">
	                    <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
	                     <div class="panel panel-default">
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
                                                      <asp:Label ID="article1ID" runat="server" Text="Label"></asp:Label>
									      	</div>
                                         </div>
	                             </div>
	                         </div>
	                     </div>
                            <br />
	                     <div class="panel panel-default">
	                         <div class="panel-heading" role="tab" id="headingTwo">
	                             <h4 class="panel-title">
	                                 <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                         <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
	                                 </a>
	                             </h4>
	                         </div>
	                         <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo" aria-expanded="false">
	                             <div class="panel-body">
                                     <asp:Label ID="article2ID" runat="server" Text="Label"></asp:Label>
	                             </div>
	                         </div>
	                     </div>
                            <br />
	                     <div class="panel panel-default">
	                         <div class="panel-heading" role="tab" id="headingThree">
	                             <h4 class="panel-title">
	                                 <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                         <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
	                                 </a>
	                             </h4>
	                         </div>
	                         <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree" aria-expanded="false">
	                             <div class="panel-body">
                                     <asp:Label ID="article3ID" runat="server" Text="Label"></asp:Label>
	                             </div>
	                         </div>
	                     </div>
                            <br />
                             <div class="panel panel-default">
	                         <div class="panel-heading" role="tab" id="headingFour">
	                             <h4 class="panel-title">
	                                 <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                         <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
	                                 </a>
	                             </h4>
	                         </div>
	                         <div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree" aria-expanded="false">
	                             <div class="panel-body">
                                     <asp:Label ID="article4ID" runat="server" Text="Label"></asp:Label>
	                             </div>
	                         </div>
	                     </div>
                            <br />
                             <div class="panel panel-default">
	                         <div class="panel-heading" role="tab" id="headingFive">
	                             <h4 class="panel-title">
	                                 <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                         <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
	                                 </a>
	                             </h4>
	                         </div>
	                         <div id="collapseFive" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree" aria-expanded="false">
	                             <div class="panel-body">
                                     <asp:Label ID="article5ID" runat="server" Text="Label"></asp:Label>
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

