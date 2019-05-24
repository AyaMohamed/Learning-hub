﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchResultsPage.aspx.cs" Inherits="Lhub_Project.SearchResultsPage" %>

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
            color: white;
            line-height: 1.2;
            display: -webkit-box;
            display: -webkit-flex;
            display: -moz-box;
            display: -ms-flexbox;
            display: inline-block;
            justify-content: center;
            align-items: center;
            padding: 0 20px;
            min-width: 150px;
            height: 55px;
            background-color: #429ffd;
            border-radius: 27px;
            -webkit-transition: all 0.4s;
            -o-transition: all 0.4s;
            -moz-transition: all 0.4s;
            transition: all 0.4s;
            text-align:center;

        }

            .login100-form-btn:hover {
                background-color: #e2c1c7;
                color: black;
            }

        .mydatagrid {
            width: 80%;
            min-width: 80%;
            align-content: center;
            align-items: center;
            align-self: center;
            vertical-align: middle;
            margin-left: 10%;
            background: #e0121200;
            margin-top: 85px;
           
        }

            .mydatagrid td {
                padding: 5px;
            }

        .rows {
            font-family: Arial;
            font-size: 14px;
            color: #fcfcfc;
            min-height: 25px;
            text-align: left;
            border: none 0px transparent;
            background: rgba(0, 0, 0, 0.5);
        }

        .header {
            background: rgba(0, 0, 0, 0.5);
            font-family: Arial;
            color: White;
            border: none 0px transparent;
            height: 25px;
            text-align: center;
            font-size: 16px;
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
            <br />
            <div class="col-md-8" style="background: rgba(0,0,0,.5); margin-left: 10%;padding-bottom:75px; position: relative; width: 70%; height: 70%; border-radius: 0.35em; /* box-shadow: 0 3px 10px 0 rgba(0, 0, 0, 0.2); */
            text-align: center;">

                <asp:GridView ID="resultsGrid" OnSelectedIndexChanged="newGrid_SelectedIndexChanged" Style="margin-left: 50px;margin-right:10%" CssClass="mydatagrid" PagerStyle-CssClass="pager"
                    HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AllowPaging="True" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="Article_title" HeaderText="Article Title" SortExpression="Article_title" ItemStyle-BorderStyle="Solid" ReadOnly="True">
                            <ControlStyle CssClass="mydatagrid" />

<ItemStyle BorderStyle="Solid"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="article_date" HeaderText="Upload date" SortExpression="article_date" DataFormatString="{0:dd-MMM-yyyy}">
                            <ControlStyle CssClass="mydatagrid" />
                        </asp:BoundField>
                        <asp:BoundField DataField="article_author" HeaderText="Uploaded by" SortExpression="article_author">
                            <ControlStyle CssClass="mydatagrid" />
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="View Details">

                            <ItemTemplate>
                                <asp:LinkButton ID="detailsBtn" runat="server" OnClick="detailsBtn_Click" CausesValidation="false" CommandName="Select" CssClass="login100-form-btn" Text="View Details"></asp:LinkButton>
                            </ItemTemplate>

                            <ControlStyle CssClass="login100-form-btn" />

                        </asp:TemplateField>
                    </Columns>

<HeaderStyle CssClass="header"></HeaderStyle>

<PagerStyle CssClass="pager"></PagerStyle>

<RowStyle CssClass="rows"></RowStyle>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Learning_LhubConnectionString3 %>" SelectCommand="SELECT [Article_title], [article_date], [Article_author] FROM [Article_lhub] WHERE ([Article_text] LIKE '%' + @Article_text + '%') or (article_title like '%'+ @article_title+ '%')">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="txtsrch" Name="Article_text" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="txtsrch" Name="article_title" PropertyName="Text" />
                    </SelectParameters>
                </asp:SqlDataSource>

            </div>
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

