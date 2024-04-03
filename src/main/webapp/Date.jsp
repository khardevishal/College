<%@page import="java.util.*" %>

<%


			int day, month, year ;
			int second, minute,	hour ;

			GregorianCalendar	date = new GregorianCalendar();

			day = date. get( Calendar .DAY_OF_MONTH ) ;
			month = date. get( Calendar .MONTH )+1 ;
			year = date. get( Calendar .YEAR ) ;
			second = date. get( Calendar .SECOND ) ;
			minute = date. get( Calendar .MINUTE ) ;
			hour = date. get( Calendar .HOUR_OF_DAY) ;

			String tmins = "", tsecs = "";

			if (minute < 10)
					
					tmins = "0" + minute;
			else
	
					tmins = Integer.toString(minute);

			if (second < 10)
					
					tsecs = "0" + second;
			else
					tsecs = Integer.toString(second);

					String status = "AM";

			if (hour > 12)
			{
					status = "PM";
					hour = hour - 12;
			}

			if (hour == 0)
					
					hour = 12;

					String dt=(String)(day+"/"+month+"/"+year);





%>