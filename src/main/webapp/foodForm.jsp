<%--
  Created by IntelliJ IDEA.
  User: grom
  Date: 3/9/23
  Time: 2:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Select a food</h1>
<form action="/foods.jsp">
  <select name="foods" id="foods">
    <option value="Meats">Meats</option>
    <option value="Grains">Grains</option>
    <option value="Dairy">Dairy</option>
    <option value="Rhubarb">Rhubarb</option>
  </select>
    <button>Submit</button>
</form>
</body>
</html>
