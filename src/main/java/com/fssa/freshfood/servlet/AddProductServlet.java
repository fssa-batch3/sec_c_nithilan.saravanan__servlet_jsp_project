package com.fssa.freshfood.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.freshfood.model.FreshFood;
import com.fssa.freshfood.service.FreshfoodService;

/**
 * Servlet implementation class AddProductServlet
 */
@WebServlet("/AddProductServlet")
public class AddProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddProductServlet() {
		super();
	}

	/**
	 * Handles HTTP GET requests (Not used in this servlet).
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * Handles HTTP POST requests for adding a new food product.
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// Retrieving data from the HTML form
		String title = request.getParameter("title");
		String address = request.getParameter("address");
		String hotelName = request.getParameter("hotelname");
		double price = Double.parseDouble(request.getParameter("price"));
		String imageUrl = request.getParameter("url");
		double rating = Double.parseDouble(request.getParameter("rating"));
		LocalDate uploadedDate = LocalDate.now();
		int quantity = Integer.parseInt(request.getParameter("quantity"));

		PrintWriter out = response.getWriter();

		try {
			// Creating a FreshFood object with the retrieved data
			FreshFood freshFood = new FreshFood(title, quantity, hotelName, address, imageUrl, price, uploadedDate,
					rating);

			// Creating an instance of the FreshfoodService class
			FreshfoodService service = new FreshfoodService();

			// Adding the new food product to the database
			boolean isAdded = service.addNewFoodService(freshFood);

			if (isAdded) {
				out.println("<h1>Successfully added Food details</h1>");
			}

		} catch (Exception e) {
			e.getMessage();
		}
	}
}
