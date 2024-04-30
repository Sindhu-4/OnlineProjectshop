
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Sign up</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
    <form action="signup_action.jsp" method="post">
    <input type="text" name="name" placeholder="Enter Name" required>
    <input type="email" name="email" placeholder="Enter email" required>
    <input type="number" name="mobilenumber" placeholder="Enter Mobile Number" required>
    <select name="securityQuetions" required>
     <option value="what is your firstcar?">What is your first car</option>
     <option value="what is your elementaryschool name?">what is your elementary school name?</option>
     <option value="where were you born">where were you born</option>
    </select>
    <input type="text" name="answer" placeholder="Enter answer" required>
        <input type="password" name="password" placeholder="Enter password" required>
    <input type="submit" value="signup">
    </form>
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whysign'>
  <%
  String msg=request.getParameter("msg");
  if("valid".equals(msg))
  {
  %>
<h1>Successfully Registered</h1>
<%} %>
<% 
if("invalid".equals(msg))
{ 
%>
<h1>Some thing Went Wrong! Try Again !</h1>
<% } %>
    <h2>Online Shopping</h2>
    <p>The Online Shopping System is the application that allows the users to shop online without going to the shops to buy them.</p>
  </div>
</div>

</body>
</html>