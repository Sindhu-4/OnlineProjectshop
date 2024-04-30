<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String email=request.getParameter("email");
String mobilenumber=request.getParameter("mobilenumber");
String securityQuetions=request.getParameter("securityQuetions");
String answer=request.getParameter("answer");
String newPassword=request.getParameter("newPassword");

int check=0;
try
{
 Connection con=ConnectionProvider.getCon();
 Statement st=con.createStatement();
 ResultSet rs=st.executeQuery("select * from users where email='"+email+"' and mobilenumber='"+mobilenumber+"' and securityQuetions='"+securityQuetions+"' and answer='"+answer+"' ");
 while(rs.next())
 {
	 check=1;
	 st.executeQuery("update users set password='"+newPassword+"' where email='"+email+"'");
	 response.sendRedirect("forgotpassword.jsp?msg=done");
 }
 if(check==0)
 {
	 response.sendRedirect("forgotpassword.jsp?msg=invalid");
 }
}
catch(Exception e)
{
	
}
%>