<%@ include file="connect.jsp" %>
<%



       String gender_type=request.getParameter("ptype");
	   String firstname=request.getParameter("firstname");
	   String middle=request.getParameter("middle");
	   String lastname=request.getParameter("lastname");
	   String username=request.getParameter("username");
	   String dob=request.getParameter("day")+"/"+request.getParameter("month")+"/"+request.getParameter("year");
	   String password=request.getParameter("password");
	   String email=request.getParameter("email");
	   String mobile=request.getParameter("mobile");
	   String addhar_no=request.getParameter("adhar");
	   String number=request.getParameter("number");
	   String city=request.getParameter("city");
	   String district=request.getParameter("district");
	   String prn_no=request.getParameter("prn_no");
	   String roll_no=request.getParameter("roll_no");
	   String address=request.getParameter("address");
	   String branch=request.getParameter("branch");
	   String class_year=request.getParameter("class");
	  
	   /*
	    ResultSet rs1 = connection.createStatement().executeQuery("select * from studentverification where prn_no='"+prn_no+"' && roll_no='"+roll_no+"' && email='"+email+"' ");
	   if(rs1.next())
	   {
		   */
       ResultSet rs = connection.createStatement().executeQuery("select * from student where email='"+email+"'");
       if(rs.next())
       {
    	   %>
	    	
	    	<script type="text/javascript">
	    	
	    	window.alert("Aready Register,Please Try New Account");
	    	window.location="Student.jsp";

			</script>
	    	
	    	
	    	<%
       }
       else
       {
    	   
    	   PreparedStatement ps = connection.prepareStatement("insert into student(gender_type,firstname,middle,lastname,username,dob,password,email,mobile,adhar_no,city,district,address,branch,class_year,prn_no,roll_no) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
    	   ps.setString(1,gender_type );
    	   ps.setString(2,firstname );
    	   ps.setString(3,middle );
    	   ps.setString(4,lastname );
    	   ps.setString(5,username );
    	   ps.setString(6,dob );
    	   ps.setString(7,password );
    	   ps.setString(8,email );
    	   ps.setString(9,mobile );
    	   ps.setString(10,addhar_no );
    	   ps.setString(11,city );
    	   ps.setString(12,district );
    	   ps.setString(13,address );
    	   ps.setString(14,branch );
    	   ps.setString(15,class_year);
    	   ps.setString(16,prn_no );
    	   ps.setString(17,roll_no );
    	   
    	   int count = ps.executeUpdate();
    	   
    	   if(count == 1)
    	   {
    		   %>
   	    	
   	    	<script type="text/javascript">
   	    	
   	    	window.alert("Added Successfully");
   	    	window.location="LoginS.jsp";

   			</script>
   	    	
   	    	
   	    	<%
    	   }
    	   else
    	   {
    		   %>
   	    	
   	    	<script type="text/javascript">
   	    	
   	    	window.alert("Added UnSuccessfully");
   	    	window.location="Student.jsp";

   			</script>
   	    	
   	    	
   	    	<%
    	   }
    	   
    	   
    	   
    	   
    	   
       }



   	/* } 
   	   else
   	   {
   		   
   		   %>
   	    	
   	    	<script type="text/javascript">
   	    	
   	    	window.alert("You are not autharized to Registeration to this Portal");
   	    	window.location="Student.jsp";

   			</script>
   	    	
   	    	
   	    	<%
   	   } */



%>