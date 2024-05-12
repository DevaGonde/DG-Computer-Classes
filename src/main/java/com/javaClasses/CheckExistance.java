package com.javaClasses;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.singletoneClasses.GetConnectionObj;

public class CheckExistance {

	public static boolean checkUserExistence(String email, String uname) {
		boolean exists = false;
		Connection con = null;
		PreparedStatement st = null;
		ResultSet rs = null;

		try {
			con = GetConnectionObj.getInstance();
			String sql = "SELECT COUNT(*) AS count FROM logininfo WHERE email = ? OR uname = ?";
			st = con.prepareStatement(sql);
			st.setString(1, email);
			st.setString(2, uname);

			rs = st.executeQuery();

			if (rs.next()) {
				int count = rs.getInt("count");
				exists = (count > 0); // true if count is greater than 0, indicating email or username exists
			}
		} catch (SQLException e) {
			System.err.println("Error while checking user existence: " + e.getMessage());
			e.printStackTrace();
		}

		return exists;
	}

	public static String getEmail(String name, String pass) {
		String email = null;
		Connection con = null;
		PreparedStatement st = null;
		ResultSet rs = null;

		try {
			con = GetConnectionObj.getInstance();
			String sql = "SELECT email FROM logininfo WHERE uname = ? OR password = ?";
			st = con.prepareStatement(sql);
			st.setString(1, name);
			st.setString(2, pass);

			rs = st.executeQuery();

			if (rs.next()) {
				email = rs.getString(1);// true if count is greater than 0, indicating email or username exists
			}
		} catch (SQLException e) {
			System.err.println("Unable to fetch the user email : " + e.getMessage());
			e.printStackTrace();
		}

		return email;
	}
	
	public static String getAge(String name, String pass) {
		String age = null;
		Connection con = null;
		PreparedStatement st = null;
		ResultSet rs = null;

		try {
			con = GetConnectionObj.getInstance();
			String sql = "SELECT age FROM logininfo WHERE uname = ? OR password = ?";
			st = con.prepareStatement(sql);
			st.setString(1, name);
			st.setString(2, pass);

			rs = st.executeQuery();

			if (rs.next()) {
				age = rs.getString(1);// true if count is greater than 0, indicating email or username exists
			}
		} catch (SQLException e) {
			System.err.println("Unable to fetch the user email : " + e.getMessage());
			e.printStackTrace();
		}

		return age;
	}
	public static void main(String[] args) {
		System.out.println(CheckExistance.checkUserExistence("devendragonde70@gmail.com", "deva"));
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
