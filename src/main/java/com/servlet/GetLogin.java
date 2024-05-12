package com.servlet;

import java.io.IOException;

import com.javaClasses.CheckExistance;
import com.javaClasses.UserData;
import com.javaClasses.VerifyUser;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class GetLogin
 */
public class GetLogin extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			String name = request.getParameter("username");
			String pass = request.getParameter("password");

			if (VerifyUser.check(name, pass)) {
				System.out.println("   user verified ");
				UserData userData=new UserData(name,pass,CheckExistance.getAge(name, pass),CheckExistance.getEmail(name, pass));
				request.setAttribute("userData", userData);
				RequestDispatcher rd = request.getRequestDispatcher("Home.jsp");
				rd.forward(request, response);
			} else {
				System.out.println(name+  "   "+pass);
				System.out.println("No records found in the loginInfo table.");
				request.setAttribute("msg", " Wrong Input");
				RequestDispatcher rdd = request.getRequestDispatcher("Login.jsp");
				rdd.forward(request, response);
			}
		} catch (Exception e) {
			System.out.println(e);
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
