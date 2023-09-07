<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <link rel="stylesheet" href="./seller_page.css">
    <title>FreshFood Seller</title>

</head>

<body>
  <h1>Add Food Product</h1>
 
  <form id="formbtn" method="post" action="AddProductServlet">
    <label for="request_title">food name:</label>
    <input type="text" id="food_name" name="title" required>
    
    <label for="requested_by">Hotel Name</label>
    <input type="text" id="phone" name="hotelname" required>

    <label for="about_request">address:</label>
    <input type="text" id="address" name="address" required>

    

    <label for="requested_by">price</label>
    <input type="number" id="price" name="price" required>
    
    <label for="requested_by">Quantity</label>
    <input type="number" id="price" name="quantity" required>

    <label for="requested_by">photo</label>
    <input type="url" id="photo" name="url" required>
    
      <label for="requested_by">Rating</label>
    <input type="number" id="price" name="rating" required>

    <button id="sumbit" type="submit">submit</button>
 
  </form>

  
    <table class="table">
        <thead>
          <tr>
            <th>Food Image</th>
            <th>price</th>
            <th>Food Name</th>
            <th>Post Date</th>
            <th>Quantity</th>
          </tr>
        </thead>
        <tbody id="tbody">

        </tbody>
        <!-- <tr>
            <td id="foodImg">
                <img src="" alt="" class="imgname">
            </td>
            <td id="price"></td>
            <td id="foodName"></td>
            <td id="postData"></td>
            <td id="quantity"></td>
            <td id="remove"></td>
        </tr> -->
      </table>
      <div class="main_content">
      
      <a href ="deleteFood.jsp">Delete Food</a>
      <a href ="UpdateFood.jsp">Update Food</a>

      </div>
      <script src="../assets/js/seller-page.js"></script>
</body>


</html>