<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: "Poppins", sans-serif;
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

.accordion {
	background-color: #eee;
	color: #444;
	cursor: pointer;
	padding: 18px;
	width: 100%;
	border: none;
	text-align: left;
	outline: none;
	font-size: 15px;
	transition: 0.4s;
}

.active, .accordion:hover {
	background-color: #ccc;
}

.panel {
	padding: 0 18px;
	display: none;
	background-color: white;
	overflow: hidden;
}
</style>
</head>
<body>

	<div class="navbar">
		<a href="/Apps/HomePage.jsp">Home</a> 
		<a href="/Apps/AboutUs.jsp">About Us</a> 
		<a href="/Apps/FAQ.jsp" class="active">FAQ</a> 
		<a href="/Apps/ContactUs.jsp" class="right">Contact Us</a>
		<a href="/Apps/AddPage.jsp">Add Car</a>
			
	</div>

	<button class="accordion">Do you provide spare tyre with cars
		?</button>
	<div class="panel">
		<p>Best suited answer will be displayed soon.</p>
	</div>
	<button class="accordion">Do you provide basic toolkit with
		cars ?</button>
	<div class="panel">
		<p>Best suited answer will be displayed soon.</p>
	</div>
	<button class="accordion">How is the after sale service ?</button>
	<div class="panel">
		<p>Best suited answer will be displayed soon.</p>
	</div>
	<button class="accordion">Does FAQ Section Matters In Website?</button>
	<div class="panel">
		<p>Best suited answer will be displayed soon.</p>
	</div>
	<button class="accordion">How To Create a Light FAQ Element?</button>
	<div class="panel">
		<p>Best suited answer will be displayed soon.</p>
	</div>




	<script>
		var acc = document.getElementsByClassName("accordion");
		var i;

		for (i = 0; i < acc.length; i++) {
			acc[i].addEventListener("click", function() {
				this.classList.toggle("active");
				var panel = this.nextElementSibling;
				if (panel.style.display === "block") {
					panel.style.display = "none";
				} else {
					panel.style.display = "block";
				}
			});
		}
	</script>

</body>
</html>