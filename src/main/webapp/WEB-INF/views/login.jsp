<%--
  Created by IntelliJ IDEA.
  User: leon
  Date: 2018/5/6
  Time: 下午5:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>

<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login</title>


    <!-- Material Design Icons -->
    <link href="../css/material-design-iconic-font/dist/css/material-design-iconic-font.min.css" rel="stylesheet">

    <!-- Site CSS -->
    <link href="../css/app.css" rel="stylesheet">

    <script src="../js/jquery.js"></script>
    <script src="../js/jquery.validate.js"></script>
    <script>
        $().ready(function() {
            var validator = $("#registerForm").validate({
                errorPlacement: function(error, element) {
                    // Append error within linked label
                    $( element )
                        .closest( "form" )
                        .find( "label[for='" + element.attr( "id" ) + "']" )
                        .append( error );
                },
                errorElement: "span",
                rules: {
                    username: {
                        required: true,
                        minlength: 2
                    },
                    email: {
                        required: true,
                        email: true
                    },

                    password: {
                        required: true,
                        minlength: 5
                    },
                    confirm_password: {
                        required: true,
                        minlength: 5,
                        equalTo: "#user_pass"
                    },
                    check:"required"

                },

                messages: {
                    username: {
                        required: " : Please enter a username",
                        minlength: " : Your username must consist of at least 2 characters"
                    },
                    email: " : Please enter a valid email address",
                    password: {
                        required: " : Please provide a password",
                        minlength: " :  must be at least 5 characters long"
                    },
                    confirm_password: {
                        required: " : Please provide a password",
                        // minlength: " : Your password must be at least 5 characters long",
                        equalTo: " : Please enter the same password as above"
                    },
                    check:" : Please accept the license agreement "

                }
            });
            var validator = $("#loginForm").validate({
                errorPlacement: function(error, element) {
                    // Append error within linked label
                    $( element )
                        .closest( "form" )
                        .find( "label[for='" + element.attr( "id" ) + "']" )
                        .append( error );
                },
                errorElement: "span",
                messages: {
                    username:" ：Please Enter Username",
                    password: {
                        required: " : Please provide a password",
                        minlength: " : Your password must be at least 5 characters long"
                    }
                }


            });
            $(".cancel").click(function() {
                validator.resetForm();
            });
        });
    </script>
</head>

