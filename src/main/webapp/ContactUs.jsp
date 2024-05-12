<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="ErroPage.jsp"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Home</title>
<link rel="stylesheet" href="ContactUs.css">
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
						src="img/products.svg" alt="">Products</a></li>

				<li><a href="<%= "ContactUs.jsp?name=" + name + "&email=" + email + "&age=" + age %>"><img class="svg"
						src="img/phone-solid.svg" alt=""><u>Contact Us</u></a></li>

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
	<div class="container">

		<!-- heading images -->
		<div class="page-heading contact-heading header-text">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="text-content">
							<h4>contact us</h4>
							<h2>let’s get in touch</h2>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- maps -->
		<br>
		<br>
		<br>
		<br>
		<h1>
			<p>&nbsp &nbsp &nbsp &nbspOur Location on Maps</p>
		</h1>
		<hr>
		<br>
		<div class="maps flex">

			<div class="left">
				<iframe
					src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3775.834611034178!2d73.8856281736474!3d18.85002025903105!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bc2cbc48e31be6d%3A0xa008ec27e8ad1f1f!2sHrm%20College%20Ground!5e0!3m2!1sen!2sin!4v1681322402245!5m2!1sen!2sin"
					width="700" height="450" style="border: 0;" allowfullscreen=""
					loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
			</div>

			<div class="right">
				<p class="data">
				<h2 class="header">&nbsp &nbsp About Our Office</h2>
				<br>
				<p class="cursive">&nbsp &nbsp &nbsp &nbspOur office for online
					computer classes website is a platform designed to provide
					comprehensive computer training and education to individuals of all
					skill levels.</p>
				</p>
				<br>
				<p class="data">&nbsp &nbsp &nbsp &nbsp We offer a wide range of
					courses covering various aspects of computer science, programming
					languages, software applications, and IT skills.</p>
				<br>
				<hr>
				<br>

				<div class="icons flex">
					<a href="https://www.facebook.com/deva.gonde.9?mibextid=ZbWKwL"><img
						class="img-contact svg-contact" src="img/facebook.svg" alt=""></a>

					<a href="https://wa.me/qr/MK7GHIDSTSQPH1"><img
						class="img-contact svg-contact" src="img/whatsapp.svg" alt=""></a>

					<a href="https://www.linkedin.com/in/devendra-gonde-902062265"><img
						class="img-contact svg-contact" src="img/linkedin.svg" alt=""></a>

					<a href="#"><img class="img-contact svg-contact"
						src="img/twitter.svg" alt=""></a>

				</div>
				<div class="icons flex">

					<a href="https://instagram.com/d_e_v_a.22?igshid=ZDdkNTZiNTM="><img
						class="img-contact svg-contact" src="img/instagram.svg" alt=""></a>

					<a href="https://t.me/Deva_1221"><img
						class="img-contact svg-contact" src="img/telegram.svg" alt=""></a>

					<a href="https://youtube.com/@devendragonde5283"><img
						class="img-contact svg-contact" src="img/youtube.svg" alt=""></a>

					<a
						href="https://www.snapchat.com/add/deva_g12?share_id=Mmb1yhDOm3s&locale=en-IN"><img
						class="img-contact svg-contact" src="img/snapchat.svg" alt=""></a>


				</div>
			</div>
		</div>

		<br>
		<br>
		<hr>
		<br>
		<br>

		<div class="c-m">
			<!-- Message and call-->

			<div class="msg">
				<h1 id="dd">&nbsp &nbsp &nbsp&nbsp &nbsp &nbspSend Us a Message</h1>
				<br>
				<br>
				<div class="empty">
					<form action="">
						<input class="input" type="text" placeholder="Full Name" required><br>
						<br> <input class="input" type="email"
							placeholder="E-Mail Address" required><br>
						<br> <input class="input" type="text" placeholder="Subject"
							required><br>
						<br> <input class="input" rows="3" type="text"
							placeholder="Message" required><br>
						<br>

						<button type="submit" onclick="alert(' Your Message Has Been Sended Successfully')" value="reset">
							<h3>Send Message</h3>
						</button>
					</form>

					<div class="call">
						<img id="call-logo" src="img/logo.png" alt="">
						<hr>
						<a class="calling" href="tel:9119547554">
							<div class="callbut">
								<h1>
									&nbsp&nbsp&nbsp <img class="svg-call"
										src="img/phone-solid.svg" alt="">Call Now
						</a>
						</h1>
					</div>
				</div>
			</div>

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
