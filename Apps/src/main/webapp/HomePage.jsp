<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "mydatabase";
String userid = "root";
String password = "ajayonmysql";
try {
	Class.forName(driver);
} catch (ClassNotFoundException e) {
	e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>




<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
* {
	box-sizing: border-box;
}

/* Style the body */
body {
	font-family: Arial, Helvetica, sans-serif;
	margin: 0;
}

/* Header/logo Title */
.header {
	padding: 30px;
	text-align: center;
	background: burlywood;
	color: #FFFFFF;
}

/* Increase the font size of the heading */
.header h1 {
	font-size: 40px;
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
	color: #FFFFFF;
}

/* Main column */
.main {
	display: block;
}

/* Fake image, just for this example */
.carimg {
	background-color: #c1e3f2;
	border-style: groove;
	height: 300px;
	width: 300px;
	padding: 20px;
}

.carimg:hover {
	background-color: #ffebd8;
}

img {
	height: 258px;
	width: 258px;
}

/* Create two equal columns that floats next to each other */
.column {
	float: left;
	width: 35%;
	padding: 50px;
	margin-left: 100px;
	border-style: solid;
	border: #FFFFFF;
}

.column:hover {
	background-color: #FFFFFF;
	border-style: outset;
}

.row {
	width: 100%;
	padiing: 20px;
}

/* Clear floats after the columns */
.row:after {
	content: "";
	display: table;
	clear: both;
}

.footer {
	clear: both;
	position: relative;
	height: 50px;
	margin-top: -200px;
	    padding: 1px; 
		text-align: center; 
	background: #404040;
}
.fa {
	padding: 20px;
	font-size: 20px;
	width: 30px;
	text-align: center;
	text-decoration: none;
	margin: 0px 2px 0px 5px;
	border-radius: 50%;
	opacity: 0.5;
}

.fa:hover {
	opacity: 1;
	 text-shadow: 0 0 5px #FFFFFF;
	
	
}

.fa-facebook {
	color: #FFFFFF;
}

.fa-twitter {
	color: #FFFFFF;
}

.fa-google {
	color: #FFFFFF;
}

.fa-linkedin {
	color: #FFFFFF;
}

.fa-youtube {
	color: #FFFFFF;
}

.fa-instagram {
	color: #FFFFFF;
}
</style>


</head>
<body>

	<div>
		<div class="header">
			<h1>Cars</h1>
			<p>
				A <b>responsive</b> website created by me.
			</p>
		</div>
	</div>

	<div class="navbar">
		<a href="/Apps/HomePage.jsp" class="active">Home</a> <a
			href="/Apps/AboutUs.jsp">About Us</a> <a href="/Apps/FAQ.jsp">FAQ</a>
		<a href="/Apps/ContactUs.jsp" class="right">Contact Us</a> <a
			href="/Apps/AddPage.jsp">Add Car</a> <a href="/Apps/login.html">Log
			Out</a>
			

	</div>
	<br>

	<div class="page">

		<div class="main">
			<h2>Top selling car</h2>
			<%
			try {
				connection = DriverManager.getConnection(connectionUrl + database, userid, password);
				statement = connection.createStatement();
				String sql = "select * from cars_detail";
				resultSet = statement.executeQuery(sql);
				while (resultSet.next()) {
					int currentPosition = resultSet.getRow();
			%>

			<%
			if (currentPosition % 2 == 0) {
			%>
			<div class="row">
				<%
				}
				%>

				<div class="column">
					<h3><%=resultSet.getString("CarName")%></h3>

					<div class="carimg">
						<img src="images/CAR.jpg">
					</div>
					<br>
					<h4>
						Price: Rs.<%=resultSet.getString("CarPrice")%></h4>
					<p>
						Mileage:
						<%=resultSet.getString("Mileage")%>
						Kmpl
					</p>
					<p>
						FuelType:
						<%=resultSet.getString("FuelType")%></p>
					<p>
						Transmission:
						<%=resultSet.getString("Transmission")%></p>
					<p>
						Seating Capacity:
						<%=resultSet.getString("SeatingCapacity")%></p>
				</div>

				<%
				if (currentPosition % 2 == 0) {
				%>
			</div>
			<%
			}
			%>
		</div>
		<%
		}
		connection.close();
		} catch (Exception e) {
		e.printStackTrace();
		}
		%>

		<br>



	</div>
	<br>
	<hr>
<footer>
	<div class="footer">
		<a href="#" class="fa fa-facebook"></a> <a href="#"
			class="fa fa-twitter"></a> <a href="#" class="fa fa-google"></a> <a
			href="#" class="fa fa-linkedin"></a> <a href="#"
			class="fa fa-youtube"></a> <a href="#" class="fa fa-instagram"></a>
	</div>
</footer>

</body>
</html>