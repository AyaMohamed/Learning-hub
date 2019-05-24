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
                        <div class="col-md-12 text-left menu-2">
                            <ul>
                                <li class="active"><a href="HomePage.aspx?userName=<%=nameLbl.Text.ToString()%>">
                                    <img src="images/logo.png" style="height: 10%; width: 10%"></a></li>


                                <li><a href="HomePage.aspx?userName=<%=nameLbl.Text.ToString()%>">Home</a></li>

                                <li><a href="CategoryPage.aspx?catName=network&userName=<%=nameLbl.Text.ToString()%>">Networks</a></li>
                                <li><a href="CategoryPage.aspx?catName=Embedded systems&userName=<%=nameLbl.Text.ToString()%>">Embedded Systems</a></li>
                                <li><a href="CategoryPage.aspx?catName=software&userName=<%=nameLbl.Text.ToString()%>">Software</a></li>
                                <li><a href="CategoryPage.aspx?catName=Biotechnology&userName=<%=nameLbl.Text.ToString()%>">Biotechnology</a></li>
                                <li><a href="#">
                                    <img src="images/notification.png" /></a></li>
                                <li><a href="#">
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
            </nav>

            <div class="col-md-8 text-center">
                <span class="txt1 p-b-12">Pending Requests
                </span>

                <asp:GridView ID="newGrid" runat="server" Style="margin-left: 50px; width: 100%" CssClass="mydatagrid" PagerStyle-CssClass="pager"
                    HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AllowPaging="True" AutoGenerateColumns="False" OnSelectedIndexChanged="newGrid_SelectedIndexChanged" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="article_title" HeaderText="Article Title" SortExpression="article_title" />
                        <asp:BoundField DataField="article_date" HeaderText="Date uploaded" SortExpression="article_date" DataFormatString="{0:dd-MM-yyyy}" />
                        <asp:BoundField DataField="user_name" HeaderText="Uploaded by" SortExpression="user_name" ReadOnly="True" />
                        <asp:TemplateField HeaderText="Action">

                            <ItemTemplate>
                                <asp:LinkButton ID="editBtn" runat="server" OnClick="editBtn_Click" CausesValidation="false" CommandName="Select" CssClass="myButton" Text="Edit status"></asp:LinkButton>
                            </ItemTemplate>

                            <ControlStyle CssClass="myButton" />

                        </asp:TemplateField>

                    </Columns>
                    <HeaderStyle CssClass="header"></HeaderStyle>

                    <PagerStyle CssClass="pager"></PagerStyle>

                    <RowStyle CssClass="rows"></RowStyle>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Learning_LhubConnectionString4 %>" SelectCommand="SELECT [article_title], [article_date], [user_name] FROM [article_Temp] WHERE ([status] = @status)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="pending approval" Name="status" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
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

