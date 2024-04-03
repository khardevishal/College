<%

if(session.getAttribute("staff_email")!=null || session.getAttribute("student_email")!=null)
{


%>
                    <li class="active"><a href="Home.jsp">Home</a></li>
                    <li class="dropdown">
                        <a href="javascript:void(0)" class="dropbtn">Civil</a>
                        <div class="dropdown-content">
                            <a href="Civil_SE.jsp">SE</a>
                            <a href="Civil_TE.jsp">TE</a>
                            <a href="Civil_BE.jsp">BE</a>
                        </div>
                    </li>
                    <li class="dropdown">
                        <a href="javascript:void(0)" class="dropbtn">Computer</a>
                        <div class="dropdown-content">
                            <a href="Computer_SE.jsp">SE</a>
                            <a href="Computer_TE.jsp">TE</a>
                            <a href="Computer_BE.jsp">BE</a>
                        </div>
                    </li>
                    <li class="dropdown">
                        <a href="javascript:void(0)" class="dropbtn">ECE</a>
                        <div class="dropdown-content">
                            <a href="Electronics_SE.jsp">SE</a>
                            <a href="Electronics_TE.jsp">TE</a>
                            <a href="Electronics_BE.jsp">BE</a>
                        </div>
                    </li>
                    <li class="dropdown">
                        <a href="javascript:void(0)" class="dropbtn">Electrical</a>
                        <div class="dropdown-content">
                            <a href="Electrical_SE.jsp">SE</a>
                            <a href="Electrical_TE.jsp">TE</a>
                            <a href="Electrical_BE.jsp">BE</a>
                        </div>
                    </li>
                    <li><a href="Engineering_FE.jsp">Engineering Science</a></li>
                    <li class="dropdown">
                        <a href="javascript:void(0)" class="dropbtn">ETC</a>
                        <div class="dropdown-content">
                            <a href="ETC_SE.jsp">SE</a>
                            <a href="ETC_TE.jsp">TE</a>
                            <a href="ETC_BE.jsp">BE</a>
                        </div>
                    </li>
                    <li class="dropdown">
                        <a href="javascript:void(0)" class="dropbtn">Information Technology</a>
                        <div class="dropdown-content">
                            <a href="IT_SE.jsp">SE</a>
                            <a href="IT_TE.jsp">TE</a>
                            <a href="IT_BE.jsp">BE</a>
                        </div>
                    </li>
                    
                    <li class="dropdown">
                        <a href="javascript:void(0)" class="dropbtn">M.B.A</a>
                        <div class="dropdown-content">
                            <a href="MBA_FE.jsp">FE</a>
                            <a href="MBA_SE.jsp">SE</a>
                            
                        </div>
                    </li>
                    
                    <li class="dropdown">
                        <a href="javascript:void(0)" class="dropbtn">Mechanical</a>
                        <div class="dropdown-content">
                            <a href="Mechanical_SE.jsp">SE</a>
                            <a href="Mechanical_TE.jsp">TE</a>
                            <a href="Mechanical_BE.jsp">BE</a>
                        </div>
                    </li>
                    
                    <li class="dropdown">
                        <a href="javascript:void(0)" class="dropbtn">Robotics And Automation</a>
                        <div class="dropdown-content">
                            <a href="Production_SE.jsp">SE</a>
                            <a href="Production_TE.jsp">TE</a>
                            <a href="Production_BE.jsp">BE</a>
                        </div>
                    </li>    
  		
<li><a href="Logout.jsp">Logout</a></li>
<%
}

else
{
	
	response.sendRedirect("Index.jsp");
	
}


%>