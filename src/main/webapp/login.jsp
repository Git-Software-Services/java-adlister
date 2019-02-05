<%--
  Created by IntelliJ IDEA.
  User: dwallace
  Date: 2/5/19
  Time: 11:29 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--<%--%>
<%--if(request.getMethod().equalsIgnoreCase("post")) {--%>
    <%--String userName = request.getParameter("userName");--%>
    <%--String password = request.getParameter("password");--%>

    <%--if (userName.equals("admin") && password.equals("password")) {--%>
        <%--response.sendRedirect("/profile.jsp");--%>
    <%--} else {--%>
        <%--response.sendRedirect("/login.jsp");--%>
    <%--}--%>
<%--}--%>
<%--%>--%>

<html>
<head>
    <title>Title</title>
</head>
<body>
    <%@ include file="partials/navbar.jsp" %>
    <%@ include file="partials/head.jsp" %>

        <h1>Login Page</h1>
        <form action="/login" method="POST">
        <div class="form-group mx-3 mb-2">
            <label for="username">Username</label>
            <input type="text" class="form-control" id="userName" name="userName" aria-describedby="emailHelp" placeholder="Enter username">
            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
        </div>
        <div class="form-group mx-3 mb-2">
            <label for="Password">Password</label>
            <input type="password" class="form-control" id="password" name="password" placeholder="Password">
        </div>
        <br><br>
        <button type="submit" class="btn btn-primary mx-3">Submit</button>
    </form>

</body>
</html>
