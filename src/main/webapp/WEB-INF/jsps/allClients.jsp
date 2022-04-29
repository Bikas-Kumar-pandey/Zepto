<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Client</title>
</head>
<body>

<div>
<a href="lead">New Lead</a>
<a href="home">Home</a>
</div>

<h2>All Client Details Search Result</h2>
<table border="1">
<tr>
<th>id</th>
<th>First Name</th>
<th>Last Name</th>
<th>Email</th>
<th>Mobile</th>

<th>Model</th>
<th>Date</th>
<th>Amount</th>
<th>Tax</th>
<th>Tip</th>
<th>Paid</th>

 </tr>
 
 <c:forEach items="${client}" var="client">
 <tr>
 <td> ${client.id}</td>
  <td> ${client.firstName} </td>
   <td>${client.lastName} </td>
    <td>${client.email} </td>
    <td>${client.mobile} </td>
     
     <td>${client.model} </td>
     <td>${client.date} </td>
     <td>${client.amount} </td>
     <td>${client.tax} </td>
     <td>${client.tip} </td>
     <td>${client.modes} </td>
     </tr>

</c:forEach>

</table>

</body>
</html>