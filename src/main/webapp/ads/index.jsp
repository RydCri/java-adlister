<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Adlister</title>
</head>
<body>
<style>
    body {
        background:linear-gradient(darkblue,darkorchid);
        color: white;
        text-shadow: 1px 2px 0 black;
    }
    div {
        text-indent: 50px;
    }
</style>
<div>
    <br>

<h1 style="text-align:center;">New Ads ✨</h1>

<c:forEach var="ad" items="${ads}">

    <span>User ID: ${ad.userId}</span><h3>${ad.title}</h3>
        <p>${ad.description}</p>
    <hr>
</c:forEach>
</div>
</body>
</html>
