<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
try 
{
Connection con=ConnectionProvider.getCon();
Statement st=con.createStatement();
String q1="create table users(name varchar(100),email varchar(100)primary key,mobilenumber bigint,securityQuetions varchar(200),answer varchar(200),password varchar(100),address varchar(500),city varchar(500),state varchar(100),country varchar(100))";
String q2="create table product(id int,name varchar(500),category varchar(100),price int,active varchar(100))";
String q3="create table cart(product_id int,email varchar(100),quantity int,price int,total int,address varchar(500),city varchar(500),state varchar(100),country varchar(100),mobilenumber bigint,orderDate varchar(100),deliveryDate varchar(100),paymentMethod varchar(100),transctionId varchar(100),status varchar(10))";
String q4="alter table cart add city varchar(500)";
String q5="create table message(id int AUTO_INCREMENT,email varchar(100),subject varchar(100),body varchar(1000),PRIMARY KEY(id))";

//System.out.println(q1);
//System.out.println(q2);
//System.out.println(q3);
//System.out.println(q4);
System.out.println(q5);

// st.execute(q1);
 //st.execute(q2);
// st.execute(q3);
//st.execute(q4);
st.execute(q5);

 System.out.print("Table created");
 con.close();
} 
catch(Exception e)
{
	System.out.print(e);
}
 
%>


