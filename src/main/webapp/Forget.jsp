<%@ page import="com.*" %>
<%@ include file="connect.jsp" %>
<%
            String email = request.getParameter("email");
			ResultSet rs = connection.createStatement().executeQuery("select * from staff where email='"+email+"'");
			if(rs.next())
			{
				  if(Mail.setMail(email))
		             {
		            	%>
		     	    	
		     	    	<script type="text/javascript">
		     	    	
		     	    	window.alert("Your Mail is Reset, Please Check Your Mail....!!!!");
		     	    	window.location="Login.jsp";

		     			</script>
		     	    	
		     	    	
		     	    	<%
		             }
		             else
		             {
		            	   %>
			     	    	
			     	    	<script type="text/javascript">
			     	    	
			     	    	window.alert("Your Internet Speed is Very Slow....!!!!");
			     	    	window.location="Login.jsp";

			     			</script>
			     	    	
			     	    	
			     	    	<%
		            	 
		             }
			}
			else
			{
				   %>
	     	    	
	     	    	<script type="text/javascript">
	     	    	
	     	    	window.alert("Your Account is Not Regsiter, Please Create New Account");
	     	    	window.location="Login.jsp";

	     			</script>
	     	    	
	     	    	
	     	    	<%
			}

           


%>



