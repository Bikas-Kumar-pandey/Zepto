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
<header>
<a href="home">Home</a>
<a href="lead">New Lead</a>
<a href="getContacts">Contacts</a>
</header>

<h2>All Leads Details</h2>
<table border="1">
<tr>
<th>id</th>
<th>First Name</th>
<th>Last Name</th>
<th>Email</th>
<th>Mobile</th>
<th>Lead Source</th>
<th>Billing</th>
 </tr>
 
 <c:forEach items="${leads}" var="leads">
 <tr>
 <td> ${leads.id}</td>
  <td><a href="getLead?id=${leads.id}"> ${leads.firstName}</a> </td>
   <td>${leads.lastName} </td>
    <td>${leads.email} </td>
    <td>${leads.mobile} </td>
     <td>${leads.leadSource} </td>
     <td><a href="leadsbilling?id=${leads.id}">bill</a>
     </tr>

</c:forEach>

</table>

</body>
</html>