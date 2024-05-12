package com.javaClasses;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.singletoneClasses.GetConnectionObj;

public class AddNewInDB {

	public static boolean addData(String username,String password, String email, int age) {
		boolean isAdded=false;
		try {
		Connection con=GetConnectionObj.getInstance();
		
		PreparedStatement statement = con.prepareStatement("INSERT INTO logininfo (uname, password, email, age) VALUES (?, ?, ?, ?);");
		statement.setString(1, username);
		statement.setString(2, password);
		statement.setString(3, email);
		statement.setInt(4, age);
		
		isAdded=statement.executeUpdate()>0;
		
		}catch(Exception e) {
			e.printStackTrace();
		}
        return isAdded;
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
