<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Delete food</h2>
<form action="DeleteFoodServlet" method="GET">
<label for="foodname">
Enter Food Name: 
<input type="text" name="foodname"></label>
<button type="submit">Sumbit</button>

</form>
</body>
</html>