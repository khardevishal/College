<%

if(session.getAttribute("staff_email")!=null || session.getAttribute("student_email")!=null)
{


%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN" dir="ltr">
<head profile="http://gmpg.org/xfn/11">
<title>Home</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="imagetoolbar" content="no" />
<link rel="stylesheet" href="styles/layout.css" type="text/css" />
<link rel="stylesheet" href="styles/templatemo_style.css" type="text/css" />
<script type="text/javascript" src="scripts/validations.js"></script>
<script type="text/javascript" src="scripts/jquery.js"></script>
<link rel="stylesheet" href="styles/jquery-ui.css" type="text/css" />
<script src="scripts/jquery-1.10.2.js"></script>
<script src="scripts/jquery-ui.js"></script>
<style>
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
}

li {
    float: left;
}

li a, .dropbtn {
    display: inline-block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover, .dropdown:hover .dropbtn {
    background-color: red;
}

li.dropdown {
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    text-align: left;
}

.dropdown-content a:hover {background-color: #f1f1f1}

.dropdown:hover .dropdown-content {
    display: block;
}
</style>
</head>
<body>


<div class="wrapper col1">
  <div id="header">
   <h1><a href="#"><%@ include file="ProjectName.jsp" %></a></h1>
    <div id="topnav">
    <ul>
        
        <%@ include file="Menu.jsp" %>
       
      </ul>
    </div>
    <br class="clear" />
  </div>
</div>

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
     
     
     ResultSet rs = connection.createStatement().executeQuery("select * from upload_file where dpt='IT' and class_year='FE' order by id desc");
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


</body>
</html>
<%
}

else
{
	
	response.sendRedirect("Index.jsp");
	
}


%>
