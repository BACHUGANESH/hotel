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
		String s1 = request.getParameter("name");
		String s2 = request.getParameter("room");
		String s3 = request.getParameter("vacancy");
		String s4 = request.getParameter("cost");
		String s5 = request.getParameter("card");
		String s6 = request.getParameter("cname");
		String s7 = request.getParameter("adhar");
		String s8 = request.getParameter("cvv");
		//String s9 = request.getParameter("id1");
		String s9 = session.getAttribute("id").toString();
		System.out.println(s9+"==============");
		String book = session.getAttribute("book").toString();
		int vac = Integer.parseInt(s3);
		int book1 = Integer.parseInt(book);
		int v = vac - 1;
		int b = book1 + 1;
		System.out.println(v + "       " + b);
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hostel", "root", "root");
			PreparedStatement pst = con.prepareStatement(
					"insert into booking(name,room,vacancy,cost,card,cname,adhar,cvv) values(?,?,?,?,?,?,?,?)");
			pst.setString(1, s1);
			pst.setString(2, s2);
			pst.setString(3, s3);
			pst.setString(4, s4);
			pst.setString(5, s5);
			pst.setString(6, s6);
			pst.setString(7, s7);
			pst.setString(8, s8);

			pst.executeUpdate();
			PreparedStatement pst1 = con.prepareStatement("update room set vacancy=?, booked=? where id=?");
			pst1.setInt(1, v);
			pst1.setInt(2, b);
			pst1.setString(3, s9);
			pst1.executeUpdate();

			response.sendRedirect("view1.jsp?msg=your inserted is completed successfully");

		} catch (Exception e) {
			e.printStackTrace();
		}
	%>
</body>
</html>