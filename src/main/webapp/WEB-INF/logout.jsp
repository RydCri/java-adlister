
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Logout</title>
</head>
<body>
<h1>You have successfully logged out</h1>
<h3 id="redirecting">Redirecting..</h3>
<script>
    function redirect(){
       return document.location = "/login";
    }
    let d = document.getElementById("redirecting")




   let timeout = setTimeout(redirect ,3000)

</script>
</body>
</html>
