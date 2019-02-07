<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: dwallace
  Date: 2/6/19
  Time: 12:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="../partials/head.jsp">
        <jsp:param name="title" value="Ads Index" />
    </jsp:include>
</head>
<body>
    <jsp:include page="../partials/navbar.jsp" />

    <div class="container">
        <h1 class="pt-4">Here are all the <span class="lobster-font">ADS:</span></h1>
        <c:forEach var="ad" items="${ads}">
            <div class="ads">
                <h3>${ad.title}</h3>
                <p>Description: ${ad.description}</p>
            </div>
        </c:forEach>
    </div>
    <jsp:include page="../partials/footer.jsp" />
</body>
</html>