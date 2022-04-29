<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Leads</title>
</head>
<body>
<a href="home">Home</a>
	<h2>Create New Leads Here...!</h2>
	<form action="save" method="post">
		<pre>
First Name: <input type="text" name="firstName" required />
Last Name : <input type="text" name="lastName" required />
Email     : <input type="text" name="email" required />
Mobile    : <input type="text" name="mobile" required />
Lead Source: <select name="leadSource" required>
<option>   </option> 
      <option value="news paper"> News Paper </option> 
      <option value="online"> Online </option> 
      <option value="Radio"> Radio </option> 
      <option value="Tv Commercial"> Tv Commercial </option>
      <option value="friends"> Friends </option> 
       <option value="family"> Family </option>
       </select>
       <input type="submit" value="save" />
     </pre>
	</form>
	${msg};

</body>
</html>