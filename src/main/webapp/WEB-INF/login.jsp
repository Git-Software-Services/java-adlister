<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    if (request.getMethod().equalsIgnoreCase("post")) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        if (username.equals("admin") && password.equals("password")) {
            response.sendRedirect("/profile");
        }
    }
%>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>
</head>
<body>
    <%@ include file="/WEB-INF/partials/navbar.jsp" %>
    <%@ include file="/WEB-INF/partials/head.jsp" %>

    <h1>Login Page</h1>
    <div class="container mx-5">
        <div class="row justify-content-center">
            <div id=one>
                <span class="left-brace-tl"></span>
                <span class="left-brace-tr"></span><br />
                <span class="left-brace-bl"></span>
                <span class="left-brace-br"></span>
            </div>

            <div class="col-5">
                <form action="/login" method="POST">
                    <div class="form-group mx-3 mb-2">
                        <label for="username">Username</label>
                        <input type="text" class="form-control" id="userName" name="username" aria-describedby="emailHelp"
                               placeholder="Enter username">
                        <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.
                        </small>
                    </div>
                    <div class="form-group mx-3 mb-2">
                        <label for="Password">Password</label>
                        <input type="password" class="form-control" id="password" name="password" placeholder="Password">
                    </div>
                    <br><br>
                    <button type="Login" class="btn main-color mx-3">Submit</button>
                </form>
            </div>
            <div id=three>
                <span class="right-brace-tl"></span>
                <span class="right-brace-tr"></span><br />
                <span class="right-brace-bl"></span>
                <span class="right-brace-br"></span>
            </div>

        </div>
    </div>
    <jsp:include page="partials/footer.jsp" />
</body>
</html>
