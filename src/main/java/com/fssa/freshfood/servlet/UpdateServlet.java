package com.fssa.freshfood.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.freshfood.service.FreshfoodService;

/**
 * Servlet implementation class UpdateServlet
 */
@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  String foodName = request.getParameter("foodname");
	        String hotelName = request.getParameter("hotelname");
	        String address = request.getParameter("address");
	        double price = Double.parseDouble(request.getParameter("price"));
	        String foodImageLink = request.getParameter("url");
	        double rating = Double.parseDouble(request.getParameter("rating"));

	        PrintWriter out = response.getWriter();
	 
	            
	        
	            try {
					FreshfoodService.updateFoodService(foodName, foodImageLink,price);
					out.append("Success");
				} catch (Exception e) {
					out.append(e.getMessage());
				}
	            
	            
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
