<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="ErroPage.jsp"%>
<%@ page import="java.sql.*"%>
<%
ResultSet rs = (ResultSet) request.getAttribute("rs");
rs.next();
%>

<!DOCTYPE html>
<html lang="en">
<link>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Home</title>
<link rel="stylesheet" href="Course.css"></link>
<link rel="stylesheet" href="utility.css"></link>
</head>
<body background="img/bgimgcources.jpg" width="100vw">
<%
					String name = null;
					String email = null;
					String age =null;
					name=(String)request.getParameter("name");
					email=(String)request.getParameter("email");
					age=(String)request.getParameter("age");
					%>
  <%
	response.addHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	%>
	<div class="preloader" id="loader"></div>
	<header class="head">
		<nav>
			<div class="logo">
				<img id="logo" src="img/logo.png" width="60px" alt="">
			</div>
			<ul class=" li-none flex">
				<li><a href="<%= "Home.jsp?name=" + name + "&email=" + email + "&age=" + age %>"><img class="svg"
						src="img/house-solid.svg" alt="">Home</a></li>

				<li><a href="<%= "Cources.jsp?name=" + name + "&email=" + email + "&age=" + age %>"><img class="svg"
						src="img/graduation-cap-solid.svg" alt=""><u>Courses</u></a></li>

				<li><a href="<%= "Gallary.jsp?name=" + name + "&email=" + email + "&age=" + age %>"><img class="svg"
						src="img/photo-film-solid.svg" alt=""> Gallary</a></li>

				<li><a href="<%= "Product.jsp?name=" + name + "&email=" + email + "&age=" + age %>"><img class="svg"
						src="img/products.svg" alt="">Products</a></li>

				<li><a href="<%= "ContactUs.jsp?name=" + name + "&email=" + email + "&age=" + age %>"><img class="svg"
						src="img/phone-solid.svg" alt="">Contact Us</a></li>

				<li><a href="<%= "AboutUs.jsp?name=" + name + "&email=" + email + "&age=" + age %>"><img class="svg"
						src="img/about us.svg" alt="">About Us</a></li>


			</ul>
			<div class="zebra">
				<ul class="ul-none">
					
					<li class=li-none><a
					    href="<% if(name != null) { out.println("User.jsp?name=" + name + "&email=" + email + "&age=" + age); } else { out.print("Login.jsp"); } %>">
						<img class="svg "
							src="img/user.svg" alt=""> <%
 if (name != null)
 	out.println(name);
 else
 	out.print("user");
 %></a></li>
				</ul>
			</div>
		</nav>
	</header>
	<div class="container flex">
		<div>
			<img class="img" src="img/<%=rs.getString(12)%>" alt="">
		</div>

		<div class="desc">
			<b class="heading upper"><%=rs.getString(2)%></b><br> <br>
			<p><%=rs.getString(3)%></p>
			<ul class="li-none">
				<%=rs.getString(4)%>
			</ul>
			<br>
			<hr>
			<br> <b class="heading upper">Future with <%=rs.getString(2)%></b><br>
			<br>
			<ul class="li-none">
				<%=rs.getString(5)%>
			</ul>
			<br>
			<div class="flex-center border-radius upper">
				<a class="hyper-none" href="Login.jsp">
					<p>Enroll Now</p>
				</a>
			</div>
		</div>
	</div>
	<br>
	<br>
	<br>
	<hr>
	<hr>
	<br>
	<br>
	<br>

	<div class="mentor">
		<p
			class="header underline text-strock col-red upper shadow-text word-space text-center">
			Meet The Mentor of
			<%=rs.getString(2)%></p>
		<br> <br>

		<div class="flex ">

			<div>
				<img class="mentor-img b" src="img/<%=rs.getString(13)%>" alt="">
			</div>

			<div>

				<h1>
					<p class="header heading upper col-black shadow-text ">
						<u class="text-none"><u> <%=rs.getString(6)%></u>
					</p>
				</h1>
				<br>
				<p class="cursive text-white">
					<%=rs.getString(7)%>
				</p>
				<br>
				<h3 class="upper text-white">Education</h3>
				<p class="text-white cursive">
					<%=rs.getString(8)%></p>
				<br>
				<h3 class="upper text-white">Experience</h3>
				<p class="text-white cursive">
					<%=rs.getString(9)%></p>
				<br>
				<h3 class="upper text-white">Projects Highlights</h3>
				<ul class="text-white cursive">
					<%=rs.getString(10)%>
				</ul>
				<br>
				<h3 class="upper text-white">Expertise</h3>
				<ul class="cursive text-white">
					<%=rs.getString(11)%>
				</ul>
				<br>
			</div>

		</div>
	</div>

	<footer> &copy;DG Copyrights | All rights reserved</footer>

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
