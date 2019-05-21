﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResetPasswordPage.aspx.cs" Inherits="Lhub_Project.ResetPasswordPage" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Login</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--===============================================================================================-->
    <link rel="icon" type="image/png" href="images/icons/logo.ico" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="css/Loginutil.css">
    <link rel="stylesheet" type="text/css" href="css/Loginmain.css">
    <!--===============================================================================================-->
</head>
<body>

    <div class="limiter">
        <div class="container-login100">
            <div class="wrap-login100 p-l-85 p-r-85 p-t-55 p-b-55">
                <form class="login100-form validate-form flex-sb flex-w" method="post" runat="server">
                    <span class="login100-form-title p-b-32">Password Reset
                    </span>
                    <br />
                    <br />
                    <br />
                    <br />
                    <span class="txt1 p-b-11">email
                    </span>
                    <div class="wrap-input100 validate-input m-b-36" data-validate="email is required">
                        <asp:TextBox ID="emailTxt" runat="server" CssClass="input100" ValidationGroup=""></asp:TextBox>
                        <!--<input class="input100" type="text" name="username" >-->
                        <span class="focus-input100"></span>
                    </div>

                    <span class="txt1 p-b-11" id="#password">New Password
                    </span>
                    <div class="wrap-input100 validate-input m-b-12" data-validate="Password is required">

                        <span class="btn-show-pass" id="#password-field">
                            <i class="fa fa-eye"></i>
                        </span>
                        <asp:TextBox ID="newpasswordTxt" CssClass="input100" runat="server" TextMode="Password"></asp:TextBox>
                        <!--<input class="input100" type="password" name="pass" >-->
                        <span class="focus-input100"></span>
                    </div>



                    <div class="container-login100-form-btn">
                        <asp:Button ID="confirmBtn" runat="server" CssClass="login100-form-btn" Text="Confirm" OnClick="confirmBtn_Click" />

                        <a href="LoginPage.aspx" class="dis-block txt3 hov1 p-r-30 p-t-10 p-b-10 p-l-30">Login
							<i class="fa fa-long-arrow-right m-l-5"></i>
                        </a>
                    </div>

                </form>
            </div>
        </div>
    </div>


    <div id="dropDownSelect1"></div>


    <!--===============================================================================================-->
    <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/animsition/js/animsition.min.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/bootstrap/js/popper.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/select2/select2.min.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/daterangepicker/moment.min.js"></script>
    <script src="vendor/daterangepicker/daterangepicker.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/countdowntime/countdowntime.js"></script>
    <!--===============================================================================================-->
    <script src="js/main.js"></script>

</body>
</html>
