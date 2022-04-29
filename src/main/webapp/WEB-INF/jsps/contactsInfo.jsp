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

<header>
<form style="text-align:center" action="sendEmail" method="post">
<input type="hidden" name="email" value=" ${contacts.email}"/>
<input type="submit" value="send mail"> 
</form>
</header> 

<h2> Contacts Details...</h2>
First Name: ${contacts.firstName};<br>
Last Name :  ${contacts.lastName};<br>
Email     :  ${contacts.email};<br>
Mobile    :  ${contacts.mobile};<br>
Lead Source: ${contacts.leadSource};<br>

</body>
</html>