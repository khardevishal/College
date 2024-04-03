/*******************************************************************************
 * * Validate User Registration form
 * 
 * @returns {Boolean}
 */

function validateRegistration() {

	var name = document.user_registration.user_name;
	var dob=document.user_registration.dob;
	var contactNo = document.user_registration.contact_no;
	var email = window.user_registration.email;
	var address2 = window.user_registration.address2;
	var password = window.user_registration.password;
	var user_image = document.user_registration.user_image;

	var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
	
	if (name.value == "") {    
		window.alert("Please enter a User Name");
		name.focus();
		name.style.background = '#F3F781';
		return false;
	}else
		{
		name.style.background = '#FFFFFF';
		}
	
	
	
	if (email.value == "") {
		window.alert("Please enter a email address");
		email.focus();
		email.style.background = '#F3F781';
		return false;
	}else
	{
		email.style.background = '#FFFFFF';
	}

	if (email.value != "") {
		if (!filter.test(email.value)) {
			alert('Please provide a valid email address');
			email.focus;
			email.style.background = '#F3F781';
			return false;
		}else
		{
			email.style.background = '#FFFFFF';
		}

	}

	
	if (password.value == "") {
		window.alert("Please enter a Password");
		password.focus();
		password.style.background = '#F3F781';
		return false;
	}else
	{
		password.style.background = '#FFFFFF';
	}
	
	if (password.value.length < 4 || password.value.length > 19) {
		window.alert("Invalid new Password Length");
		password.focus();
		password.style.background = '#F3F781';
		return false;
	}else
	{
		password.style.background = '#FFFFFF';
	}
	
	
	
	if (dob.value == "") {
		window.alert("Please enter date of birth");
		dob.focus();
		dob.style.background = '#F3F781';
		return false;
	}else
		{
		dob.style.background = '#FFFFFF';
		}

	 
	    // In JQuery
	    var dateEntered = dob.value;
	   var flag = 0;
	    var date = dateEntered.substring(0, 2);
	    var month = dateEntered.substring(3, 5);
	    var year = dateEntered.substring(6, 10);
	    var dateToCompare = new Date(year, month - 1, date);
	    var currentDate = new Date();
	 
	    if(year>2010){
	    	
	    	flag = 1;
	    }
	    
	    if(flag==1){
	    	 alert("Please Enter year before 2010");
		    	dob.focus();
				dob.style.background = '#F3F781';
	    }
	    
	    
	    if (dateToCompare > currentDate) {
	        alert("Please Enter Valid Date");
	    	dob.focus();
			dob.style.background = '#F3F781';
	    }
	   
	
	
    
	
	
	
	   
	if (contactNo.value == "") {
		window.alert("Please enter a User contact number");
		contactNo.focus();
		contactNo.style.background = '#F3F781';
		return false;
	}else
		{
		contactNo.style.background = '#FFFFFF';
		}
	
	if (isNaN(contactNo.value)) {
		window.alert("Please Enter  valid  number");
		contactNo.focus();
		contactNo.style.background = '#F3F781';
		return false;
	}else
		{
		contactNo.style.background = '#FFFFFF';
		}
	
	if (contactNo.value.length < 10) {
		window.alert("Please Enter valid number");
		contactNo.focus();
		contactNo.style.background = '#F3F781';
		return false;
	}else
		{
		contactNo.style.background = '#FFFFFF';
		}
		
	if (address2.value == "") {
		window.alert("Please enter a  Address");
		address2.focus();
		address2.style.background = '#F3F781';
		return false;
	}else
	{
		address2.style.background = '#FFFFFF';
	}
	

	
	if (user_image.value == "") {    
		window.alert("Please Select Profile Picture");
		user_image.focus();
		user_image.style.background = '#F3F781';
		return false;
	}else
		{
		user_image.style.background = '#FFFFFF';
		}
	
	

	

	return true;
}

