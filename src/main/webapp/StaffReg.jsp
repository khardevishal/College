<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN" dir="ltr">
<head profile="http://gmpg.org/xfn/11">
<link rel="icon" href="images/favicon.ico" type="image/gif"></link>
<title>Staff Registration</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="imagetoolbar" content="no" />
<!-- **********************style  Common**************** -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
    integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

     <link rel="stylesheet" href="styles/style.css" />

    <!-- **********************style END Common**************** -->
<script type="text/javascript">

function valid()
{
	
	var aa=document.s.ptype.value;
	if(aa=="")
	{
	alert("Enter Gender Type");
	return false;
	}

	
var firstname=document.s.firstname.value;
if(firstname=="")
{
alert("Enter FirstName");
document.s.firstname.focus();
return false;
}

var middle=document.s.middle.value;
if(middle=="")
{
alert("Enter Middle Name");
document.s.middle.focus();
return false;
}

var lastname=document.s.lastname.value;
if(lastname=="")
{
alert("Enter LastName");
document.s.lastname.focus();
return false;
}

var username=document.s.username.value;
if(username=="")
{
alert("Enter UserName");
document.s.username.focus();
return false;
}

var password=document.s.password.value;
if(password=="")
{
alert("Enter password");
document.s.password.focus();
return false;
}

var emailfilter=/^\w+[\+\.\w-]*@([\w-]+\.)*\w+[\w-]*\.([a-z]{2,4}|\d+)$/i;
var email=emailfilter.test(document.s.email.value);
if(email==false)
{
alert("Please enter a valid Email Id");
document.s.email.focus();
return false;
}

var mobile = document.s.mobile.value;
if(mobile=="")
{
alert("Enter mobile number");
document.s.mobile.focus();
return false;
}
if(isNaN(mobile))
{
alert("Enter mobile number in numbers");
document.s.mobile.focus();
return false;
}

if(mobile.length!=10)
{
alert("Enter 10 digits");
document.s.mobile.focus();
return false;
}

var adhar=document.s.adhar.value;
if(adhar=="")
{
alert("Enter Adhar Number");
document.s.adhar.focus();
return false;
}

var pan=document.s.pan.value;
if(pan=="")
{
alert("Enter Pan Number");
document.s.pan.focus();
return false;
}

var city=document.s.city.value;
if(city=="")
{
alert("Enter City");
document.s.city.focus();
return false;
}

var district=document.s.district.value;
if(district=="")
{
alert("Enter District");
document.s.district.focus();
return false;
}

var pincode=document.s.pincode.value;
if(pincode=="")
{
alert("Enter Pin Code");
document.s.pincode.focus();
return false;
}

var address=document.s.address.value;
if(address=="")
{
alert("Enter Address");
document.s.address.focus();
return false;
}


}

</script>
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
            <br class="clear" />
        </div>
    </div>

    <!-- ********************** Header END Common**************** -->


