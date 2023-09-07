package com.fssa.freshfood.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.freshfood.model.FreshFood;
import com.fssa.freshfood.service.FreshfoodService;

/**
 * Servlet implementation class EditFoodServlet
 */
@WebServlet("/EditFoodServlet")
public class EditFoodServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditFoodServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String name = request.getParameter("foodname");
		
		FreshFood food = null;
		try {
			food=	FreshfoodService.getFoodDetailsService(name);
		} catch (Exception e) {
			response.getWriter().append(e.getMessage());
		}
		
		request.setAttribute("FreshFood", food );
		RequestDispatcher rd =  request.getRequestDispatcher("Update.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
