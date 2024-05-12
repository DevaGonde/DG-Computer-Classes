package com.servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import com.javaClasses.AddNewInDB;

/**
 * Servlet implementation class VerifyOtp
 */
public class VerifyOtp extends HttpServlet {
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher rd=request.getRequestDispatcher("Login.jsp");
        try {
            
            String uname = (String) request.getParameter("uname");
            String pass = (String) request.getParameter("pass");
            String email = (String) request.getParameter("email");
            String age = (String) request.getParameter("age");
            Integer myOtp = Integer.parseInt(request.getParameter("myotp"));
            Integer jspOtp = Integer.parseInt(request.getParameter("otp"));
            
            System.out.println("hiiiiiiiii" + uname + " " + pass + " " + email + " " + age + " " + " myotp: " + myOtp + " jsp : " + jspOtp);
            if (uname != null && pass != null && email != null && age != null && myOtp != null && jspOtp!=null) {
                
                
                if (myOtp.equals(jspOtp)) {
                    if (AddNewInDB.addData(uname, pass, email, Integer.parseInt(age))) {
                        request.removeAttribute(uname);
                        request.removeAttribute(pass); 
                        request.removeAttribute(email);
                        
                        request.setAttribute("msg", " Account has been Created Successfully ...");
                        rd.forward(request, response);
                    } else {
                        request.setAttribute("msg", " Unable to Create an Account ...");
                        rd.forward(request, response);
                    }
                } else {
                    request.setAttribute("msg", " OTP verification failed ...");
                    rd.forward(request, response);
                }
            } else {
                request.setAttribute("msg", " One or more attributes are missing or null ...");
                rd.forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("msg", " Exception Occurred ...");
            rd.forward(request, response);
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
