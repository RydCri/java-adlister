<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Pizza Order</title>
</head>
<body>
<form method="POST">
    <h1>Pizza Order Form</h1>
    <h2>Crust</h2>
    <div class="form-group">
    <select name="crusts" onchange="handleSelectChange(event)" id="crusts">
        <option value="Thin">Thin</option>
        <option value="Hand">Hand-tossed</option>
        <option value="S T U F F E D">S T U F F E D</option>
    </select>
    </div>
    <h2>Sauce</h2>
        <div class="form-group">
    <select name="sauces" onchange="handleSelectChange(event)" id="sauces">
        <option value="Classic">Classic</option>
        <option value="Garlic">Garlic</option>
        <option value="Alfredo">Alfredo</option>
    </select>
        </div>
    <h2>Size</h2>
            <div class="form-group">
    <select name="size" onchange="handleSelectChange(event)" id="size">
        <option value="Sm">Sm</option>
        <option value="Med">Med</option>
        <option value="Lg">Lg</option>
    </select>
            </div>
    <h2>Toppins</h2>
                <div class="form-group">
<select name="toppins" id="toppins" multiple>
    <option value="Pepperoni" id="Pepperoni">Pepperoni</option>
    <option value="Sausage" id="Sausage">Sausage</option>
    <option value="Mushroom" id="Mushroom">Mushroom</option>
</select>
                </div>
    <br>
    <h2>Delivery Address</h2>
    <div class="form-group">

        <input id="address" type="text">
    </div>
    <input type="submit">
</form>
<%--<script>--%>
<%--    document.querySelector('form').addEventListener('submit', function(e) {--%>
<%--        e.preventDefault();--%>
<%--        const formData = new FormData(this);--%>
<%--        const entries = formData.entries();--%>

<%--        for (var input of entries) {--%>
<%--            console.log('Toppings: ' + input[1]);--%>
<%--        }--%>
<%--        let a = document.getElementById('address')--%>
<%--    });--%>
<%--    function handleSelectChange(event) {--%>

<%--        let selected = event.target;--%>
<%--        let selectVal = selected.value;--%>
<%--        console.log(selectVal);--%>
<%--    }--%>
<%--</script>--%>
</body>
</html>
