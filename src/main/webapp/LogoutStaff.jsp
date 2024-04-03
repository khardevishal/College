<%



    if(session.getAttribute("staff_email")!=null)
    {
    	session.invalidate();
    	response.sendRedirect("Index.jsp");
    }
    else
    {
    	
    	response.sendRedirect("Login.jsp");
    	
    }




%>