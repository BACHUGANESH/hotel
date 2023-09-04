<%@page import="java.sql.*" %>
<%
String uname = request.getParameter("name");
String pass = request.getParameter("pwd");
if(uname.equals("admin")&&pass.equals("admin"))
{
	response.sendRedirect("ahome.jsp?msg=Login Successful");
}
else
{
	response.sendRedirect("admin.jsp?msg=Please enter valid credentials");
}
%>
