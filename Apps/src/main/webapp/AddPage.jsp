<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">
 {
	box-sizing: border-box;
}

/* Add padding to containers */
.container {
	padding: 16px;
	background-color: white;
}

input[type=text], input[type=password] {
	width: 100%;
	padding: 15px;
	margin: 5px 0 22px 0;
	display: inline-block;
	border: none;
	background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
	background-color: #ddd;
	outline: none;
}

/* Overwrite default styles of hr */
hr {
	border: 1px solid #f1f1f1;
	margin-bottom: 25px;
}

.Addbtn {
	background-color: blue;
	color: white;
	padding: 16px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
	opacity: 0.5;
}

.Addbtn:hover {
	background-color: #00008B;
	color: aliceblue;
	opacity: 0.7;
}
</style>








</head>
<body>
<h1>Add Car</h1>
	<p>Please fill this form to add car in Database.</p>
	<hr>
	<div class="container">
		<form action="addPageServlet" method="post">
			<p>Please fill this form to Add car in Database.</p>
			<hr>


			Car Name:<input type="text" name="carname" /><br /> 
			<br /> 
			Car Price:<input type="text" name="carprice" /><br /> 
			<br /> 
			Mileage:<input type="text" name="mileage" /><br /> 
			<br />
			Fuel Type:<input type="text" name="fueltype" /><br /> 
			<br /> 
			Transmission:<input type="text" name="transmission" /><br /> 
			<br /> 
			Seating Capacity:<input type="text" name="seatingcap" /><br /> 
			<br /> 
			<input type="submit" value="Add" class="Addbtn"  />
		</form>
		<p>
			Go back to Home page, click <a href="/Apps/HomePage.jsp">Home</a>
			here
		</p>
	</div>
</body>
</html>