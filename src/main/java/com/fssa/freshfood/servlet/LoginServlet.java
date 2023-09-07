package com.fssa.freshfood.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.freshfood.model.FreshFood;
import com.fssa.freshfood.service.FreshfoodService;


/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Initialize a PrintWriter to write the response back to the client
        PrintWriter out = response.getWriter();

        try {
            // Call a service (FreshfoodService) to retrieve a list of FreshFood items
            List<FreshFood> freshFoodList = FreshfoodService.getAllFoods();

            // Set the freshFoodList as an attribute in the request object
            request.setAttribute("freshFoodList", freshFoodList);

            // Create a RequestDispatcher to forward the request to a JSP page named "home.jsp"
            RequestDispatcher dis = request.getRequestDispatcher("/home.jsp");

            // Forward the request and response objects to the "home.jsp" page for rendering
            dis.forward(request, response);
        } catch (SQLException e) {
            // If a SQLException is thrown during the process, print the exception details
            e.printStackTrace();
        }
    }


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
