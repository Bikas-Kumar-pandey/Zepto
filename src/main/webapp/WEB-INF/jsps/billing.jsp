<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Billing</title>
</head>
<body>
<form action="paid" method="post">
<div>
<a href="lead">New Lead</a>
<a href="home">Home</a>
<a href="allClientDatails">All Clients</a>
</div>

<h2>Bill Details..</h2>
<table border="1">
<tr>
<th>id</th>
<th>First Name</th>
<th>Last Name</th>
<th>Email</th>
<th>Mobile</th>
 </tr>
 
 <tr>
 <td> ${lead.id}</td>
  <td><input type="text" name="firstName" value="${lead.firstName}" readonly></td> 
   <td><input type="text" name="lastName" value="${lead.lastName}" readonly> </td>
    <td><input type="text" name="email" value="${lead.email}" readonly> </td>
    <td><input type="text" name="mobile" value="${lead.mobile}" readonly> </td>
     </tr>
</table>
<br><br><br><br><br>
<hr>

<table>
<div>
Model:<select name="model" required>
<option>   </option> 
      <option value="Ferrari"> Ferrari </option> 
      <option value="Bmw"> Bmw </option> 
      <option value="Benz"> Benz </option> 
      <option value="Hia Buzza"> Hia Buzza </option>
      <option value="Alto"> Alto </option> 
       <option value="Zeep"> Zeep </option>
  </select>
  Date<input type="date" name="date"><br><br>
  </div>
  
  <amount>
  Amount<input type="number" name="amount">
  Tips<input type="number" name="tip" value="0"><br><br><br>
  modes of Payment<select name="pay" required>
  <option></option>
  <option value="cash"> Cash </option>
   <option value="cash"> Card </option>
    <option value="cash"> Check </option>
  </select>
  <amount><br><br><br>
  <input type="submit" value="submit">
</table>
</form>
${msg};
</body>
</html>