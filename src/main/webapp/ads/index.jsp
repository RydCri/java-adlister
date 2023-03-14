<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Adlister</title>
</head>
<body>
response.getWriter().println("<h1>Hello, World!</h1>");
<c:forEach var="ad" items="${ads}">
        <h2>${ad.title}</h2>
        <p>${ad.description}</p>
</c:forEach>
</body>
</html>
