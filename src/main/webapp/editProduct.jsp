<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="adminHeader.jsp" %>

<html>
<head>
<link rel="stylesheet" href="css/addNewProduct-style.css">
<title>Edit Product</title>
<style>
.back
{
  color: blue;
  margin-left: 2.5%
}
</style>
</head>
<body>
 <h2><a class="back" href="allProductEditProduct.jsp"><i class='fas fa-arrow-circle-left'> Back</i></a></h2>
 
 <%
String msg=request.getParameter("msg");
if("done".equals(msg))
{
%>
<h3 class="alert">Product Updated Successfully!</h3>
<%} %>
<%
if(("wrong".equals(msg)))
{
%>
<h3 class="alert">Some thing went wrong! Try Again!</h3>
<%}%>
 
 <% 
 String id=request.getParameter("id");
 //String price=request.getParameter("price");
 try
 {
    Connection con=ConnectionProvider.getCon();
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select * from product where id is null");
    while(rs.next())
   {
 %>
<form action="editProductAction.jsp" method="post">
<h3 style="color: blue; text-align: center;">Product ID:<%out.println(id); %> </h3>
<input type="hidden" name="id" value="<% out.println(id);%>">
<div class="left-div">
 <h3>Enter Name </h3>
<input class="input-style" type="text" name="name" value="<%=rs.getString(2)%>" required>
<hr>
</div>

<div class="right-div">
<h3>Enter Category</h3>
<input class="input-style" type="text" name="category" value="<%=rs.getString(3)%>" required>

<hr>
</div>

<div class="left-div">
<h3>Enter Price:</h3>
<input class="input-style" type="number" name="price" value="<%=rs.getString(4)%>" required>

<hr>
</div>

<div class="right-div">
<h3>Active</h3>
<select class="input-style" name="active">
<option value="Yes">Yes</option>
<option value="No">No</option>
</select>

 <hr>
</div>
<button class="button">Save<i class="far fa-arrow-alt-circle-right"></i>
<button class="button">Remove<i class="far fa-arrow-alt-circle-right"></i>
</button>
</form>
<%
 }
 }
 catch(Exception e)
 {
	System.out.println(e); 
 }
%>

</body>
</html>