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
<style>
    body{
        font-family: "Arial";
        background: linear-gradient(90deg,blue,indigo);
        color: white;
        text-shadow: 1px 0 0 black;
        }
    button{
        border-radius: 20px;
        border: 1px solid black;
        background: darkseagreen;
        color:white;
        font-family: "Arial";
        font-weight: bold;
        font-size: 1em;
        padding: .5em;
        justify-content: end;
        transform:translate(140%,-30%)
    }
    .loginform {
        display:flex;
        justify-content: center;
        align-content: center;
    }
</style>
<h1 style="text-align: center;">Login Form</h1>
    <hr>
<div class="loginform">
<form method="POST" action="/login.jsp">
    <label for="login">User: </label><br>
    <input type="text" id="login" name="login">
    <br>
    <label for="pass">Password: </label><br>
    <input type="password" id="pass" name="pass"><br>
    <br>
    <button>Login</button>
</form>
</div>
</body>
</html>