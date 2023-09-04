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
String s1=request.getParameter("name");
String s2=request.getParameter("pwd");
String s3=request.getParameter("email");
String s4=request.getParameter("address");
String s5=request.getParameter("gender");
String s6=request.getParameter("phone");
String s7=request.getParameter("state");
String s8=request.getParameter("adhar");
String s9=request.getParameter("date");
System.out.println(s1);
System.out.println(s2);
System.out.println(s3);
System.out.println(s4);
System.out.println(s5);
System.out.println(s6);
System.out.println(s7);
System.out.println(s8);
System.out.println(s9);


try{
	Class.forName("com.mysql.jdbc.Driver");
	 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hostel", "root", "root");
		 PreparedStatement pst=con.prepareStatement("insert into reg(name,pwd,email,address,gender,phone,state,adhar,date) values(?,?,?,?,?,?,?,?,?)");
pst.setString(1,s1);
pst.setString(2,s2);
pst.setString(3,s3);
pst.setString(4,s4);
pst.setString(5,s5);
pst.setString(6,s6);
pst.setString(7,s7);
pst.setString(8, s8);
pst.setString(9,s9);
pst.executeUpdate();
response.sendRedirect("user.jsp?msg=your registration is completed successfully");

	
}catch(Exception e){
	e.printStackTrace();
}


%>
</body>
</html>