<div id="sditails">
  		<div class="container">
  			
 					
  		
								
						<h2 class="mt-3">Staff Personal Details</h2>
						<form action="Staff_Insertion.jsp" method="post" name="s"  onsubmit="return valid()">
						<table border="3" align="center">
						<tr>
						<td width="192" height="49" align="center" style="color: #2c83b0;">Type&nbsp;&nbsp;</td>
						<td width="196">
						<input type="radio" name="ptype" value="Mr."/> 
						Mr.&nbsp;&nbsp;
						<input type="radio" name="ptype" value="Mrs." />
						Mrs.&nbsp;&nbsp;
						<input type="radio" name="ptype" value="Miss."/>
						Miss.&nbsp;&nbsp;
						</td>
						</tr>
						<tr>
						<td width="192" height="49" align="center" style="color: #2c83b0;">FIRSTNAME&nbsp;&nbsp;</td>
						<td width="196"><input type="text" name="firstname" /></td>
						</tr>
						<tr>
						<td width="192" height="49" align="center" style="color: #2c83b0;">MIDDLE&nbsp;&nbsp;</td>
						<td width="196"><input type="text" name="middle" /></td>
						</tr>
						<tr>
						<td width="192" height="49" align="center" style="color: #2c83b0;">LASTNAME&nbsp;&nbsp;</td>
						<td width="196"><input type="text" name="lastname" /></td>
						</tr>
                		<tr>
						<td width="192" height="49" align="center" style="color: #2c83b0;">USERNAME&nbsp;&nbsp;</td>
						<td width="196"><input type="text" name="username" /></td>
						</tr>
						<tr>
						<td width="192" height="49" align="center" style="color: #2c83b0;">DOB&nbsp;&nbsp;</td>
						<td  width="220">
						<select name="day">
						<option>day</option>
						<% for(int i=1;i<=31;i++)
							
						{
						%>
						<option><%=i %></option>
						<%
						
						}
						
						%>
						
						</select>
						<select name="month">
						<option>month</option>
						<% for(int i=1;i<=12;i++)
							
						{
						%>
						<option><%=i %></option>
						<%
						
						}
						
						%>
						
						</select>
						<select name="year">
						<option>year</option>
						<% for(int i=1950;i<=2017;i++)
							
						{
						%>
						<option><%=i %></option>
						<%
						
						}
						
						%>
						
						</select>
						</td>
						</tr>
                		<tr>
						<td height="49" align="center" style="color: #2c83b0;">PASSWORD&nbsp;&nbsp;</td>
						<td><input type="password" name="password" /></td>
						</tr>
						<tr>
						<td width="192" height="49" align="center" style="color: #2c83b0;">EMAIL&nbsp;&nbsp;</td>
						<td width="196"><input type="text" name="email" /></td>
						</tr>
						<tr>
						<td width="192" height="49" align="center" style="color: #2c83b0;">MOBILE NO&nbsp;&nbsp;</td>
						<td width="196"><input type="text" name="mobile" /></td>
						</tr>
						<!-- <tr>
						<td width="192" height="49" align="left" style="color: #2c83b0;">ADHAR NO&nbsp;&nbsp;</td>
						<td width="196"><input type="text" name="adhar" /></td>
						</tr> -->
						<tr>
						<td width="192" height="49" align="center" style="color: #2c83b0;">BIO METRIC NO&nbsp;&nbsp;</td>
						<td width="196"><input type="text" name="pan" /></td>
						</tr>
						<!-- <tr>
						<td width="192" height="49" align="left" style="color: #2c83b0;">City&nbsp;&nbsp;</td>
						<td width="196"><input type="text" name="city" /></td>
						</tr>
						<tr>
						<td width="192" height="49" align="left" style="color: #2c83b0;">DISTRICT&nbsp;&nbsp;</td>
						<td width="196"><input type="text" name="district" /></td>
						</tr>
						<tr>
						<td width="192" height="49" align="left" style="color: #2c83b0;">PIN CODE&nbsp;&nbsp;</td>
						<td width="196"><input type="text" name="pincode" /></td>
						</tr>
						<tr>
						<td width="192" height="49" align="left" style="color: #2c83b0;">ADDRESS&nbsp;&nbsp;</td>
						<td width="196"><textarea rows="3" cols="25" name="address" ></textarea></td>
						</tr> -->
						</table>
              	
              			<br/>
              			<h2 style="text-align:center;">Staff Academic Details</h2>
              			
              			<table class="mt-3 mb-5"border="3" align="center">
              			<tr>
						<td width="192" height="49" align="center" style="color: #2c83b0;">INFO&nbsp;&nbsp;</td>
						<td>
						<select name="branch">
						<option>Branch</option>
						<option>Computer</option>
						<option>IT</option>
						<option>Civil</option>
						<option>Mechanical</option>
						<option>Electrical</option>
						<option>Electronics</option>
						<option>ETC</option>
						<option>Production</option>
						<option>Engineering Science</option>
						<option>MBA</option>
						</select>
						<select name="class">
						<option>Class</option>
						<option>FE</option>
						<option>SE</option>
						<option>TE</option>
						<option>BE</option>
						</select>
						</td>
						
						
						</tr>
						
						<tr>
				   		<td height="57" colspan="2" id="learn_more" align="center">
				   			<input type="submit" value="Submit" style="width:100px; height:35px;"/>
				   			<input type="reset" value="Reset" style="width:100px; height:35px;"/>
				   		</td>
				   	</tr>       
						</table>
              	
            			</form>
							<div class="mt-3">
							<p> If you are not a Staff !
            				<a href="Student.jsp">click here</a></p>
						</div>
	
			</div>
			
		</div>
		
		
		
		</div>

    
  </div>
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
