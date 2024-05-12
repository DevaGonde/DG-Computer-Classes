<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="ErroPage.jsp"%>
<%@ page import="com.javaClasses.*"%>
<%
UserData userData = (UserData) request.getAttribute("userData");
%>
<!DOCTYPE html>
<html lang="en">
<link>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Home</title>
<link rel="stylesheet" href="home.css"></link>
<link rel="stylesheet" href="utility.css"></link>
</head>
<body>
<%
					String name = null;
					String email = null;
					String age =null;
					name=(String)request.getParameter("name");
					email=(String)request.getParameter("email");
					age=(String)request.getParameter("age");
					if(userData!=null){
						 name = userData.getName();
						 email = userData.getEmail();
						 age = userData.getAge();
						}
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
						src="img/house-solid.svg" alt=""><u>Home</u></a></li>

				<li><a href="<%= "Cources.jsp?name=" + name + "&email=" + email + "&age=" + age %>"><img class="svg"
						src="img/graduation-cap-solid.svg" alt="">Courses</a></li>

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
					    href="<% if(name != null || name == "" || name.isEmpty()  ) { out.println("User.jsp?name=" + name + "&email=" + email + "&age=" + age); } else { out.print("Login.jsp"); } %>">
						<img class="svg "
							src="img/user.svg" alt=""> <%
 if (name == "" || name==null || name.isEmpty() )
 	out.print("user");
 else
 	out.println(name);
 %></a></li>
				</ul>
			</div>
		</nav>
	</header>
	<div class="container">

		<section class="section  ">
			<div class=" flex">
				<img class="secimg" src="img/home i1.jpg"
					alt="image was unable to load">
			</div>
			<div>
				<p>
					<br> <br> <br>
				<h1 class="shadow-text header text-white ">Who are We ?</h1>
				</p>
				<p class=" data">
					&nbsp;&nbsp;&nbsp; Welcome to D&G computer class! In this Class,
					you’ll learn the basics<br> of using a computer, including how
					to navigate the desktop, use <br> applications and the
					internet, and keep your computer secure. By the <br> end of
					the course, you’ll have a solid foundation in computer basics <br>
					and feel confident using a computer for everyday tasks.
				</p>
			</div>
		</section>

		<section class="section ">
			<div>
				<p>
					<br> <br> <br>
				<h1 class="shadow-text header text-white">What we Provide ?</h1>
				</p>
				<p class="data">
					&nbsp;&nbsp;&nbsp;We provide the computer classes for the different
					fields Such like <br> <br>
				<ul class="li-none data">
					<li class="data">Basic Computer Classes</li>
					<li class="data">Computer Programming Courses</li>
					<li class="data">Accounting Courses</li>
					<li class="data">Designing courses</li>
					<br>
					<a href="Cources.jsp?name=" + name + "&email=" + email + "&age=" + age" class="hyper-none button">Details</a>
				</ul>
				</p>
			</div>
			<div class="flex">
				<img class="secimg" src="img/home i2.jpg"
					alt="image was unable to load">
			</div>
		</section>

		<section class="section ">
			<div class="flex">
				<img class="secimg" src="img/home i3.png"
					alt="image was unable to load">
			</div>
			<div>
				<p>
					<br> <br> <br>
				<h1 class="shadow-text header text-white">Who Operates This ?</h1>
				</p>
				<p class="data">
					&nbsp;&nbsp;&nbsp; We are the Devendra And Gauri Computer classes
					thats help to to <br> acheive success in computer <br> <br>
					<a href="AboutUs.jsp?name=" + name + "&email=" + email + "&age=" + age" class="hyper-none button">Know About Us</a>
				</p>
			</div>
		</section>

		<section class="section ">
			<div>
				<p>
					<br> <br> <br>
				<h1 class="shadow-text header text-white">What About Our
					Products ?</h1>
				</p>
				<p class="data ">
					&nbsp;&nbsp;&nbsp; We provide the computer related products that
					are useful for <br> computer users and learners to help in
					verious sectors Welcome to <br> our computer products
					introduction! We offer a range of high-quality<br> computer
					products, including laptops, desktops, monitors, and <br>
					accessories. Our products are designed with the latest technology<br>
					and are built to last.
				</p>
				<br> <a href="Product.jsp?name=" + name + "&email=" + email + "&age=" + age" class="hyper-none button">Bye
					Products For Safe Future</a>
			</div>
			<div class="flex">
				<img class="secimg" src="img/home product.jpg"
					alt="image was unable to load">
			</div>
		</section>

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
