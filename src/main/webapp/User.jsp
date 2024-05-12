<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="ErroPage.jsp"%>
<%@ page import="com.javaClasses.*" %>
<%@ page import="java.net.URLDecoder" %>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>User Page</title>
<style>
body {
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	background-color: #808080;
	margin: 0;
	padding: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

.container {
	width: 400px;
	padding: 30px;
	background-color: #fff;
	border-radius: 10px;
	box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.1);
	animation: fadeIn 0.5s ease forwards;
}

@
keyframes fadeIn {from { opacity:0;
	transform: translateY(-50px);
}

to {
	opacity: 1;
	transform: translateY(0);
}

}
h1 {
	text-align: center;
	color: #333;
	margin-bottom: 20px;
	animation: slideInLeft 0.5s ease forwards;
}

@
keyframes slideInLeft {from { opacity:0;
	transform: translateX(-50px);
}

to {
	opacity: 1;
	transform: translateX(0);
}

}
.user-info {
	padding: 20px;
	background-color: #f2f2f2;
	border-radius: 8px;
	animation: fadeIn 0.5s ease forwards;
}

label {
	font-weight: bold;
	color: #555;
}

.info-item {
	margin-bottom: 10px;
	display: flex;
	justify-content: space-between;
	align-items: center;
}

.info-item span {
	font-size: 16px;
	color: #333;
}

.btn {
	display: block;
	width: 100%;
	padding: 12px;
	margin-top: 20px;
	background-color: #007bff;
	color: #fff;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	font-size: 16px;
	text-align: center;
	text-decoration: none;
	transition: background-color 0.3s ease;
	animation: slideInBottom 0.5s ease forwards;
}

.btn:hover {
	background-color: #0056b3;
	transform: translateY(-2px);
	box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
}

.back-btn {
	background-color: #6c757d;
}

.back-btn:hover {
	background-color: #5a6268;
}
</style>
</head>
<body>
	<%
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	String email = request.getParameter("email");
	%>
	<div class="container">
		<h1><img class="svg"
						src="img/user.svg" alt="">User Information</h1>
		<div class="user-info">
			<div class="info-item">
            <label for="name">Name:</label>
            <span><%= name != null ? URLDecoder.decode(request.getParameter("name"), "UTF-8") : "Username not available" %></span>
        </div>
        <div class="info-item">
            <label for="email">Email:</label>
            <span><%= email!= null ? URLDecoder.decode(request.getParameter("email"), "UTF-8") : "Email not available" %></span>
        </div>
        <div class="info-item">
            <label for="age">Age:</label>
            <span><%= age!= null ? URLDecoder.decode(request.getParameter("age"), "UTF-8") : "Age not available" %></span>
        </div>
		</div>
		<button class="btn" onclick="logout()">Logout</button>
		<button class="btn back-btn" onclick="goBack()">Back</button>
	</div>

	<script>
		function logout() {
			// Implement logout functionality here, such as redirecting the user to the logout page or clearing session data.
			alert("Logged out successfully!");
			window.location.href = "<%= "Home.jsp??name=null&email=null&age=null" %>";
			// Example: window.location.href = "logout.php";
		}

		function goBack() {
			window.location.href = "<%= "Home.jsp?name=" + name + "&email=" + email + "&age=" + age %>";
		}
	</script>

</body>
</html>


<!--

* The DG Computer Classes project, including all associated code and materials, has been developed by Devendra R. Gonde.
* All rights are reserved for this project.
* This comprehensive project aims to revolutionize computer education by providing high-quality learning resources and interactive experiences to students at DG Computer Classes. It encompasses a range of educational materials, including [describe the types of materials, such as lesson plans, tutorials, software tools, etc.], designed to empower learners with the knowledge and skills needed to excel in the field of computer science.
* For inquiries or support related to the DG Computer Classes project, please contact:
* Name: Devendra R. Gonde
* Email: devendragonde1221@gmail.com

-->

