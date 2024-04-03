<%

if(session.getAttribute("staff_email")!=null || session.getAttribute("student_email")!=null)
{


%>


<%@ page  language="java" import="java.sql.*,databaseconnection.*" errorPage="" %>
<%  

  				
  				String filename="";
  				String filepath = ""; 
 				
 				long id=Long.parseLong(request.getParameter("id"));
  				ResultSet rs2 = databasecon.getconnection().createStatement().executeQuery("select * from upload_file where id="+id+"");
  				if(rs2.next())
  				{
  							filename = rs2.getString("file_name");
  		  					filepath = "C:/College/";
  				}
  						
  				rs2.close();
  				
  				response.setContentType("APPLICATION/OCTET-STREAM"); 
  				response.setHeader("Content-Disposition","attachment; filename=\"" + filename + "\""); 

  				java.io.FileInputStream fileInputStream = new java.io.FileInputStream(filepath+filename);
		  
  				int i; 
 				while ((i=fileInputStream.read()) != -1) 
  				{
    							out.write(i); 
  				} 
  								fileInputStream.close(); 
  
       



%> 

<%
}
else
{
	
	response.sendRedirect("Index.jsp");
	
}


%>