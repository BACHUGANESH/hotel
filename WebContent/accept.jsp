<%@page import="java.sql.*" %>
<%String id=request.getParameter("id"); 
String status="Accepted";
%>
<%
Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hostel","root","root");
	PreparedStatement ps=con.prepareStatement("update reg set status=? where id=?");
	ps.setString(1,status);
	ps.setString(2,id);
	ps.executeUpdate();
response.sendRedirect("view.jsp?Accepted Successful");

%>