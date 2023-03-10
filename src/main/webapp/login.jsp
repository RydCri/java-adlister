<%@ page import="java.util.*" %>
<%
String method = request.getMethod();

if(method.equals("POST")) {

String login = request.getParameter("login");
String password = request.getParameter("pass");

if(login.equals("Tim") && password.equals("Robins")) {
    response.sendRedirect("/profile.jsp");
}else{
    response.sendRedirect("/login.jsp");
}}
%>
<!doctype html>
<html lang="en">
<head>
    <title>Login</title>
</head>
<body>
<h1>Login Form</h1>

<form method="POST" action="/login.jsp">
    <label for="login">User: </label>
    <input type="text" id="login" name="login">
    <label for="pass">Password: </label>
    <input type="password" id="pass" name="pass">
    <button>Login</button>
</form>
</body>
</html>