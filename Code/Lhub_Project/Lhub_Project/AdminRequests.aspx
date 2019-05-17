<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminRequests.aspx.cs" Inherits="Lhub_Project.AdminRequests" %>

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
                <%--	<div class="upper-menu">
				<div class="container">
					<div class="row">
						<div class="col-xs-4">
							<p>Welcome to Learning-Hub</p>
						</div>
						
					</div>
				</div>
			</div>--%>
                <asp:Label ID="tmplabel" runat="server" Visible="false" Text="test"></asp:Label>
                <div class="top-menu" style="height: 30px; vertical-align: middle;">
                    <div class="container">
                        <div class="row" style="margin-top: -15px;">
                            <div class="col-md-1">
                                <div id="colorlib-logo" style="width: 20%">
                                    <a href="HomePage.aspx">
                                        <img src="images/logo.png" style="height: 60px; width: 60px;" /></a>
                                </div>
                            </div>
                            <div class="col-md-6 text-left menu-1">
                                <ul style="vertical-align: middle; padding: 12px">
                                    <li class="active"><a href="HomePage.aspx">Home</a></li>
                                    <li class="has-dropdown">
                                        <a href="CategoryPage.aspx?catName=network">Networks</a>
                                        <a href="CategoryPage.aspx?catName=software">Software</a>
                                        <a href="CategoryPage.aspx?catName=Biotechnology">Biotechnology</a>
                                        <a href="CategoryPage.aspx?catName=Embedded Systems">Embedded Systems</a>
                                    </li>

                                </ul>
                            </div>
                            <div class="col-md-1" style="padding: 15px">
                                <div style="display: inline">
                                    <img src="images/notification.png" style="float: left" />
                                    &nbsp; &nbsp; 
                                    <img src="images/add.png" />

                                </div>

                            </div>
                            <div class="col-md-2" style="padding: 15px">
                                <div style="width: 50%; display: inline">


                                    <asp:TextBox ID="searchTxt" CssClass="srchLbl" runat="server" TextMode="Search" placeholder="search" Wrap="true">
                                    </asp:TextBox>



                                </div>

                            </div>

                        </div>
                    </div>
                </div>
            </nav>
            <br />
            <br />
            <br />
            <br />
            <div class="col-md-8">
                <span class="txt1 p-b-11">
                    <asp:Label ID="lbl1" Style="text-align: center;margin-left:10%" runat="server" Text="Pending Requests" Font-Size="19px" Width="30%"></asp:Label>
                    <asp:Button ID="addCategoryBtn" runat="server" CssClass="myButton" Text="Add new Category" OnClick="addCategoryBtn_Click" />
                </span>
                <br />
                <br />
                <asp:GridView ID="newGrid" runat="server" CssClass="mydatagrid" PagerStyle-CssClass="pager"
                    HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="newGrid_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="article_title" HeaderText="Article Title" SortExpression="article_title" />
                        <asp:BoundField DataField="user_name" HeaderText="Uploaded by" SortExpression="user_name" />
                        <asp:BoundField DataField="article_date" HeaderText="Date Uploaded" SortExpression="article_date" DataFormatString="{0:dd-MMM-YY}" />
                        <asp:TemplateField ShowHeader="true" HeaderText="Action">
                            <ItemTemplate>
                                <asp:LinkButton ID="approveBtn" runat="server" OnClick="approveBtn_Click" CausesValidation="false" CommandName="Select" CssClass="myButton" Text="Approve"></asp:LinkButton>
                                <asp:LinkButton ID="rejectBtn" runat="server" OnClick="rejectBtn_Click" CausesValidation="false" CommandName="Select" CssClass="myButton" Text="Reject"></asp:LinkButton>

                            </ItemTemplate>
                            <ControlStyle CssClass="myButton" />
                        </asp:TemplateField>
                    </Columns>
                    <HeaderStyle CssClass="header"></HeaderStyle>

                    <PagerStyle CssClass="pager"></PagerStyle>

                    <RowStyle CssClass="rows"></RowStyle>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Learning_LhubConnectionString %>" SelectCommand="SELECT [article_title], [user_name], [article_date],[article_id] FROM [article_Temp] ORDER BY [article_date] DESC"></asp:SqlDataSource>
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

