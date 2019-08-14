<%@page import="javax.mail.MessagingException"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.Session"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="java.util.Properties"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@include file="connection.jsp"%>
<%
String vechno = request.getParameter("vechno");
String nm = "", add = "", mbl = "+91", gdr = "", nme="";

String day = request.getParameter("date");
String month = request.getParameter("month");
String year = request.getParameter("year");
String date = year+"-"+month+"-"+day;

String lday = request.getParameter("ldate");
String lmonth = request.getParameter("lmonth");
String lyear = request.getParameter("lyear");
String lstdate = lyear+"-"+lmonth+"-"+lday;

String challtype = request.getParameter("challtype");
String amt = request.getParameter("amt");

String name = request.getParameter("name");
String address = request.getParameter("address");
String mobile = request.getParameter("mobile");
String gender = request.getParameter("gender");
String status = "notpaid";

int i =st.executeUpdate("insert into create_challan (date, last_date, c_type, amount, vehicle_no, name, address, mobile, gender, Status) values ('" + date + "', '" + lstdate + "', '" + challtype + "', '" + amt + "', '" + vechno + "', '" + name + "', '" + address + "', '" + mobile + "', '" + gender + "','" + status + "')");


java.util.Properties props=new java.util.Properties();

props.put("mail.smtp.host","smtp.gmail.com");   
props.put("mail.smtp.socketFactory.port", "465");    
props.put("mail.smtp.socketFactory.class",    
          "javax.net.ssl.SSLSocketFactory");    
props.put("mail.smtp.auth", "true");    
props.put("mail.smtp.port", "465");    

String fmess1= "Dear Customer,You have break the rule "+challtype+" of policy ,So the challan is generated of Rs. "+amt+" and your challan no is "+vechno+".So Kindly submit the amount before "+lstdate+ " for any query contact Indore Traffic Police 0731-898274."

+  "http://localhost:8002/TraifficPolice/paychallan.jsp";
/* String fmess2="You have break the rule "+type+" of policy ,So the challan is generated of Rs."+a +"and your challan no is "+ch_no+"." ;
String fmess3="So Kindly submit the amount before "+lastdate+" for any query contact Indore Traffic Police 0731-898274.";
String fmess4="   Dear Customer                                                   Indore Traffic Police";*/
props.put("",fmess1);





//get Session   
Session ses = Session.getDefaultInstance(props,new javax.mail.Authenticator() 
{    
 protected javax.mail.PasswordAuthentication getPasswordAuthentication()
 {    
 return new javax.mail.PasswordAuthentication("fake1demo@gmail.com","poojapooja");  
 }    
}
);    
//compose message    
try 
{    
	 
  MimeMessage message = new MimeMessage(ses);  
 
 message.addRecipient(Message.RecipientType.TO,new InternetAddress(mobile ));    
 message.setSubject("paychallaninfo");  


// String s = "Due to "+type+" pay ammout "+a +" before "+lastdate+" cno "+chinfo.getChallan_no();
 
 //System.out.println(s);
 message.setFrom(new InternetAddress("fake1demo@gmail.com"));
 message.setText(fmess1);    
 
  //send message  
 Transport.send(message); 
  
  
  %>
<script>alert('Record is inserted')</script>
<script>alert('Challan Message has been sent to the given Mail Addres....')</script>
<jsp:forward page="Challan_no.jsp"></jsp:forward>
  
  <%
}

catch (MessagingException e)
{
	 throw new RuntimeException(e);
	
}  

%>

</body>
</html>