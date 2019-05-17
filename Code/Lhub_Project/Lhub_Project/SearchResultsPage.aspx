<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchResultsPage.aspx.cs" Inherits="Lhub_Project.SearchResultsPage" %>

<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Search Results</title>
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

    <!-- Modernizr JS -->
    <script src="js/modernizr-2.6.2.min.js"></script>
    <!-- FOR IE9 below -->
    <!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

</head>
<body>

    <div class="colorlib-loader"></div>
    <form style="display: inline" runat="server" method="post">

        <div id="page">
            <nav class="colorlib-nav" role="navigation">

                <div class="top-menu">
                    <div class="container">
                        <div class="row">

                            <div class="col-md-12 text-left menu-2">
                                <ul>
                                    <li class="active"><a href="HomePage.aspx">
                                        <img src="images/logo.png" style="height: 10%; width: 10%"></a></li>


                                    <li><a href="HomePage.aspx">Home</a></li>

                                    <li><a href="CategoryPage.aspx?catName=network&userName=<%=nameLbl.Text.ToString()%>">Networks</a></li>
                                    <li><a href="CategoryPage.aspx?catName=Embedded systems&userName=<%=nameLbl.Text.ToString()%>">Embedded Systems</a></li>
                                    <li><a href="CategoryPage.aspx?catName=software&userName=<%=nameLbl.Text.ToString()%>">Software</a></li>
                                    <li><a href="CategoryPage.aspx?catName=Biotechnology&userName=<%=nameLbl.Text.ToString()%>">Biotechnology</a></li>
                                    <li><a href="#">
                                        <img src="images/notification.png" /></a></li>
                                    <li><a href="#">
                                        <img src="images/add.png" /></a></li>
                                    <li>
                                        <asp:TextBox ID="txtsrch" CssClass="srchLbl" Style="width: 100px; margin-left: 1%;" placeHolder="search" runat="server" TextMode="Search" OnTextChanged="txtsrch_TextChanged"></asp:TextBox></li>
                                    <li><a href="#">
                                        <img src="images/user.png" /></a></li>
                                    <li>
                                        <asp:Label ID="nameLbl" CssClass="srchLbl" runat="server" Text="Label"></asp:Label></li>

                                </ul>
                            </div>


                        </div>
                        <div class="row">
                            <br />
                            <br />
                            <asp:GridView ID="GridView2" CssClass="mydatagrid" PagerStyle-CssClass="pager"
                                HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AllowPaging="True" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                                <Columns>
                                    <asp:BoundField DataField="Article_title" HeaderText="Article Title" SortExpression="Article_title" ItemStyle-BorderStyle="Solid" ReadOnly="True">
                                        <ControlStyle CssClass="mydatagrid" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="article_author" HeaderText="article Author" SortExpression="article_author">
                                        <ControlStyle CssClass="mydatagrid" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Article_text" HeaderText="Article Text" SortExpression="Article_text">
                                        <ControlStyle CssClass="mydatagrid" />
                                    </asp:BoundField>
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Learning_LhubConnectionString3 %>" SelectCommand="SELECT [Article_title], [article_author], [Article_text] FROM [Article_lhub] WHERE ([Article_text] LIKE '%' + @Article_text + '%')">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="txtsrch" Name="Article_text" PropertyName="Text" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </div>
                    </div>
                </div>
            </nav>


        </div>
    </form>
    <div class="gototop js-top">
        <a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
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

