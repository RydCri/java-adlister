<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
    <jsp:include page="partials/navbar.jsp" />
    <style>
        body {
            background:linear-gradient(darkblue,darkorchid);
            color: white;
            text-shadow: 1px 2px 0 black;
        }
        div a{
            text-indent: 50px;
            font-size: 2em;
        }
    </style>
    <div class="container">
        <h1>You are now logged in</h1>
        <a href="/Ads">Go to Adlister</a>
    </div>

</body>
</html>
