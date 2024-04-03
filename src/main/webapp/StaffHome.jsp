<%

if(session.getAttribute("staff_email")!=null)
{


%>
 <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN" dir="ltr">
<head profile="http://gmpg.org/xfn/11">
<link rel="icon" href="images/favicon.ico" type="image/gif"></link>
<title>Student</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="imagetoolbar" content="no" />
<!-- **********************style  Common**************** -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
        integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    
    <link rel="stylesheet" href="styles/style.css" />
    
  <!-- **********************style END Common**************** -->
  <style>
  p { text-align: center }
  h3 { text-align: center }
  </style>

</head>
<body id="top">


  <div id="header">
   
    <div class="container">
    
      <div class="header-info pt-4 pb-4">
            <img src="images/libray/avcoe-engineering-logo.png" alt="logo" />
            <h1 style="color:white;">AMRUTVAHINI COLLEGE OF ENGINEERING,SANGAMNER</h1>
            <h2 style="color: whitesmoke;"> E - Resources library portal </h2>
      </div>
      
      <div id="topnav" style="display:flex">
         <li class="active"><a href="StaffHome.jsp">Home</a></li>
         <li><a href="Staff_Upload_Report.jsp">Upload File</a></li>
         <li><a href="LogoutStaff.jsp">Logout</a></li>
      </div>
    </div>
    <br class="clear" />
  </div>



<div class="wrapper col3">
  		<div id="container">
  			<div id="templatemo_main">
 					<div id="templatemo_content">

  					<p>
  					<h3>This site is useful for students to get Teachers Handwritten notes of 
  					various subjects in soft copy,Student Lab Manual for Practical, Question Banks,
  					 Multiple choice Questions (MCQ's), Assignments of various subjects etc...
                   <h3/>
  					</p>
  										
 				
			</div>
			
		</div>
		
		
		
		</div>

    
  </div>


</body>
</html>

 <%
}
else
{
	
	response.sendRedirect("Login.jsp");
	
}


%>