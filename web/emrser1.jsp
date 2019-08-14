

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="mainpage.css" rel="stylesheet" type="text/css">
    </head>
    <body> <div id="headder"><img src="images/header.jpg" width="900" height="250"></div>
	 <div id="menu"><%@include file="sothinkmenu.jsp"%></div>
	<div id="detail">
	<div id="lchild"><%@include file="Lchild1.jsp"%></div>
	   <div id="rchild"><h1>In case of Fire</h1>
	    
	     <p>In case of Fire at your home, office, factory , godown, shop etc immediately dial the following numbers</p>

	     <p><strong>DIAL 100 for POLICE</strong></p>
         <p><strong>DIAL 101 for FIRE TENDERS</strong></p>
         <p>Give exact address of your premises and also a clear route for the fire tenders and police to reach at the earliest. </p>
         <p><h1>In case of Disasters</h1> </p>
         <p>In case of a natural  or a man made disaster like   earthquake, flood, bomb blast etc, evacuate the premises, dial the   following telephone numbers for help</p>
         <ul>
           <li><strong>DIAL 101 for Fire Tenders</strong></li>
           <li><strong>DIAL 100 for Police Assistance </strong></li>
           <li><strong>DIAL 102 for Ambulance </strong></li>
         </ul>
         <p><strong>	     </strong></p>
	   </div>
	   </div>
       
    </body>
</html>