<body>
<c:choose>
    <c:when test="${(loginStatus eq 0)or (isLoggedin eq true)}">
        <%
            response.sendRedirect("test");
        %>
    </c:when>

    <c:otherwise>


        <div class="login">

            <!-- Login -->
            <div class="login__block toggled" id="l-login">
                <div class="login__block__header">
                    <i class="zmdi zmdi-account-circle"></i>
                    Hi there! Please Sign in

                    <div class="actions login__block__actions">
                        <div class="dropdown">
                            <a href="" data-toggle="dropdown"><i class="zmdi zmdi-more-vert"></i></a>

                            <ul class="dropdown-menu pull-right">
                                <li><a data-block="#l-register" href="">Create an account</a></li>
                                <li><a data-block="#l-forget-password" href="">Forgot password?</a></li>
                            </ul>
                        </div>
                    </div>
                </div>



                <form id="loginForm" action="login" onchange="void(0);" method="post">
                    <div class="login__block__body">
                        <div class="form-group form-group--float form-group--centered form-group--centered">
                            <input type="text" class="form-control" name="username" id="username" required>
                            <label for="username">Username</label>
                            <i class="form-group__bar"></i>
                        </div>

                        <div style="margin-top: 50px" class="form-group form-group--float form-group--centered form-group--centered">
                            <input type="password" class="form-control" name="password" id="password" required minlength="5">
                            <label for="password">Password</label>
                            <i class="form-group__bar"></i>
                        </div>
                        <c:if test="${loginStatus == -1}">
                            <p style="color: red;">Invalid Username or Password</p>
                        </c:if>

                        <button type="submit" class="btn btn--light btn--icon m-t-15"><i
                                class="zmdi zmdi-long-arrow-right"></i>
                        </button>
                    </div>
                </form>


            </div>

            <!-- Register -->
            <div class="login__block" id="l-register">
                <div class="login__block__header palette-Blue bg">
                    <i class="zmdi zmdi-account-circle"></i>
                    Create an account

                    <div class="actions login__block__actions">
                        <div class="dropdown">
                            <a href="" data-toggle="dropdown"><i class="zmdi zmdi-more-vert"></i></a>

                            <ul class="dropdown-menu pull-right">
                                <li><a data-block="#l-login" href="">Already have an account?</a></li>
                                <li><a data-block="#l-forget-password" href="">Forgot password?</a></li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="login__block__body">

                    <form id="registerForm"  action="register" onchange="void(0);" method="post" >
                        <div class="form-group form-group--float form-group--centered">

                            <input type="text"  name="username" id="user_name"  class="form-control">
                            <label for="user_name">Name</label>
                            <i class="form-group__bar"></i>

                        </div>
                        <c:if test="${duplicatedUsers == true}">
                            <p style="color: red;">Already have this User Name</p>
                        </c:if>
                        <div style="margin-top: 60px" class="form-group form-group--float form-group--centered">
                            <input type="text" name="email" id="user_email"   class="form-control">
                            <label for="user_email">Email Address</label>
                            <i class="form-group__bar"></i>
                        </div>


                        <div style="margin-top: 60px" class="form-group form-group--float form-group--centered">
                            <input type="password" name="password"  id="user_pass" class="form-control">
                            <label for="user_pass">Password</label>
                            <i class="form-group__bar"></i>
                        </div>

                        <div style="margin-top: 60px" class="form-group form-group--float form-group--centered">
                            <input type="password" class="form-control" id="confirm_password" name="confirm_password">
                            <label for="confirm_password">Repeat Password</label>
                            <i class="form-group__bar"></i>
                        </div>



                        <div class="input-centered">
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" value=""  name="check">
                                    <i class="input-helper"></i>
                                    <p ><a href="../page/privacy_policy.html" style=" color: #b4bfc3;"> Accept the license agreement</a></p>
                                </label>
                            </div>
                        </div>

                        <button class="btn btn--light btn--icon m-t-15"><i class="zmdi zmdi-plus"></i></button>
                    </form>

                </div>
            </div>

            <!-- Forgot Password -->
            <div class="login__block" id="l-forget-password">
                <div class="login__block__header palette-Purple bg">
                    <i class="zmdi zmdi-account-circle"></i>
                    Forgot Password?

                    <div class="actions login__block__actions">
                        <div class="dropdown">
                            <a href="" data-toggle="dropdown"><i class="zmdi zmdi-more-vert"></i></a>

                            <ul class="dropdown-menu pull-right">
                                <li><a data-block="#l-login" href="">Already have an account?</a></li>
                                <li><a data-block="#l-register" href="">Create an account</a></li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="login__block__body">
                    <p class="m-t-30">Lorem ipsum dolor fringilla enim feugiat commodo sed ac lacus.</p>

                    <div class="form-group form-group--float form-group--centered">
                        <input type="text" class="form-control" id="forget_pass" >
                        <label for="forget_pass">Email Address</label>
                        <i class="form-group__bar"></i>
                    </div>

                    <button class="btn btn--light btn--icon m-t-15"><i class="zmdi zmdi-check"></i></button>
                </div>
            </div>
        </div>
    </c:otherwise>
</c:choose>


<!-- Javascript Libraries -->

<!-- jQuery -->


<!-- Bootstrap -->
<script src="../js/bootstrap.js"></script>

<script src="../js/app.js"/>


<!-- Site Functions & Actions -->
<script src="js/app.min.js"></script>
</body>
</html>
