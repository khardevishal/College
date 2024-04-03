<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN"
	dir="ltr">
<head profile="http://gmpg.org/xfn/11">
<link rel="icon" href="images/favicon.ico" type="image/gif"></link>
<title>Login Staff</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="imagetoolbar" content="no" />
<!-- **********************style  Common**************** -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">

	<link rel="stylesheet" href="styles/style.css" />

	<!-- **********************style END Common**************** -->
</head>



<body id="top">
    <script>

		function validation()
		{
	
			var email=document.getElementById("Email").value();
			if(email.includes("--"))
			{
	
				window.alert("Please Enter valid Email Id");
				window.location="LoginS.jsp";
			}
	
			var pass=document.getElementById("pwd").value();
			if(pass=="")
			{
				window.alert("Please Enter Password");
				window.location="LoginS.jsp";
	
			}
			
	
		}
	</script>
	<!-- **********************header Common****************  -->

	<div id="header">
		<div class="container">
			<div class="header-info pt-4 pb-4">
				<a href="Index.jsp"> <img
					src="images/libray/avcoe-engineering-logo.png" alt="logo" /></a>
				<h1 style="color: white;">AMRUTVAHINI COLLEGE OF
					ENGINEERING,SANGAMNER</h1>
				<h2 style="color: whitesmoke;">E - Resources library portal</h2>
			</div>

            <div id="topnav">
                <ul>

                    <li class="active"><a href="Index.jsp">Home</a></li>
                    <li class="dropdown">
                        <a href="javascript:void(0)" class="dropbtn">Account</a>
                        <div class="dropdown-content">
                            <a href="LoginS.jsp">Student Login</a>
                            <a href="Student.jsp">Student Registration</a>
                            <a href="Login.jsp">Staff Login</a>
                            <a href="StaffReg.jsp">Staff Registration</a>
                           
                        </div>
                    </li>
                    <li><a href="Aboutus.jsp">About Us</a></li>
                    <li><a href="Contactus.jsp">Contact Us</a></li>

                </ul>
            </div>

		</div>
	</div>

	<!-- ********************** Header END Common**************** -->



	<div class="container">
		<div id="loginstaff">


			<h1>Login in Library Portal</h1>
			<form action="Login_Authentication.jsp" method="post" id="form1"
				name="s" onsubmit="return validation()">
				<table border="3" align="center">
					<tr>
						<td width="192" height="49" align="right" style="color: #2c83b0;">EMAIL&nbsp;&nbsp;</td>
						<td width="196"><input type="text" name="email" /></td>
					</tr>
					<tr>
						<td height="49" align="right" style="color: #2c83b0;">PASSWORD&nbsp;&nbsp;</td>
						<td><input type="password" name="pass" /></td>
					</tr>
					 <tr>
						<td height="49" align="right" style="color: #2c83b0;">TYPE&nbsp;&nbsp;</td>
						<td>
						<select name="type">
						<option>view data</option>
						<option>Upload file</option>
						</select>
						</td>
						</tr> 
					<tr>
						<td height="57" colspan="2" id="learn_more" align="center"><input
							type="submit" value="Submit" style="width: 100px; height: 35px;" />
							<input type="reset" name="Reset"
							style="width: 100px; height: 35px;" /></td>
					</tr>
				</table>
			</form>
					
					<div class="mt-3">	
            				<p> Create an account?
            				<a href="StaffReg.jsp"> Sign up</a></p>	
						</div>	
						<div class="mt-3">	
							<a href="Forget1.jsp">forgot password ?</a>
						</div>
					
					
			
		</div>
		<!-- end of templatemo_content -->
	</div>

<!-- **********************script Common start**************** -->

	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
		integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
		crossorigin="anonymous"></script>

	<!-- ********************** script END Common**************** -->


</body>
</html>