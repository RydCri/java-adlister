<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The dao.Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<style>
    body{
        color:white;
        text-shadow:1px 2px 0 black;
        background: linear-gradient(darkblue,darkmagenta);
        font-family: YuMincho, sans-serif;
    }
    .navbar {
        text-shadow:1px 2px 0 black;
        background:black;
        font-family: YuMincho, sans-serif;
    }
    .navbar a {
        color:white!important;
        text-decoration: none;
    }
</style>
<div class="container">
    <h1>Here Are all the ads!</h1>

    <c:forEach var="ad" items="${ads}">
        <div class="col-md-6">
            <h2>${ad.title}</h2>
            <p>${ad.description}</p>
            <hr>
        </div>
    </c:forEach>
</div>

</body>
</html>
