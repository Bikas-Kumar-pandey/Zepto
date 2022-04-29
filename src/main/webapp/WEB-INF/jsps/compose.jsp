<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Compose</title>
</head>
<body>
<h2>Compose Email</h2>
<form action="triggerEmailSending" method="post">
<pre>
To : <input type="text" name="email" value="${email}">
subject :<input type="text" name="subject"/>
Compose :<textarea name="message" rows="10" cols="50"/> </textarea>

<input type="submit" value="submit"/>

</pre>
</form>
${msg};

</body>
</html>