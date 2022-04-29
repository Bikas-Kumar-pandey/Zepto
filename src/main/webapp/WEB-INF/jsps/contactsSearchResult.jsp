<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Leads Result</title>
</head>
<body>

<div>
<a href="lead">New Lead</a>
<a href="home">Home</a>

</div>

<h2>All Contacts Details</h2>
<table border="1">
<tr>
<th>id</th>
<th>First Name</th>
<th>Last Name</th>
<th>Email</th>
<th>Mobile</th>
<th>Lead Source</th>
 </tr>
 
 <c:forEach items="${contact}" var="contact">
 <tr>
 <td> ${contact.id}</td>
  <td><a href="getContactByid?id=${contact.id}"> ${contact.firstName}</a> </td>
   <td>${contact.lastName} </td>
    <td>${contact.email} </td>
    <td>${contact.mobile} </td>
     <td>${contact.leadSource} </td>
     </tr>

</c:forEach>

</table>

</body>
</html>