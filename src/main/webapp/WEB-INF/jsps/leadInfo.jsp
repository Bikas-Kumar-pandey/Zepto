<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Leads Info</title>
</head>
<body>
<a href="home">Home</a>

<header>
<form style="text-align:center" action="sendEmail" method="post">
<input type="hidden" name="email" value=" ${lead.email}"/>
<input type="submit" value="send mail"> 
</form>
</header> 

<form style="text-align:center" action="saveContacts" method="post">
<input type="hidden" name="id" value=" ${lead.id}"/>
<input type="submit" value="Convert"> 
</form>


<h2> Leads Details...</h2>
First Name: ${lead.firstName};<br>
Last Name :  ${lead.lastName};<br>
Email     :  ${lead.email};<br>
Mobile    :  ${lead.mobile};<br>
Lead Source: ${lead.leadSource};<br>

</body>
</html>