<%@page import="projectjdbc.connecting"%>
<%@page import="java.sql.*"%>
<%
String username=request.getParameter("username");
String email=request.getParameter("email");
String password=request.getParameter("password");
String confirm_password=request.getParameter("confirm_password");
String Address="";
try
{
	Connection con=connecting.getCon();
	PreparedStatement ps=con.prepareStatement("insert into user values(?,?,?,?,?)");
	ps.setString(1, username);
	ps.setString(2, email);
	ps.setString(3, password);
	ps.setString(4, confirm_password);
	ps.setString(5, Address);
	ps.executeUpdate();
	response.sendRedirect("signup.jsp?msg=valid");
}
catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("signup.jsp?msg=invalid");
}
%>