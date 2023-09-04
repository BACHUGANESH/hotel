<%@page import="java.sql.*"%>
<%
String name=request.getParameter("name");
String pass=request.getParameter("pwd");
System.out.println(name);
System.out.println(pass);
Connection con=null;
PreparedStatement pst=null;

try{
	
Class.forName("com.mysql.jdbc.Driver");
	 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hostel", "root", "root");
		 pst=con.prepareStatement("select * from reg where name=? and pwd=? and status='Accepted'");
	
pst.setString(1,name);
pst.setString(2,pass);
	ResultSet rs=pst.executeQuery();
	
if(rs.next()){
	session.setAttribute("name",name);

		   
	  response.sendRedirect("uhome.jsp?msg=login successfully");
		
	   }
     else
     {
		
		response.sendRedirect("user.jsp?msg=Invalid credentials. Please try again");
		
     }
	}
	catch(Exception e)
{
	e.printStackTrace();
}
%>