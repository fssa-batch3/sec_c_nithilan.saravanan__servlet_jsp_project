<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "com.fssa.freshfood.model.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Fresh Food</title>
</head>
<body>
    <h1>Update Fresh Food</h1>
    
    <form action="UpdateServlet" method="post">
        <%-- Retrieve the FreshFood object from the request attribute --%>
        <%
            FreshFood food = (FreshFood) request.getAttribute("FreshFood");
            if (food != null) {
        %>
        <h1>Add Food Product</h1>
 
 
    <label for="foodname">Food Name:</label>
    <input type="text" id="foodname" name="foodname" value='<%=food.getFoodName() %>' required>
    
    <label for="hotelname">Hotel Name:</label>
    <input type="text" id="hotelname" name="hotelname" value='<%=food.getHotelName() %>' required>

    <label for="address">Address:</label>
    <input type="text" id="address" name="address" value='<%=food.getAddress() %>' required>

    <label for="price">Price:</label>
    <input type="number" id="price" name="price" value='<%=food.getPrice() %>' required>

    <label for="photo">Photo:</label>
    <input type="url" id="photo" name="url" value='<%=food.getFoodImageLink() %>' required>

    <label for="rating">Rating:</label>
    <input type="number" id="rating" name="rating" value='<%=food.getRating() %>' required>

    <button id="submit" type="submit">Submit</button>


  
        <% } else { %>
        <p>No Fresh Food data found for update.</p>
        <% } %>
    </form>
</body>
</html>
