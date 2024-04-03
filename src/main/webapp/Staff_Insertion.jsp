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
	   String pan_no=request.getParameter("pan");
	   String city=request.getParameter("city");
	   String district=request.getParameter("district");
	   String pin_code=request.getParameter("pincode");
	   String address=request.getParameter("address");
	   String branch=request.getParameter("branch");
	   String class_year=request.getParameter("class");
	   String status="no";

	   /*
	    ResultSet rs1 = connection.createStatement().executeQuery("select * from staffverification where firstname='"+firstname+"' && lastname='"+lastname+"' && email='"+email+"' && pan_no='"+pan_no+"' ");
	   if(rs1.next())
	   {
		   */

       ResultSet rs = connection.createStatement().executeQuery("select * from staff where email='"+email+"'");
       if(rs.next())
       {
    	   %>
	    	
	    	<script type="text/javascript">
	    	
	    	window.alert("Aready Register,Please Try New Account");
	    	window.location="StaffReg.jsp";

			</script>
	    	
	    	
	    	<%
       }
       else
       {
    	   
    	   PreparedStatement ps = connection.prepareStatement("insert into staff(gender_type,firstname,middle,lastname,username,dob,password,email,mobile,adhar_no,pan_no,city,district,pin_code,address,branch,class_year,status) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
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
    	   ps.setString(11,pan_no );
    	   ps.setString(12,city );
    	   ps.setString(13,district );
    	   ps.setString(14,pin_code );
    	   ps.setString(15,address );
    	   ps.setString(16,branch );
    	   ps.setString(17,class_year);
    	   ps.setString(18,status );
    	   
    	   int count = ps.executeUpdate();
    	   
    	   if(count == 1)
    	   {
    		   %>
   	    	
   	    	<script type="text/javascript">
   	    	
   	    	window.alert("Added Successfully");
   	    	window.location="Login.jsp";

   			</script>
   	    	
   	    	
   	    	<%
    	   }
    	   else
    	   {
    		   %>
   	    	
   	    	<script type="text/javascript">
   	    	
   	    	window.alert("Added UnSuccessfully");
   	    	window.location="StaffReg.jsp";

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
   	    	window.location="StaffReg.jsp";

   			</script>
   	    	
   	    	
   	    	<%
   	   } */



%>