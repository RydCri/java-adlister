<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Pizza Order</title>
</head>
<body>
<form method="POST" action="/pizza-order.jsp">
    <h1>Pizza Order Form</h1>
    <h2>Crust</h2>
    <div class="form-group">
    <select onchange="handleSelectChange(event)" id="crusts">
        <option>Thin</option>
        <option>Hand-tossed</option>
        <option>S T U F F E D</option>
    </select>
    </div>
    <h2>Sauce</h2>
        <div class="form-group">
    <select onchange="handleSelectChange(event)" id="sauces">
        <option>Classic</option>
        <option>Garlic</option>
        <option>Alfredo</option>
    </select>
        </div>
    <h2>Size</h2>
            <div class="form-group">
    <select onchange="handleSelectChange(event)" id="size">
        <option>Sm</option>
        <option>Med</option>
        <option>Lg</option>
    </select>
            </div>
    <h2>Toppins</h2>
                <div class="form-group">
    <label for="pepperoni">Pepperoni</label>
    <input type="checkbox" name="pepperoni" id="pepperoni" value="pepperoni">
    <label for="sausage">Sausage</label>
    <input type="checkbox" name="sausage" id="sausage" value="sausage">
    <label for="mushroom">Mushroom</label>
    <input type="checkbox" name="mushroom" id="mushroom" value="mushroom">
                </div>
    <br>
    <h2>Delivery Address</h2>
    <div class="form-group">

        <input id="address" type="text">
    </div>
    <input type="submit">
</form>
<script>
    document.querySelector('form').addEventListener('submit', function(e) {
        e.preventDefault();
        const formData = new FormData(this);
        const entries = formData.entries();

        for (var input of entries) {
            console.log('Toppings: ' + input[1]);
        }
        let a = document.getElementById('address')
    });
    function handleSelectChange(event) {

        let selected = event.target;
        let selectVal = selected.value;
        console.log(selectVal);
    }
</script>
</body>
</html>
