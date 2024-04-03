<%@ include file="connect.jsp" %>
<%@ page import="java.sql.*"%>
<%

     	         String email = request.getParameter("email");
	 	 String pass = 	request.getParameter("pass");
	 	 String type = 	request.getParameter("type");

		  
		 if(type.equalsIgnoreCase("Upload file"))
		 {
			  PreparedStatement pst=connection.prepareStatement("select * from staff where email=? and password=?");
                         
                          pst.setString(1,email);
                          pst.setString(2,pass);
                          ResultSet rs1 =pst.executeQuery();
   
			 if(rs1.next())
			 {
				 session.setAttribute("staff_firstname", rs1.getString("firstname"));
				 session.setAttribute("staff_lastname", rs1.getString("lastname"));
				 session.setAttribute("staff_username", rs1.getString("username"));
				 session.setAttribute("staff_email", rs1.getString("email"));
				 session.setAttribute("staff_branch", rs1.getString("branch"));
				 session.setAttribute("staff_id", rs1.getString("id"));
				//response.sendRedirect("Staff_OTP.jsp");
				 
				response.sendRedirect("StaffHome.jsp");
				 
				
			 }
			 else
			 {
				   %>
			    	
			    	<script type="text/javascript">
			    	
			    	window.alert("Wrong Email & Password");
			    	window.location="Login.jsp";

					</script>
			    	
			    	
			    	<%
			 }
			 
			 
		 }		 
	
		 if(type.equalsIgnoreCase("view data"))
		 {
			  PreparedStatement pst=connection.prepareStatement("select * from staff where email=? and password=?");
                          
                          pst.setString(1,email);
                          pst.setString(2,pass);
                          ResultSet rs1 =pst.executeQuery();

			 if(rs1.next())
			 {
				 session.setAttribute("staff_firstname", rs1.getString("firstname"));
				 session.setAttribute("staff_lastname", rs1.getString("lastname"));
				 session.setAttribute("staff_username", rs1.getString("username"));
				 session.setAttribute("staff_email", rs1.getString("email"));
				 session.setAttribute("staff_branch", rs1.getString("branch"));
				 session.setAttribute("staff_id", rs1.getString("id"));
				//response.sendRedirect("Staff_OTP.jsp");
				 
				response.sendRedirect("Home.jsp");
				 
				
			 }
			 else
			 {
				   %>
			    	
			    	<script type="text/javascript">
			    	
			    	window.alert("Wrong Email & Password");
			    	window.location="Login.jsp";

					</script>
			    	
			    	
			    	<%
			 }
			 
			 
		 }		 
	
		 
		 
	
%>