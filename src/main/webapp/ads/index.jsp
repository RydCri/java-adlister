<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Adlister</title>
</head>
<body>
<h1 name="ads">Adlist: ${ads}</h1>
<c:forEach var="ads" items="${ads}">
    <div>
        <p name="ads">${ads}</p>
    </div>
</c:forEach>

</body>
</html>
