<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.fssa.freshfood.model.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Fresh Food</title>
<link rel="stylesheet" href="./home.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">



</head>
<body>


	<div id="container" class="container">
		<div id="menu">
			<div class="brand-logo">
				<img src="https://iili.io/HyiBuTJ.png" alt="error">
			</div>
			<div class="menu-item">
				<a href="./seller_page.jsp" id="add_product"> Add product</a> <a
					href="html/booking-history.html"> Your order</a> <a
					href="./html/cart.html" id="cart"> Cart</a>
				<!-- <a href="#"> Address</a> -->
				<a href="html/help.html"> help</a>
				<!-- <a href="#">Join a delivery boy</a> -->
				<a href="html/seller-login.html">Seller</a>

			</div>
		</div>

		<!-- 2nd set -->

		<div id="food-container">

			<div id="header">
				<div class="add-box">
					<i class="fa fa-map-marker your-address" id="add-address"> Your
						Address </i>
				</div>
				<div class="util">

					<i><input type="search" placeholder="Search food" id="search2">
					</i>
					<!-- <i class="fa fa-search">Sea</i> -->
					<!-- <i class="fa fa-tags"> Offers</i> -->
					<!-- <i class="fa fa-cart-plus"   id="cart-plus"> Item</i> -->
					<a href="html/login.html" class="login">login </a>
				</div>
			</div>

			<div id="food-items">
				<div id="biriyani">
					<!-- <button onclick="displayItems()">click</button> -->
					<p id="catagory-name">Biryani</p>

					<%
					List<FreshFood> listFood = (List<FreshFood>) request.getAttribute("freshFoodList");
					if(listFood != null){
						for(FreshFood ele:listFood){
					%>
					<div id="item-card">
						<div id="card-top">
							<i class="fa fa-star" id="rating">$.<%=ele.getRating() %></i> <i
								class="fa fa-heart-o add-to-cart"></i>
						</div>
						<img src="<%=ele.getFoodImageLink() %>"
							alt="biriyani">
						<p id="item-name"><%=ele.getFoodName() %></p>
						<p id="item-price">Price : <%=ele.getPrice() %></p>
					</div>
					
					<%
						}
					}else{
					%>
					<p>Empty</p>
					<%} %>
					
				</div>
			</div>
		</div>

		<div id="cart">
			<div class="taste-header">
				<div class="user">
					<a href="html/profile.html" id="account_btn"> <i
						class="fa da-user-circle" id="pro"> Account</i></a>
				</div>
			</div>
			<div id="catagory-list">
				<p class="item-menu">Go for hunt</p>
				<div class="border"></div>
				<div class="list-card">
					<img src="assets/images/biryani/goan-fish-biryani.jpg" alt="error">
					<a href="#biriyani" class="list-name">Biryani</a>
				</div>
				<div class="list-card">
					<img src="assets/images/chicken/Chicken_roast.jpg" alt="error">
					<a href="#chicken" class="list-name">Chicken</a>
				</div>
				<div class="list-card">
					<img src="assets/images/paneer/palak-paneer.jpg" alt="error">
					<a href="#paneer" class="list-name">Paneer</a>
				</div>
				<div class="list-card">
					<img src="assets/images/vegetable/vegetable-kolhapuri.jpg"
						alt="error"> <a href="#vegetable" class="list-name">Vegetable</a>
				</div>
				<div class="list-card">
					<img src="assets/images/chinese/Chili-Chicken.jpg" alt="error">
					<a href="#chinise" class="list-name">Chinese</a>
				</div>
				<div class="list-card">
					<img src="assets/images/south indian/sambhar-vada.jpg" alt="error">
					<a href="#south-indian" class="list-name">South-Indian</a>
				</div>

			</div>
			
		</div>



	</div>




</body>
</html>