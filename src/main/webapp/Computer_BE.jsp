<%

if(session.getAttribute("staff_email")!=null || session.getAttribute("student_email")!=null)
{


%>
          <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
			<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN" dir="ltr">
			<head profile="http://gmpg.org/xfn/11">
          
 		  <link rel="icon" href="images/favicon.ico" type="image/gif"></link>
 		  <title>Menu</title>
 		  <!-- **********************style  Common**************** -->
          <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
           integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
           <link rel="stylesheet" href="styles/style.css" />

    <!-- **********************style END Common**************** -->
 		</head>
 		<body id="top">
 		
           		<!-- **********************header Common****************  -->

    <div id="header">
        <div class="container">
            <div class="header-info pt-4 pb-4">
                <a href="Index.jsp"> <img src="images/libray/avcoe-engineering-logo.png" alt="logo" /></a>
                <h1 style="color: white;">AMRUTVAHINI COLLEGE OF ENGINEERING,SANGAMNER</h1>
                <h2 style="color: whitesmoke;"> E - Resources library portal </h2>
                </div>
            </div>

     <div id="topnav">
    <ul>
        
         <%@ include file="Menu.jsp" %>       
      </ul>
    </div>
            <br class="clear" />
        
    </div>
<hr>


<div class="wrapper col3">
  		<div id="container">
  <div id="templatemo_main">
			
      <%@ include file="connect.jsp" %>
    
	<center>
     <table border="1">
     
     <tr>
     <td width="200" height="60" align="center"><font size="5" color="red">ID</font></td>
     <td width="200" height="60" align="center"><font size="5" color="red">File Name</font></td>
     <td width="200" height="60" align="center"><font size="5" color="red">Subject</font></td>
     <td width="200" height="60" align="center"><font size="5" color="red">Teacher</font></td>
     <td width="200" height="60" align="center"><font size="5" color="red">Date</font></td>
     <td width="250" height="60" align="center"><font size="5" color="red">Download</font></td>
     </tr>
     
     <%
     
     
     ResultSet rs = connection.createStatement().executeQuery("select * from upload_file where dpt='Computer' and class_year='BE' order by id desc");
     while(rs.next())
     {
    	 String query="select * from staff where email='"+rs.getString(5)+"'";
    	 ResultSet rd = connection.createStatement().executeQuery(query);
    	 rd.next();
    	 String name=rd.getString(2)+""+rd.getString(3)+""+rd.getString(4)+""+rd.getString(5);
    	 %>
    	 
   	  	<tr>
    	<td width="200" height="60" align="center"><font size="5" color="green"><%=rs.getString(1) %></font></td>
    	<td width="200" height="60" align="center"><font size="5" color="green"><%=rs.getString(2) %></font></td>
    	<td width="200" height="60" align="center"><font size="5" color="green"><%=rs.getString(4) %></font></td>
    	<td width="200" height="60" align="center"><font size="5" color="green"><%=name %></font></td> 
    	<td width="200" height="60" align="center"><font size="5" color="green"><%=rs.getString(7) %></font></td>
    	<td width="250" height="60" align="center"><font size="5" color="green"><a href="Download.jsp?id=<%=rs.getString(1) %>">download</a></font></td>
    	</tr>
   	 
   	 	<%
     }
     
     rs.close();
     
     %>
     
     </table>
     </center>

		</div>
		
		</div>

    
  </div>
 <!-- ********************** Header END Common**************** -->
           		
           		
   <!-- **********************script Common start**************** -->

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
        integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
        crossorigin="anonymous"></script>

    <!-- ********************** script END Common**************** -->
           		
 		

</body>
</html>
<%
}
else
{
	
	response.sendRedirect("Index.jsp");
	
}


%>