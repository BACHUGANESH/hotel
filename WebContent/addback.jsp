<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String s1=request.getParameter("room");
String s2=request.getParameter("vacancy");
String s3=request.getParameter("cost");
System.out.println(s1);
System.out.println(s2);
System.out.println(s3);

try{
	Class.forName("com.mysql.jdbc.Driver");
	 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hostel", "root", "root");
		 PreparedStatement pst=con.prepareStatement("insert into room(room,vacancy,cost) values(?,?,?)");
pst.setString(1,s1);
pst.setString(2,s2);
pst.setString(3,s3);

pst.executeUpdate();
response.sendRedirect("add.jsp?msg=your insertion is completed successfully");

	
}catch(Exception e){
	e.printStackTrace();
}


%>
</body>
</html>