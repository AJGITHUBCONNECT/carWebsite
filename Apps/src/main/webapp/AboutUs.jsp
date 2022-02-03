<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>
body {
	font-family: Arial, Helvetica, sans-serif;
	margin: 0;
}

html {
	box-sizing: border-box;
}

*, *:before, *:after {
	box-sizing: inherit;
}

.column {
	float: left;
	width: 33.3%;
	margin-bottom: 16px;
	padding: 0 8px;
}

.card {
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	margin: 8px;
}

.about-section {
	padding: 50px;
	text-align: center;
	background-color: #474e5d;
	color: white;
}

.container {
	padding: 0 16px;
}

.container::after, .row::after {
	content: "";
	clear: both;
	display: table;
}

.title {
	color: grey;
}

.button {
	border: none;
	outline: 0;
	display: inline-block;
	padding: 8px;
	color: white;
	background-color: #000;
	text-align: center;
	cursor: pointer;
	width: 100%;
}

.button:hover {
	background-color: #555;
}

@media screen and (max-width: 800px) {
	.column {
		width: 100%;
		display: block;
	}
	@media screen and (max-width: 400px) {
		.column {
			width: 50%;
			display: block;
		}
	}
}

.navbar {
	overflow: hidden;
	background-color: #333;
	position: sticky;
	position: -webkit-sticky;
	top: 0;
}

/* Style the navigation bar links */
.navbar a {
	float: left;
	display: block;
	color: white;
	text-align: center;
	padding: 14px 20px;
	text-decoration: none;
}

/* Change color on hover */
.navbar a:hover {
	background-color: #ddd;
	color: black;
}

/* Active/current link */
.navbar a.active {
	background-color: #666;
	color: white;
}
</style>

</head>
<body>

	<div class="navbar">
		<a href="/Apps/HomePage.jsp">Home</a> <a href="/Apps/AboutUs.jsp"
			class="active">About Us</a> <a href="/Apps/FAQ.jsp">FAQ</a> <a
			href="/Apps/ContactUs.jsp">Contact Us</a>
			<a href="/Apps/AddPage.jsp">Add Car</a>
	</div>
	<div class="about-section">
		<h1>About Us Page</h1>
		<p>Some text about who we are and what we do.</p>
		<p>Resize the browser window to see that this page is responsive
			by the way.</p>
	</div>

	<h2 style="text-align: center">Our Team</h2>
	<div class="row">
		<div class="column">
			<div class="card">
				<img src="images/CAR.jpg" alt="Jane" style="width: 100%">
				<div class="container">
					<h2>Name</h2>
					<p class="title">Title</p>
					<p>Some text that describes me</p>
					<p>name@Gmail.com</p>
					<p>
						<button class="button">Contact</button>
					</p>
				</div>
			</div>
		</div>

		<div class="column">
			<div class="card">
				<img src="images/CAR.jpg" alt="Mike" style="width: 100%">
				<div class="container">
					<h2>Name</h2>
					<p class="title">Title</p>
					<p>Some text that describes me</p>
					<p>name@Gmail.com</p>
					<p>
						<button class="button">Contact</button>
					</p>
				</div>
			</div>
		</div>

		<div class="column">
			<div class="card">
				<img src="images/CAR.jpg" alt="John" style="width: 100%">
				<div class="container">
					<h2>JName</h2>
					<p class="title">Title</p>
					<p>Some text that describes me</p>
					<p>name@Gmail.com</p>
					<p>
						<button class="button">Contact</button>
					</p>
				</div>
			</div>
		</div>
	</div>



</body>
</html>