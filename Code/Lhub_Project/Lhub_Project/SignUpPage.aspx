﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUpPage.aspx.cs" Inherits="Lhub_Project.SignUpPage" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <title>Sign Up</title>
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
            <div class="wrap-login100 p-l-85 p-r-85 p-t-55 p-b-55" style="background: rgba(0,0,0,.5); position: relative; top: 20%; margin: auto; width: 50%; height: 50%; border-radius: 0.35em; /* box-shadow: 0 3px 10px 0 rgba(0, 0, 0, 0.2); */
            text-align: center;">
                <form class="login100-form validate-form flex-sb flex-w" method="post" runat="server">
                    <span class="login100-form-title p-b-32">
                        <img src="images/logo.png" style="height: 10%; width: 10%">Sign up
                    </span>
                    <br />
                    <br />
                    <br />
                    <span class="txt1 p-b-11" style="font-size:20px">Username (*)
                    </span>
                    <div class="wrap-input100 validate-input m-b-36" data-validate="Username is required">
                        <%--<input class="input100" type="text" name="username" >--%>
                        <asp:TextBox ID="usernametxt" runat="server" Class="input100" ValidationGroup=""></asp:TextBox>
                       <%-- <asp:RegularExpressionValidator ID="userNameExpressionValidator" runat="server" Style="top: -8px; left: 427px; position: absolute; height: 30px; width: 200px"
                            ErrorMessage="username contains only letters , numbers and _" ControlToValidate="usernametxt"
                            ValidationExpression="[A-Za-z0-9_]" Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>--%>

                        <asp:RequiredFieldValidator ID="userNameRequiredValidator" runat="server" ControlToValidate="usernametxt" Display="Dynamic" ForeColor="Red" ErrorMessage="Username is required"></asp:RequiredFieldValidator>

                        <span class="focus-input100"></span>
                    </div>

                    <span class="txt1 p-b-11" style="font-size:20px">Password (*)
                    </span>

                    <!--//==========================password field=====================//-->
                    <div class="wrap-input100 validate-input m-b-12" data-validate="Password is required">
                        <span class="btn-show-pass">
                            <i class="fa fa-eye"></i>
                        </span>
                        <%--<input class="input100" type="password" name="pass" >--%>
                        <asp:TextBox ID="passwordtxt" runat="server" MaxLength="12" Class="input100" TextMode="Password" ValidationGroup="">
                        </asp:TextBox>
                        <asp:RegularExpressionValidator ID="passwordExpressionValidator" runat="server" Style="top: -18px; left: 427px; position: absolute; height: 30px; width: 200px"
                            ErrorMessage="Password must be 8-12 characters long with at least one numeric,</br>one upper case character and one special character" ControlToValidate="passwordtxt"
                            ValidationExpression="(?=^.{8,12}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&*()_+}{:;?/>.<,])(?!.*\s).*$" Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="passwordRequiredValidator" runat="server" Style="top: 56px; left: 378px; position: absolute; height: 22px; width: 128px"
                            ErrorMessage="Password is required"
                            ControlToValidate="passwordTxt" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                        <span class="focus-input100"></span>
                    </div>
                    <!--//==========================password field=====================//-->


                    <!--//==========================Confirm password field=====================//-->
                    <span class="txt1 p-b-11" style="font-size:20px">Confirm Password (*)
                    </span>
                    <div class="wrap-input100 validate-input m-b-12" data-validate="Password is required">
                        <span class="btn-show-pass">
                            <i class="fa fa-eye"></i>
                        </span>
                        <asp:TextBox ID="Confrim_passtxt" runat="server" MaxLength="12" TextMode="Password" Class="input100" ValidationGroup=""></asp:TextBox>

                        <asp:RegularExpressionValidator ID="confirmPasswordExpressionValidator" runat="server" Style="top: 27px; left: 427px; position: absolute; height: 30px; width: 128px"
                            ErrorMessage="enter a vaild password" ControlToValidate="Confrim_passtxt"
                            ValidationExpression="(?=^.{8,12}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&*()_+}{:;?/>.<,])(?!.*\s).*$" Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>

                        <asp:RequiredFieldValidator ID="confirmPasswordRequiredValidator" Style="top: 56px; left: 378px; position: absolute; height: 22px; width: 128px"
                            runat="server" ControlToValidate="Confrim_passtxt" ForeColor="Red" ErrorMessage="Password is required"></asp:RequiredFieldValidator>
                        <span class="focus-input100"></span>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" Style="top: 75px; left: 421px; position: absolute; height: 22px; width: 421px"
                            ErrorMessage="password did not match "
                            ControlToValidate="Confrim_passtxt" ControlToCompare="passwordtxt" Display="Dynamic" ForeColor="Red"></asp:CompareValidator>

                    </div>
                    <!--//==========================Confirm password field end =====================//-->

                    <!--//==========================email field=====================//-->

                    <span class="txt1 p-b-11" style="font-size:20px">Email (*)
                    </span>
                    <div class="wrap-input100 validate-input m-b-36" data-validate="Email is required">
                        <%--<input class="input100" type="text" name="email" >--%>
                        <asp:TextBox ID="Emailtxt" runat="server" TextMode="Email" Class="input100" ValidationGroup=""></asp:TextBox>
                        <asp:RegularExpressionValidator ID="emailExpressionValidator" runat="server" Style="top: 68px; left: 427px; position: absolute; height: 22px; width: 128px"
                            ErrorMessage="enter a vaild email" ControlToValidate="Emailtxt"
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="emailRequiredValidator" runat="server" Display="Dynamic" ForeColor="Red" ControlToValidate="Emailtxt" Style="top: 68px; left: 427px; position: absolute; height: 22px; width: 128px" ErrorMessage="email is required"></asp:RequiredFieldValidator>

                        <span class="focus-input100"></span>
                    </div>
                    <!--//==========================email field end =====================//-->


                    <!--//==========================1st name field  =====================//-->

                    <span class="txt1 p-b-11" style="font-size:20px">First Name
                    </span>
                    <div class="wrap-input100 validate-input m-b-36" >
                        <%--<input class="input100" type="text" name="First Name" >--%>
                        <asp:TextBox ID="FirstNametxt" runat="server" Class="input100" ValidationGroup=""></asp:TextBox>
                       
                      
                        <span class="focus-input100"></span>
                    </div>
                    <!--//==========================1st name field end =====================//-->


                    <!--//==========================last name field  =====================//-->
                    <span class="txt1 p-b-11" style="font-size:20px">Last Name
                    </span>
                    <div class="wrap-input100 validate-input m-b-36" >
                        <%--<input class="input100" type="text" name="Last Name" >--%>
                        <asp:TextBox ID="LastNametxt" runat="server" Class="input100" ValidationGroup=""></asp:TextBox>
                      
                        <span class="focus-input100"></span>
                    </div>
                    <!--//==========================last name field end =====================//-->

                    <div class="container-login100-form-btn">
                        <%--<button class="login100-form-btn" runat="server" onserverclick="Registertion">
							Sign Up
						</button>--%>
                        <asp:Button ID="SignUpBtn" runat="server" Text="Sign up" CssClass="login100-form-btn" OnClick="SignUp_Click" />
                        <a href="LoginPage.aspx" class="dis-block txt3 hov1 p-r-30 p-t-10 p-b-10 p-l-30" style="font-size: x-large; color: #429ffd;">Have an account ? Sign in
						
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
