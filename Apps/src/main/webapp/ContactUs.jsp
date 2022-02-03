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
	display: inline-block;
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

.container {
	width: 85%;
	background: #fff;
	border-radius: 6px;
	padding: 20px 60px 30px 40px;
	box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
}

.container .content {
	display: flex;
	align-items: center;
	justify-content: space-between;
}

.container .content .left-side {
	width: 25%;
	height: 100%;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	margin-top: 15px;
	position: relative;
}

.content .left-side::before {
	content: '';
	position: absolute;
	height: 70%;
	width: 2px;
	right: -15px;
	top: 50%;
	transform: translateY(-50%);
	background: #afafb6;
}

.content .left-side .details {
	margin: 14px;
	text-align: center;
}

.content .left-side .details i {
	font-size: 30px;
	color: #3e2093;
	margin-bottom: 10px;
}

.content .left-side .details .topic {
	font-size: 18px;
	font-weight: 500;
}

.content .left-side .details .text-one, .content .left-side .details .text-two
	{
	font-size: 14px;
	color: #afafb6;
}

.container .content .right-side {
	width: 75%;
	margin-left: 75px;
}

.content .right-side .topic-text {
	font-size: 23px;
	font-weight: 600;
	color: #3e2093;
}

.right-side .input-box {
	height: 50px;
	width: 100%;
	margin: 12px 0;
}

.right-side .input-box input, .right-side .input-box textarea {
	height: 100%;
	width: 100%;
	border: none;
	outline: none;
	font-size: 16px;
	background: #F0F1F8;
	border-radius: 6px;
	padding: 0 15px;
	resize: none;
}

.right-side .message-box {
	min-height: 110px;
}

.right-side .input-box textarea {
	padding-top: 6px;
}

.right-side .button {
	display: inline-block;
	margin-top: 12px;
}

.right-side .button input[type="button"] {
	color: #fff;
	font-size: 18px;
	outline: none;
	border: all;
	padding: 6px 10px;
	border-radius: 6px;
	background: #3e2093;
	cursor: pointer;
	transition: all 0.3s ease;
}

.button input[type="button"]:hover {
	background: #5029bc;
}

@media ( max-width : 950px) {
	.container {
		width: 90%;
		padding: 30px 40px 40px 35px;
	}
	.container .content .right-side {
		width: 75%;
		margin-left: 55px;
	}
}

@media ( max-width : 820px) {
	.container {
		margin: 40px 0;
		height: 100%;
	}
	.container .content {
		flex-direction: column-reverse;
	}
	.container .content .left-side {
		width: 100%;
		flex-direction: row;
		margin-top: 40px;
		justify-content: center;
		flex-wrap: wrap;
	}
	.container .content .left-side::before {
		display: none;
	}
	.container .content .right-side {
		width: 100%;
		margin-left: 0;
	}
}
</style>
</head>
<body>

	<div class="navbar">
		<a href="/Apps/HomePage.jsp">Home</a> <a href="/Apps/AboutUs.jsp">About
			Us</a> <a href="/Apps/FAQ.jsp">FAQ</a> <a href="/Apps/ContactUs.jsp"
			class="active">Contact Us</a>
			<a href="/Apps/AddPage.jsp">Add Car</a>
	</div>

	<div class="container">
		<div class="content">
			<div class="left-side">
				<div class="address details">
					<i class="fas fa-map-marker-alt"></i>
					<div class="topic">Address</div>
					<div class="text-one">Surkhet, NP12</div>
					<div class="text-two">Birendranagar 06</div>
				</div>
				<div class="phone details">
					<i class="fas fa-phone-alt"></i>
					<div class="topic">Phone</div>
					<div class="text-one">+91*******00</div>
					<div class="text-two">+91*******00</div>
				</div>
				<div class="email details">
					<i class="fas fa-envelope"></i>
					<div class="topic">Email</div>
					<div class="text-one">someone@gmail.com</div>
					<div class="text-two">someone@gmail.com</div>
				</div>
			</div>
			<div class="right-side">
				<div class="topic-text">Send us a message</div>
				<p>Enter your details to receive call back from us. Write your
					feedback, suggestions or query in Description box.</p>
				<form action="#">
					<div class="input-box">
						<input type="text" placeholder="Enter your name">
					</div>
					<div class="input-box">
						<input type="text" placeholder="Enter your email">
					</div>
					<div class="input-box message-box">
						<input type="text" placeholder="Description box">
					</div>
					<div class="button">
						<input type="button" value="Send">
					</div>
				</form>
			</div>
		</div>
	</div>


</body>
</html>