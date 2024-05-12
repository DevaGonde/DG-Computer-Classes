<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="ErroPage.jsp"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Home</title>
<link rel="stylesheet" href="utility.css">
<link rel="stylesheet" href="AboutUs.css">
</head>

<body background="img/bgimgcources.jpg"><%
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
						src="img/products.svg" alt="">Products</a></li>

				<li><a href="<%= "ContactUs.jsp?name=" + name + "&email=" + email + "&age=" + age %>"><img class="svg"
						src="img/phone-solid.svg" alt="">Contact Us</a></li>

				<li><a href="<%= "AboutUs.jsp?name=" + name + "&email=" + email + "&age=" + age %>"><img class="svg"
						src="img/about us.svg" alt=""><u>About Us</u></a></li>


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
	<div class="container">

		<div class="topinfo"></div>

		<div class="upper">
			<div class="img">
				<img class="imgg" src="img/male.jpg" alt="">
			</div>
			<br>
			<div class="info">
				<h1 id="team" class="shadow-text upper text-strock">Mr.
					Devendra Gonde</h1>
				<h5 class="text-none">Founder of D&G Classes</h5>
				<br> <br>
				<h3 class="upper">Education</h3>
				<p class="text-none">Mr. Devendra Gonde holds a bachelor's
					degree in Computer Science, providing a strong foundation in core
					computer science concepts and programming languages.</p>
				<br>

				<h3 class="upper">Experience</h3>
				<p class="text-none">Mr. Devendra Gonde has extensive experience
					in the field of computer science, with a focus on teaching and
					mentoring aspiring programmers.</p>
				<br>

				<h3 class="upper">Projects Highlights</h3>
				<p>
				<ul>
					<li class="cursive text-none">Developed innovative coding
						projects for students</li>
					<li class="cursive text-none">Organized coding competitions to
						foster learning and creativity</li>
					<li class="cursive text-none">Published articles and tutorials
						on programming concepts</li>
				</ul>
				</p>

				<h3 class="upper">Expertise</h3>
				<p>
				<ul>
					<li class="cursive text-none">Java programming</li>
					<li class="cursive text-none">Web development</li>
					<li class="cursive text-none">Object-oriented programming</li>
				</ul>
				</p>

				<h3 class="upper">Message For You/Learners</h3>
				<p class="text-none">Welcome to the world of computer learning!
					Be patient with yourself, experiment with different programming
					languages and technologies, and don't hesitate to ask questions and
					seek help from the community.</p>

			</div>
		</div>
		<br> <br> <br>
		<hr>
		<hr>


		<div class="upper">
			<br>
			<div class="info">
				<h1 id="team" class="shadow-text upper text-strock">Miss.
					Roshni Ade</h1>
				<h5 class=" text-none">Co-founder of D&G Classes</h5>
				<br> <br>

				<h3 class="upper">Education</h3>
				<p class="text-none">Miss. Roshni Ade holds a bachelor's degree
					in Computer Science, with a specialization in software engineering.</p>
				<br>

				<h3 class="upper">Experience</h3>
				<p class="text-none">Miss. Roshni Ade has several years of
					experience working in software development and teaching computer
					science courses.</p>
				<br>

				<h3 class="upper">Projects Highlights</h3>
				<p class="text-none">
				<ul>
					<li class="cursive text-none">Developed software applications
						for various clients</li>
					<li class="cursive text-none">Led teams in designing and
						implementing complex software solutions</li>
					<li class="cursive text-none">Contributed to open-source
						projects and communities</li>
				</ul>
				</p>

				<h3 class="upper">Expertise</h3>
				<p class="text-none">
				<ul>
					<li class="text-none cursive">Software development</li>
					<li class="text-none cursive">Database management</li>
					<li class="text-none cursive">Agile methodologies</li>
				</ul>
				</p>

				<h3 class="upper">Message For You/Learners</h3>
				<p class="text-none">Learning about computers can be
					overwhelming, but don't worry! Start by understanding the
					fundamentals, practice coding regularly, and collaborate with peers
					to solve problems and learn from each other.</p>

			</div>
			<div class="img">
				<img class="imgg" src="img/female.jpg" alt="">
			</div>
		</div>
		<br> <br> <br>
		<hr>
		<hr>

		<div name="team">
			<h1 id="team" class="shadow-text upper text-strock">Meet Our
				Team</h1>
			<img id="teamimg" src="img/group.png" alt="">
		</div>
		<br> <br>


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
