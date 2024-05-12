package com.javaClasses;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.singletoneClasses.GetConnectionObj;

public class VerifyUser {

	public static boolean check(String name, String pass) {
		boolean isverified = false;
		try {
			Connection con = GetConnectionObj.getInstance();
			PreparedStatement st = con.prepareStatement("SELECT email FROM LoginInfo WHERE uname=? AND password=?;");
			st.setString(1, name);
			st.setString(2, pass);
			ResultSet rs = st.executeQuery();
			if (rs.next())
				isverified = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return isverified;
	}
	
	public static void main(String[] args) {
		System.out.println(VerifyUser.check("deva", "123"));
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