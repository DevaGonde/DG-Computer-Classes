<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="ErroPage.jsp"%>
<%@ page import="java.sql.*"%>
<%
ResultSet rs = (ResultSet) request.getAttribute("rs");
rs.next();
%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Product </title>
<link rel="stylesheet" href="prod.css">
<link rel="stylesheet" href="utility.css">
</head>

<body>
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
						src="img/graduation-cap-solid.svg" alt="">Courses</a></li>

				<li><a href="<%= "Gallary.jsp?name=" + name + "&email=" + email + "&age=" + age %>"><img class="svg"
						src="img/photo-film-solid.svg" alt=""> Gallary</a></li>

				<li><a href="<%= "Product.jsp?name=" + name + "&email=" + email + "&age=" + age %>"><img class="svg"
						src="img/products.svg" alt=""><u>Products</u></a></li>

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
	<div class="body">
		<div class="container">
			<div class="imgBx">
				<img src="img/<%=rs.getString("imgname")%>" alt="">
			</div>
			<div class="details">
				<div class="content">
					<h2><%=rs.getString(2)%>
						<br> <span>Limited</span>
					</h2>
					<p><%=rs.getString(4)%></p>
					<h4>
						Rs. <span class="strike"><%=rs.getInt(5)%></span>
					</h4>
					<h3>
						Rs.<%=rs.getInt(6)%></h3>
					<button>Buy Now</button>
				</div>
			</div>
		</div>
	</div>

	<footer> &copy; DG Copyrights | All rights reserved</footer>

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
