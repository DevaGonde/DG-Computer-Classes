 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="ErroPage.jsp"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Home</title>
<link rel="stylesheet" href="Cources.css">
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
	<div class="container">

		<br>
		<br>
		<h1 class="text-strock upper header text-center red">basic
			computer courses</h1>
		<div class="basic ">
			<p>
				<br> <b class="upper yellow">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; A basic computer
					course typically covers the fundamental concepts and skills needed
					to use a computer effectively. Here are some topics that may be
					included in a basic computer course:</b> <br>
				<br> <b class="upper underline">Computer hardware:</b> <br>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; This includes
				learning about the different components of a computer such as the
				monitor, keyboard, mouse, CPU, and memory. <br>
				<br> <b class="upper underline">Operating system:</b> <br>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Students may learn
				about the basic features of a popular operating system such as
				Windows or MacOS, including file management,customization, and basic
				troubleshooting. <br>
				<br> <b class="upper underline">Word processing:</b> <br>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Students may learn
				how to use word processing software such as Microsoft Word or Google
				Docs to create and edit documents. <br>
				<br> <b class="upper underline">Spreadsheets:</b><br>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Students may learn
				how to use spreadsheet software such as Microsoft Excel or Google
				Sheets to create and manipulate spreadsheets for organizing and
				analyzing data. <br>
				<br> <b class="upper underline">Internet basics:</b><br>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; This includes
				learning about web browsers, search engines, email, and basic
				internet safety. <br>
				<br> <b class="upper underline">Digital citizenship:</b><br>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Students may learn
				about responsible online behavior, including topics such as cyber
				bullying, online privacy, and digital footprints. <br>
				<br> <b class="upper underline">Basic troubleshooting:</b><br>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Students may learn
				how to identify and solve common computer problems such as slow
				performance or software crashes. <br>
				<br> <b class="upper underline">Other software:</b> <br>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Students may learn
				about other types of software such as presentation software
				(e.g.Microsoft PowerPoint), graphic design software (e.g., Adobe
				Photoshop), or video editing software (e.g., iMovie). <br>
				<br> <b class="upper underline">Computer security:</b><br>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Students may learn
				about basic computer security practices such as creating strong
				passwords, installing antivirus software, and avoiding phishing
				scams. <br>
				<br> <b class="upper yellow">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Overall, a basic
					computer course is designed to provide students with the
					foundational knowledge and skills needed to use a computer
					effectively and safely. </b><br>

			</p>
			<br>
			<br>

			<div class="card">
				<div class="citem">
					<a class="hyper-none" href="CourseSelector?id=1"> <img
						class="iimg" src="img/mscit.jpg" alt=""> <!--image size= 220*200 px -->
						<p class="text-center shadow-text hyper-text">MS-CIT</p>
					</a>
				</div>

				<div class="citem">
					<a class="hyper-none" href="CourseSelector?id=2"> <img
						class="iimg" src="img/ccc.jpg" alt="">
						<p class="text-center  shadow-text hyper-text">CCC</p>
					</a>
				</div>

				<div class=" citem">
					<a class="hyper-none" href="CourseSelector?id=3">
						<img class="iimg" src="img/msoffices.jpg" alt="">
						<p class="text-center shadow-text  hyper-text">MS-Office</p>
					</a>
				</div>

				<div class="citem">
					<a class="hyper-none" href="CourseSelector?id=4">
						<img class="iimg" src="img/adv excel.png" alt="">
						<p class="text-center shadow-text  hyper-text">Advance Excel</p>
					</a>
				</div>

			</div>

		</div>


	</div>
	<br>
	<br>
	<hr>
	<hr>

	<br>
	<br>
	<h1 class="text-strock upper header text-center red">programming /
		coding languages</h1>
	<div class="programming">

		<p>
			<br> <b class="upper yellow">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Programming
				language courses are designed to teach students how to write code to
				create software applications, websites, and other digital products.
				Here are some topics that may be covered in programming language
				courses:</b><br>
			<br> <b class="upper underline"> Programming fundamentals:</b> <br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; This includes basic
			concepts of programming such as variables, data types, control
			structures, and functions.<br>
			<br> <b class="upper underline">Syntax and semantics:</b><br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Students will learn
			the syntax and semantics of the programming language they are
			studying. This includes the rules for writing code and the meaning of
			different commands and structures.<br>
			<br> <b class="upper underline">Data structures and
				algorithms:</b><br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; This includes
			learning how to organize and manipulate data in various ways using
			different data structures such as arrays, lists, and maps. Students
			may also learn about algorithms for solving problems and performing
			tasks efficiently.<br>
			<br> <b class="upper underline">Object-oriented programming:</b>
			<br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Students may learn
			about object-oriented programming (OOP), which is a programming
			paradigm that involves organizing code into reusable objects with
			properties and methods.<br>
			<br> <b class="upper underline">Web development:</b> <br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Students may learn
			how to use programming languages such as HTML, CSS, and JavaScript to
			create websites and web applications. <br>
			<br> <b class="upper underline">Mobile development:</b> <br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Students may learn
			how to use programming languages such as Java or Swift to create
			mobile applications for iOS or Android devices. <br>
			<br> <b class="upper underline">Database management:</b><br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Students may learn
			how to use programming languages to manage data in databases,
			including how to write queries to retrieve and manipulate data. <br>
			<br> <b class="upper underline">Frameworks and libraries:</b> <br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Students may learn
			how to use popular frameworks and libraries for their chosen
			programming language, such as React or Angular for web development. <br>
			<br> <b class="upper underline">Debugging and testing:</b><br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Students may learn
			how to identify and fix errors in their code and how to test their
			code to ensure it works as intended. <br>
			<br> <b class="upper yellow">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Overall,
				programming language courses are designed to provide students with
				the skills and knowledge needed to write code to create software
				applications and other digital products. Different programming
				languages are used for different purposes, so students may choose a
				course that aligns with their goals and Interests.</b> <br>

		</p>
		<br>
		<br>

		<div class="card">
			<div class="citem">
				<a class="hyper-none" href="CourseSelector?id=5"> <img
					class="iimg" src="img/c Lang img.png" alt="">
					<p class="text-center shadow-text  hyper-text">C Programming</p>
				</a>
			</div>

			<div class="citem">
				<a class="hyper-none" href="CourseSelector?id=6"> <img
					class="iimg" src="img/c++.jpg" alt="">
					<p class="text-center shadow-text  hyper-text">C++</p>
				</a>
			</div>

			<div class=" citem">
				<a class="hyper-none" href="CourseSelector?id=7"> <img
					class="iimg" src="img/python.jpg" alt="">
					<p class="text-center  shadow-text hyper-text">python</p>
				</a>
			</div>

			<div class="citem">
				<a class="hyper-none" href="CourseSelector?id=8"> <img
					class="iimg" src="img/Java.jpg" alt="">
					<p class="text-center shadow-text  hyper-text">Java</p>
				</a>
			</div>

		</div>

	</div>
	<br>
	<br>
	<hr>
	<hr>

	<br>
	<br>
	<h1 class="text-strock upper header text-center red">accounting
		courses</h1>
	<div class="accounting">

		<p>
			<br> <b class="upper yellow">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Accounting courses
				are designed to teach students the fundamental principles of
				financial accounting and how to use accounting tools and techniques
				to analyze and report financial data. Here are some topics that may
				be covered in accounting courses:</b><br>
			<br> <b class="upper underline">Financial accounting:</b> <br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; This includes
			learning the basic principles of financial accounting, such as how to
			prepare financial statements, record transactions, and calculate
			ratios. <br>
			<br> <b class="upper underline">Managerial accounting:</b><br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Students may learn
			about managerial accounting, which focuses on using financial data to
			make business decisions and plan for the future. <br>
			<br> <b class="upper underline">Taxation:</b><br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Students may learn
			about tax laws and how they affect financial reporting and
			decision-making. <br>
			<br> <b class="upper underline">Auditing:</b> <br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Students may learn
			about auditing, which involves reviewing financial statements and
			records to ensure accuracy and compliance with regulations. <br>
			<br> <b class="upper underline">Cost accounting:</b><br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Students may learn
			about cost accounting, which involves analyzing the costs of products
			and services to inform pricing decisions and optimize profitability.
			<br>
			<br> <b class="upper underline">Accounting software:</b><br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Students may learn
			how to use accounting software such as QuickBooks or Xero to record
			transactions, generate reports, and perform other accounting tasks. <br>
			<br> <b class="upper underline">Ethics and professional
				standards:</b><br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Students may learn
			about ethical principles and professional standards in the accounting
			profession, including issues related to financial reporting and
			conflicts of interest. <br>
			<br> <b class="upper underline">International accounting:</b> <br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Students may learn
			about accounting practices in different countries and how to prepare
			financial statements for multinational companies. <br>
			<br>

		</p>
		<br>
		<br>

		<div class="card">
			<div class="citem">
				<a class="hyper-none" href="CourseSelector?id=9">
					<img class="iimg" src="img/QUIK_TALLY.jpg" alt="">
					<p class="text-center shadow-text  hyper-text">Quick-Tally</p>
				</a>
			</div>

			<div class="citem">
				<a class="hyper-none" href="CourseSelector?id=10">
					<img class="iimg" src="img/Smarttally.jpg" alt="">
					<p class="text-center  shadow-text hyper-text">Smart-Tally</p>
				</a>
			</div>

			<div class=" citem">
				<a class="hyper-none"
					href="CourseSelector?id=11"> <img
					class="iimg" src="img/professional tally.jpg" alt="">
					<p class="text-center shadow-text  hyper-text">Professional-Tally</p>
				</a>
			</div>

			<div class="citem">
				<a class="hyper-none"
					href="CourseSelector?id=12"> <img
					class="iimg" src="img/diploma tally.jpg" alt="">
					<p class="text-center shadow-text  hyper-text">
						Accounting-Diploma</p>
				</a>
			</div>

		</div>

	</div>
	<br>
	<br>
	<hr>
	<hr>

	<br>
	<br>
	<h1 class="text-strock upper header text-center red">designing
		courses</h1>
	<div class="designing">

		<p>
			<br> <b class="upper yellow">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Computer designing
				courses are designed to teach students how to use computer software
				to create digital designs for a variety of applications, including
				graphic design, web design, and product design. Here are some topics
				that may be covered in computer designing courses:</b><br>
			<br> <b class="upper underline">Graphic design principles:</b><br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Students may learn
			about the principles of graphic design, including color theory,
			typography, and layout. <br>
			<br> <b class="upper  underline">Design software:</b><br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Students may learn
			how to use design software such as Adobe Photoshop, Illustrator, or
			InDesign to create digital designs.<br>
			<br> <b class="upper  underline">Web design:</b><br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Students may learn
			how to design and create websites using software such as Adobe
			Dreamweaver, WordPress, or Wix.<br>
			<br> <b class="upper underline"> User interface (UI) and
				user experience (UX) design:</b><br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Students may learn
			about designing user interfaces and experiences for software and
			applications, including creating wireframes, prototypes, and user
			testing.<br>
			<br> <b class="upper underline">3D modeling and animation:</b><br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Students may learn
			how to use 3D modeling software such as Blender or Autodesk Maya to
			create 3D designs and animations.<br>
			<br> <b class="upper underline">Product design:</b><br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Students may learn
			about designing products, including creating prototypes, using CAD
			(computer-aided design) software, and conducting user testing.<br>
			<br> <b class="upper underline">Digital marketing: </b><br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Students may learn
			about creating digital designs for marketing campaigns, including
			designing logos, creating social media graphics, and creating email
			templates.<br>
			<br> <b class="upper underline"> Portfolio development:</b><br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Students may learn
			how to develop a professional portfolio showcasing their design work
			and skills to potential employers or clients.</b><br>
			<br> <b class="upper yellow">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Overall, computer
				designing courses are designed to provide students with the skills
				and knowledge needed to use computer software to create digital
				designs for a variety of applications. The specific topics covered
				may vary depending on the course and the area of design focus.</b><br>


		</p>
		<br>
		<br>

		<div class="card">
			<div class="citem">
				<a class="hyper-none" href="CourseSelector?id=13"> <img
					class="iimg" src="img/photoshop.png" alt="">
					<p class="text-center shadow-text  hyper-text">PhotoShop</p>
				</a>
			</div>

			<div class="citem">
				<a class="hyper-none" href="CourseSelector?id=14"> <img
					class="iimg" src="img/autocad.jpg" alt="">
					<p class="text-center shadow-text  hyper-text">Auto Cad</p>
				</a>
			</div>

			<div class=" citem">
				<a class="hyper-none" href="CourseSelector?id=15">
					<img class="iimg" src="img/coral draw.jpg" alt="">
					<p class="text-center shadow-text  hyper-text">Coral-Draw</p>
				</a>
			</div>

			<div class="citem">
				<a class="hyper-none"
					href="CourseSelector?id=16"> <img
					class="iimg" src="img/desktop.jpg" alt="">
					<p class="text-center  shadow-text hyper-text">Desktop
						Publishing</p>
				</a>
			</div>

		</div>

	</div>
	<hr>
	<hr>

	

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
