package com.singletoneClasses;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class GetResultSetObj {
	public static ResultSet getResultSetObjForProduct(int id) {
		Statement st = null;
		ResultSet rs = null;
		try {
			Connection con = GetConnectionObj.getInstance();
			st = con.createStatement();
			String sql = "SELECT * FROM Products WHERE id =" + id + ";";
			rs = st.executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return rs;
	}
	
	public static ResultSet getResultSetObjForCourses(int id) {
		Statement st = null;
		ResultSet rs = null;
		try {
			Connection con = GetConnectionObj.getInstance();
			st = con.createStatement();
			String sql = "SELECT * FROM Courses WHERE id =" + id + ";";
			rs = st.executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return rs;
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