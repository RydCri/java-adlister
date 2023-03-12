<%@ page import="java.util.*" %><%--
  Created by IntelliJ IDEA.
  User: jcrites
  Date: 3/9/23
  Time: 2:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%
  String foodType = request.getParameter("foods");
  request.setAttribute("foodType",foodType);

  Map<String, List<String>> foods = new HashMap<>();
  List<String> Meats = new ArrayList<>(Arrays.asList(
          "Hot Dog",
          "Goose",
          "Ostrich"
  ));
  List<String> Grains = new ArrayList<>(Arrays.asList(
     "Spanikopita",
      "Spaghetti",
      "Potato Skins",
          "Alfredo Bowl"
  ));
  List<String> Dairy = new ArrayList<>(Arrays.asList(
     "Cheese",
     "Yogurt",
     "Butter"
  ));
  List<String> Rhubarb = new ArrayList<>(Arrays.asList(
     "Rhubarb"
  ));
  foods.put("Meats", Meats);
  foods.put("Dairy", Dairy);
  foods.put("Grains", Grains);
  foods.put("Rhubarb",Rhubarb);
  request.setAttribute("foods", foods.get(foodType));
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Title</title>
</head>
<body>

<h1>Food type: ${foodType}</h1>

<h3>${foods}</h3>

</body>
</html>