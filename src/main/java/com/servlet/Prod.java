
package com.servlet;

import java.io.IOException;
import java.sql.ResultSet;

import com.singletoneClasses.GetResultSetObj;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class Prod extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));

		try {
			
			ResultSet rs=GetResultSetObj.getResultSetObjForProduct(id);
			if (rs!= null) {
				request.setAttribute("rs", rs);
				RequestDispatcher rd = request.getRequestDispatcher("Prod.jsp");
				rd.forward(request, response);
			} else {
				// Handle case when no product is found with the given ID
				System.out.println(" result set is empty ");
				response.sendRedirect("ErrorPage.jsp?error=Product not found");
			}
		} catch (Exception e) {
			e.printStackTrace();
			// Log the error for debugging
			response.sendRedirect("ErrorPage.jsp?error=Internal server error");
		}
	}
	

}

/**

*The DG Computer Classes project, including all associated code and materials, has been developed by Devendra R. Gonde.
*All rights are reserved for this project.
*This comprehensive project aims to revolutionize computer education by providing high-quality learning resources and
 interactive experiences to students at DG Computer Classes. It encompasses a range of educational materials,
 including [describe the types of materials, such as lesson plans, tutorials, software tools, etc.], designed to
 empower learners with the knowledge and skills needed to excel in the field of computer science.
*For inquiries or support related to the DG Computer Classes project, please contact:
*Name: Devendra R. Gonde
*Email: devendragonde1221@gmail.com

*/