function validateMyProfile() {

	var name = document.user_profile.user_name;
	var dob=document.user_profile.dob;
	var contactNo = document.user_profile.contact_no;
	var email = window.user_profile.email;
	var address2 = window.user_profile.address2;
	var password = window.user_profile.password;
	var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
	
	if (name.value == "") {    
		window.alert("Please enter a User Name");
		name.focus();
		name.style.background = '#F3F781';
		return false;
	}else
		{
		name.style.background = '#FFFFFF';
		}
	
	
	
	if (email.value == "") {
		window.alert("Please enter a email address");
		email.focus();
		email.style.background = '#F3F781';
		return false;
	}else
	{
		email.style.background = '#FFFFFF';
	}

	if (email.value != "") {
		if (!filter.test(email.value)) {
			alert('Please provide a valid email address');
			email.focus;
			email.style.background = '#F3F781';
			return false;
		}else
		{
			email.style.background = '#FFFFFF';
		}

	}

	
	if (password.value == "") {
		window.alert("Please enter a Password");
		password.focus();
		password.style.background = '#F3F781';
		return false;
	}else
	{
		password.style.background = '#FFFFFF';
	}
	
	if (password.value.length < 4 || password.value.length > 19) {
		window.alert("Invalid new Password Length");
		password.focus();
		password.style.background = '#F3F781';
		return false;
	}else
	{
		password.style.background = '#FFFFFF';
	}
	
	
	
	if (dob.value == "") {
		window.alert("Please enter date of birth");
		dob.focus();
		dob.style.background = '#F3F781';
		return false;
	}else
		{
		dob.style.background = '#FFFFFF';
		}
	   
	if (contactNo.value == "") {
		window.alert("Please enter a User contact number");
		contactNo.focus();
		contactNo.style.background = '#F3F781';
		return false;
	}else
		{
		contactNo.style.background = '#FFFFFF';
		}
	
	if (isNaN(contactNo.value)) {
		window.alert("Please Enter  valid  number");
		contactNo.focus();
		contactNo.style.background = '#F3F781';
		return false;
	}else
		{
		contactNo.style.background = '#FFFFFF';
		}
	
	if (contactNo.value.length < 10) {
		window.alert("Please Enter valid number");
		contactNo.focus();
		contactNo.style.background = '#F3F781';
		return false;
	}else
		{
		contactNo.style.background = '#FFFFFF';
		}
		
	if (address2.value == "") {
		window.alert("Please enter a  Address");
		address2.focus();
		address2.style.background = '#F3F781';
		return false;
	}else
	{
		address2.style.background = '#FFFFFF';
	}
	

	
	

	

	return true;
}


function validateLogin()
{
	
	var email = window.login.email;
	var password = window.login.password;
	var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
	
	
	if (email.value == "") {
		window.alert("Please enter a email address");
		email.focus();
		email.style.background = '#F3F781';
		return false;
	}else
	{
		email.style.background = '#FFFFFF';
	}

	if (email.value != "") {
		if (!filter.test(email.value)) {
			alert('Please provide a valid email address');
			email.focus;
			email.style.background = '#F3F781';
			return false;
		}else
		{
			email.style.background = '#FFFFFF';
		}

	}

	
	
	
	if (password.value == "") {
		window.alert("Please enter a Password");
		password.focus();
		password.style.background = '#F3F781';
		return false;
	}else
	{
		password.style.background = '#FFFFFF';
	}
	
	return true;
}

function validateChangePassword()
 {
	var email = window.change_password.email;
	var oldPassword = window.change_password.old_password;
	var newPassword = window.change_password.new_password;
	var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
	
	if (email.value == "") {
		window.alert("Please enter a email address");
		email.focus();
		email.style.background = '#F3F781';
		return false;
	}else
	{
		email.style.background = '#FFFFFF';
	}

	if (email.value != "") {
		if (!filter.test(email.value)) {
			alert('Please provide a valid email address');
			email.focus;
			email.style.background = '#F3F781';
			return false;
		}else
		{
			email.style.background = '#FFFFFF';
		}

	}
	
	
	if (oldPassword.value == "") {
		window.alert("Please enter Old a Password");
		oldPassword.focus();
		oldPassword.style.background = '#F3F781';
		return false;
	}else
	{
		oldPassword.style.background = '#FFFFFF';
	}
	
	
	if (newPassword.value == "") {
		window.alert("Please enter New  a Password");
		newPassword.focus();
		newPassword.style.background = '#F3F781';
		return false;
	}else
	{
		newPassword.style.background = '#FFFFFF';
	}
	
	return true;
	
 }

