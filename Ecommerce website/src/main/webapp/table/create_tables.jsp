<%@page import="projectjdbc.connecting"%>
<%@page import="java.sql.*"%>
<%
try
{
Connection con=connecting.getCon();
Statement st=con.createStatement();
String q1="create table user(username varchar(100),email varchar(100)primary key,password varchar(100),confirm_password varchar(100),Address varchar(200))";
String q2="create table products(id varchar(100),name varchar(200),category varchar(200),price varchar(200),active varchar(100))";
System.out.println(q1);
System.out.println(q2);
//st.execute(q1);
st.execute(q2);
System.out.println("table is created");
con.close();
}
catch(Exception e)
{
System.out.println(e);
}
%>