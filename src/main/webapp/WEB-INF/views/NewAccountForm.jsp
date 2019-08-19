<%--
  Created by IntelliJ IDEA.
  User: leon
  Date: 2018/5/6
  Time: 下午5:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

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
            <!-- Register -->
            <div class="login__block toggled" id="l-register">
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
                <form:form modelAttribute="accountForm"
                           action="${pageContext.request.contextPath}/account/newAccount" method="POST">

                    <c:if test="${not empty duplicatedUsers}">
                        <span class="error">${duplicatedUsers}</span>
                    </c:if>
                    <form:errors path="username" cssClass="error" />

                    <div class="login__block__body">
                        <div class="form-group form-group--float form-group--centered">
                            <form:input path="username" id="username" name='username' class="form-control" placeholder="username" required="true" autofocus="true"/>
                            <%--<input type="text" class="form-control">--%>
                            <%--<label>Name</label>--%>
                            <i class="form-group__bar"></i>
                        </div>
                        <form:errors path="password" cssClass="error" />
                        <div class="form-group form-group--float form-group--centered">
                            <form:password path="password"  id="password" name='password' class="form-control" placeholder="password" required="true"/>
                            <%--<input type="text" class="form-control">--%>
                            <%--<label>Email Address</label>--%>
                            <i class="form-group__bar"></i>
                        </div>
                        <form:errors path="repeatedPassword" cssClass="error" />
                        <div class="form-group form-group--float form-group--centered">
                            <form:password path="repeatedPassword"  id="repeatedPassword" name='repeatedPassword' class="form-control" placeholder="cofim password" required="true"/>
                            <%--<input type="password" class="form-control">--%>
                            <%--<label>Password</label>--%>
                            <i class="form-group__bar"></i>
                        </div>
                        <form:errors path="email" cssClass="error" />
                        <div class="form-group form-group--float form-group--centered">
                            <form:input size="40" path="email" id="email" name='email' class="form-control" placeholder="mail" required="true"/>
                            <%--<input type="password" class="form-control">--%>
                            <%--<label>Repeat Password</label>--%>
                            <i class="form-group__bar"></i>
                        </div>

                        <%--<div class="input-centered">--%>
                            <%--<div class="checkbox">--%>
                                <%--<label>--%>
                                    <%--<input type="checkbox" value="">--%>
                                    <%--<i class="input-helper"></i>--%>
                                    <%--Accept the license agreement--%>
                                <%--</label>--%>
                            <%--</div>--%>
                        <%--</div>--%>

                        <button class="btn btn--light btn--icon m-t-15"><i class="zmdi zmdi-plus"></i></button>
                    </div>
                </form:form>


            </div>

            <!-- Login -->
            <div class="login__block " id="l-login">
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


                <form action="login" onchange="void(0);" method="post">
                    <div class="login__block__body">
                        <div class="form-group form-group--float form-group--centered form-group--centered">
                            <input type="text" class="form-control" name="username" id="username">
                            <label>Email Address</label>
                            <i class="form-group__bar"></i>
                        </div>

                        <div class="form-group form-group--float form-group--centered form-group--centered">
                            <input type="password" class="form-control" name="password" id="password">
                            <label>Password</label>
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
                        <input type="text" class="form-control">
                        <label>Email Address</label>
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
<script src="../js/jquery.js"></script>

<!-- Bootstrap -->
<script src="../js/bootstrap.js"></script>

<script src="../js/app.js"/>


<!-- Site Functions & Actions -->
<script src="js/app.min.js"></script>
</body>
</html>
