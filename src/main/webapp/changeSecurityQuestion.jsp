<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="changeDetailsHeader.jsp" %>
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Change Security Question</title>
</head>
<body>
<%
String msg=request.getParameter("msg");
if("done".equals(msg))
{
%>
<h3 class="alert">Your security Question successfully changed !</h3>
<%} %>
<% 
if("wrong".equals(msg))
{
%>
<h3 class="alert">Your Password is wrong!</h3>
<%} %>

<form action="changeSecurityQuetionAction.jsp" method="post">
<h3>Select Your New Securtiy Question</h3>
  <select class="input-style">
  <option value="what was your first car?">what was your first car?</option>
    <option value="what is name of your first pet?"></option>
    <option value="what is your elementary school?"></option>
  
  </select>
 <hr>
 <h3>Enter Your New Answer</h3>
 <input class="input-style" type="text" name="newAnswer" placeholder="Enter new Answer" required></input>
<hr>
<h3>Enter Password (For Security)</h3>
 <input class="input-style" type="text" name="password" placeholder="Enter password(For Security)" required></input>

<hr>
<button class="button" type="submit"> Save<i class='far fa-arrow-alt-circle-right'></i></button>
</form>
</body>
<br><br><br>
</html>