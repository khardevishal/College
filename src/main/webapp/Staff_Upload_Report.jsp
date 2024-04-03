 <%

if(session.getAttribute("staff_email")!=null)
{


%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN"
	dir="ltr">
<head profile="http://gmpg.org/xfn/11">
<link rel="icon" href="images/favicon.ico" type="image/gif"></link>
<title>Student</title>
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

					<li class="active"><a href="StaffHome.jsp">Home</a></li>
					
					<li><a href="LogoutStaff.jsp">Logout</a></li>

				</ul>
			</div>
			<br class="clear" />
		</div>
	</div>

	<!-- ********************** Header END Common**************** -->






	<div class="container">
		<div class="mt-3">
			<h1 style="text-align: center">Staff Upload File</h1>
			<div id="staffupload">

				<form action="G/U1" method="post" enctype="multipart/form-data"
					name="f1" onsubmit="return valid()">

					<table style="margin-left:auto; margin-right:auto; ">

						<tr>
							<td style="padding:20px;"><font size="5">Choose File</font></td>
							<td>:</td>
							<td style="padding:20px;"><input type="file" name="file" /></td>
						</tr>


						

						<tr>
							<td style="padding:20px; text-align:right"><font size="5">Class</font></td>
							<td>:</td>
							<td style="padding:20px;"><select name="class_year">

									<option>Class</option>
									<option>FE</option>
									<option>SE</option>
									<option>TE</option>
									<option>BE</option>
							</select></td>
						</tr>
						
						<tr>
						<td style="padding:20px; text-align:right"><font size="5">Subject Name</font></td>
						<td>:</td>
						<td style="padding:20px;"><input type="text" name="subject_name" /></td>
						</tr>
						
						<tr>
							<td></td>
							<td></td>
							<td><br/></td>
						</tr>

						<tr>
							<td></td>
							<td></td>
							<td style="padding:20px;"><input type="submit" value="Submit" /></td>
						</tr>

					</table>

				</form>





				<div class="cleaner"></div>
			</div>

		</div>






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

 <%
}
else
{
	
	response.sendRedirect("Login.jsp");
	
}


%> 