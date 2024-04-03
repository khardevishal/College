<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%

String email = request.getParameter("email");
String pass = 	request.getParameter("pass");

	

	PreparedStatement pst=connection.prepareStatement("select * from student where email=? and password=?");
          pst.setString(1,email);
          pst.setString(2,pass);
	ResultSet rs1 = pst.executeQuery();
	 if(rs1.next())
	 {
		 session.setAttribute("student_firstname", rs1.getString("firstname"));
		 session.setAttribute("student_lastname", rs1.getString("lastname"));
		 session.setAttribute("student_username", rs1.getString("username"));
		 session.setAttribute("student_email", rs1.getString("email"));
		 //response.sendRedirect("Student_OTP.jsp");
		 
		response.sendRedirect("Home.jsp");
		 
		
	 }
	 else
	 {
		   %>
	    	
	    	<script type="text/javascript">
	    	
	    	window.alert("Wrong Email & Password");
	    	window.location="LoginS.jsp";

			</script>
	    	
	    	
	    	<%
	 }
	 
	 




		 
	 
	


	 
	

%>