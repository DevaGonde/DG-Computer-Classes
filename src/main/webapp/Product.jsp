<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="ErroPage.jsp"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Home</title>
<link rel="stylesheet" href="products.css">
<link rel="stylesheet" href="utility.css">
</head>

<body background="img/bgimgcources.jpg">

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
 if (name != null )
 	out.println(name);
 else
 	out.print("user");
 %></a></li>
				</ul>
			</div>
		</nav>
	</header>
	<div class="container">

		<div class="flex card">
			<a class="flex item"  href="Prod?id=1&email=<%= email%>&age=<%=age %>">
			
				<div>
					<img class="item-img" src="img/basic.jpg" alt=""><br>
					<p>Cources CD For Basic Computer Classes</p>
				</div>
			</a> <a class=" item flex" href="Prod?id=2&email=<%= email%>&age=<%=age %>"">
				<div>
					<img class="item-img" src="img/coding.png" alt=""><br>
					<p>Cources CD For Coding Languages</p>
				</div>
			</a> <a class="item flex" href="Prod?id=3&email=<%= email%>&age=<%=age %>"">
				<div>
					<img class="item-img" src="img/accounting.png" alt=""><br>
					<p>Cources CD For Accounting Courses</p>
				</div>
			</a>
		</div>


		<div class="flex card">
			<a class="flex item" href="Prod?id=4&email=<%= email%>&age=<%=age %>">
				<div>
					<img class="item-img" src="img/desgining.png" alt=""><br>
					<p>Cources CD For Designing Courses</p>
				</div>
			</a> <a class="flex item" href="Prod?id=5&email=<%= email%>&age=<%=age %>"">
				<div>
					<img class="item-img" src="img/pendrive.png" alt=""><br>
					<p>Pendrive + Nitro Card Combo</p>
				</div>
			</a> <a class="flex item" href="Prod?id=6&email=<%= email%>&age=<%=age %>">
				<div>
					<img class="item-img" src="img/mouse.jpeg" alt=""><br>
					<p>Computer Mouse</p>
				</div>
			</a>

		</div>

		<div class="flex card">

			<a class="flex item" href="Prod?id=7&email=<%= email%>&age=<%=age %>">
				<div>
					<img class="item-img" src="img/keybord.jpg" alt=""><br>
					<p>Computer Keybord</p>
				</div>
			</a> <a class="flex item" href="Prod?id=8&email=<%= email%>&age=<%=age %>">
				<div>
					<img class="item-img" src="img/antivirus.png" alt=""><br>
					<p>Antivirus Protection</p>
				</div>
			</a> <a class="flex item" href="Prod?id=9&email=<%= email%>&age=<%=age %>">
				<div>
					<img class="item-img" src="img/Cleaning kit.jpg" alt=""><br>
					<p>Screen Cleaning Kit</p>
				</div>
			</a>
		</div>

	</div>


	<footer>
		<img src="./" alt="">&copy;DG Copyrights | All rights reserved
	</footer>


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
