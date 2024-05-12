package com.singletoneClasses;

import java.sql.Connection;
import java.sql.DriverManager;

public class GetConnectionObj {

    private static Connection con;

    // Private constructor to prevent instantiation from outside
    private GetConnectionObj() {
    }
    public static  Connection getInstance() {
        if (con == null) {
        	 String url = "jdbc:mysql://localhost:3306/jsp";
             String username = "root";
             String password = "deva@1221";
             try {
         		Class.forName("com.mysql.cj.jdbc.Driver");
				con = DriverManager.getConnection(url, username, password);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
        }
        return con;
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