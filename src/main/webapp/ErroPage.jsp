<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isErrorPage="true"%>
	<% exception.printStackTrace(); %>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Error Page</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
	color: #333;
	margin: 0;
	padding: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

.error-container {
	text-align: center;
}

.error-code {
	font-size: 5em;
	margin-bottom: 10px;
	color: #d9534f; /* Red color for error code */
}

.error-message {
	font-size: 1.5em;
	margin-bottom: 20px;
}

.error-details {
	font-size: 1.2em;
}

.home-link {
	margin-top: 20px;
	display: inline-block;
	padding: 10px 20px;
	background-color: #337ab7; /* Blue color for link */
	color: #fff;
	text-decoration: none;
	border-radius: 5px;
}

.home-link:hover {
	background-color: #286090; /* Darker shade of blue on hover */
}
</style>
</head>
<body>
	<div class="error-container">
		<div class="error-code">404</div>
		<!-- Error code -->
		<div class="error-message">Page Not Found</div>
		<!-- Error message -->
		<div class="error-details">We're sorry, the page you requested
			could not be found.</div>
		<a href="Home.jsp" class="home-link">Back to Home</a>
		<!-- Link to home page -->
	</div>
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
