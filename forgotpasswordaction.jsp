<%@page import="projectdemo.connections"%>
<%@page import="java.sql.*"%>
<%
String email=request.getParameter("email");
String Mobilenumber=request.getParameter("Mobilenumber");
String Securityquestion=request.getParameter("Securityquestion");
String Answer=request.getParameter("Answer");
String Newpassword=request.getParameter("Newpassword");
int check=0;
try
{
	Connection con=connections.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from users where email='"+email+"' and Mobilenumber='"+Mobilenumber+"' and Securityquestion='"+Securityquestion+"' and Answer='"+Answer+"'");
	while(rs.next())
	{
		check=1;
		st.executeUpdate("update users set password='"+Newpassword+"' where email='"+email+"'");
		response.sendRedirect("forgotPassword.jsp?msg=done");
	}
	if(check==0)
	{
		response.sendRedirect("forgotPassword.jsp?msg=invalid");
	}
}
catch(Exception e)
{
	System.out.println(e);
	
}
%>
