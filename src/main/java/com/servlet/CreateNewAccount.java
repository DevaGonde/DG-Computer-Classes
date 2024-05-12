package com.servlet;

import java.io.IOException;
import java.util.Random;

import com.javaClasses.CheckExistance;
import com.javaClasses.MailSender;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CreateNewAccount
 */
public class CreateNewAccount extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname = request.getParameter("username");
		String pass = request.getParameter("password");
		String email = request.getParameter("email");
		String age = request.getParameter("age");
		RequestDispatcher rd=null;
		if(!CheckExistance.checkUserExistence(email, uname)) {
			request.setAttribute("uname", uname);
			request.setAttribute("pass", pass);
			request.setAttribute("email", email);
			request.setAttribute("age", age);
			int otp=otpProvider();
		    request.setAttribute("myotp",otp);
		    
		    System.out.println(uname+ " "+pass+" "+email+" "+age+" "+otp);
			if(MailSender.sendMail(email, uname, otp)) {
				rd=request.getRequestDispatcher("OtpVerifier.jsp");
				rd.forward(request, response);
			}
			else {
				request.setAttribute("msg", " Unable to send OTP ... ");
				rd=request.getRequestDispatcher("Login.jsp");
				rd.forward(request, response);
			}
		}
		else{
			request.setAttribute("msg", " User Already Exist ... ");
			rd=request.getRequestDispatcher("Login.jsp");
			rd.forward(request, response);
			
		}
	}
	protected int otpProvider() {
		Random random = new Random();
        int otp = 100000 + random.nextInt(900000);
		return otp;
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
