<%



    if(session.getAttribute("student_email")!=null || session.getAttribute("staff_email")!=null)
    {
    	session.invalidate();
    	response.sendRedirect("Index.jsp");
    }
    else
    {
    	
    	response.sendRedirect("Index.jsp");
    	
    }




%>