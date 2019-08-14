
        <%@ page  language="java" %>
        <%@ page  import = "java.net.*"%>
        <%@ page  import="java.io.*"%>
        <%@ page  %>
        <%@include file="headder.jsp" %>
        <div id="menu"><%@include file="sothinkmenu.jsp"%></div>
        <div id="detail">
            <div id="lchild"><%@include file="sidemenu2.jsp"%></div>
            <div id="rchild">
                
     
                <form name="form1" method="post" action="mailSend.jsp">
                    <p align="center"> Create Challan </p>
                    <div align="center">
                        <table width="355" border="1">
                            <tr>
                                <td>Challan Date</td>
                                <td>
                                    <label for="date"></label>
                                    <select name="date" id="date" required>
                                        <option value="1" selected="selected">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                        <option value="6">6</option>
                                        <option value="7">7</option>
                                        <option value="8">8</option>
                                        <option value="9">9</option>
                                        <option value="10">10</option>
                                        <option value="11">11</option>
                                        <option value="12">12</option>
                                        <option value="13">13</option>
                                        <option value="14">14</option>
                                        <option value="15">15</option>
                                        <option value="16">16</option>
                                        <option value="17">17</option>
                                        <option value="18">18</option>
                                        <option value="19">19</option>
                                        <option value="20">20</option>
                                        <option value="21">21</option>
                                        <option value="22">22</option>
                                        <option value="23">23</option>
                                        <option value="24">24</option>
                                        <option value="25">25</option>
                                        <option value="26">26</option>
                                        <option value="27">27</option>
                                        <option value="28">28</option>
                                        <option value="29">29</option>
                                        <option value="30">30</option>
                                        <option value="31">31</option>
                                    </select>
                                    <label for="month"></label>
                                    <select name="month" id="month" required>
                                        <option value="1" selected="selected">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                        <option value="6">6</option>
                                        <option value="7">7</option>
                                        <option value="8">8</option>
                                        <option value="9">9</option>
                                        <option value="10">10</option>
                                        <option value="11">11</option>
                                        <option value="12">12</option>
                                    </select>
                                    <label for="year"></label>
                                    <select name="year" id="year" required>
                                       <%for(int i=2008;i<=2025;i++)
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
                                <td>Last date </td>
                                <td>
                                    <label for="ldate"></label>
                                    <select name="ldate" id="ldate" required>
                                        <option value="1" selected="selected">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                        <option value="6">6</option>
                                        <option value="7">7</option>
                                        <option value="8">8</option>
                                        <option value="9">9</option>
                                        <option value="10">10</option>
                                        <option value="11">11</option>
                                        <option value="12">12</option>
                                        <option value="13">13</option>
                                        <option value="14">14</option>
                                        <option value="15">15</option>
                                        <option value="16">16</option>
                                        <option value="17">17</option>
                                        <option value="18">18</option>
                                        <option value="19">19</option>
                                        <option value="20">20</option>
                                        <option value="21">21</option>
                                        <option value="22">22</option>
                                        <option value="23">23</option>
                                        <option value="24">24</option>
                                        <option value="25">25</option>
                                        <option value="26">26</option>
                                        <option value="27">27</option>
                                        <option value="28">28</option>
                                        <option value="29">29</option>
                                        <option value="30">30</option>
                                        <option value="31">31</option>
                                    </select>
                                    <label for="lmonth"></label>
                                    <select name="lmonth" id="lmonth" required>
                                        <option value="1" selected="selected">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                        <option value="6">6</option>
                                        <option value="7">7</option>
                                        <option value="8">8</option>
                                        <option value="9">9</option>
                                        <option value="10">10</option>
                                        <option value="11">11</option>
                                        <option value="12">12</option>
                                    </select>
                                    <label for="lyear"></label>
                                     <select name="lyear" id="year" required>
                                       <%for(int i=2008;i<=20205;i++){
                                    	   %>
                                    	   <option><%=i %></option>
                                    	   
                                       <% }%>
                                    	  
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>Challan Type :</td>
                                <td><label for="type"></label>
                                    <select name="challtype" id="challtype" required>
                                        <option value="Signle">Signal break</option>
                                        <option value="Three seater">Three seater</option>
                                        <option value="Rash Driving">Rash Driving</option>
                                        <option value="No license">No license</option>
                                        <option value="Teen age">Teen age</option>
                                </select></td>
                            </tr>
                            <tr>
                                <td>Amount</td>
                                <td><label for="type"></label>
                                    <select name="amt" id="amt" required>
                                        <option value="100">100</option>
                                        <option value="150">150</option>
                                        <option value="250">250</option>
                                        <option value="350">350</option>
                                        <option value="450">450</option>
                                        <option value="55s0">550</option>
                                </select></td>
                            </tr>
                            <tr>
                                <td>Vehicle no. </td>
                                <td><input name="vechno" type="text" id="vechno" required ></td>
                            </tr>
                            <tr>
                                <td>Name</td>
                                <td><input name="name" type="text" id="name" required ></td>
                            </tr>
                            <tr>
                                <td>Address</td>
                                <td><input name="address" type="text" id="address" required ></td>
                            </tr>
                            <tr>
                                <td>E-Mail</td>
                                <td><input name="mobile" type="mobile" id="email" class="email"required></td>
                            </tr>
                            <tr>
                                <td>Gender</td>
                                <td><label for="type"></label>
                                    <select name="gender" id="gender">
                                        <option value="Male">Male</option>
                                        <option value="Female">Female</option>
                                        <option value="Other">Third Gender</option>

                                </select></td>
                            </tr>
                            <tr>
                                <td colspan="2"><div align="center">
                                        <input type="submit" name="Submit" value="Submit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <input type="submit" name="Cancel" id="Cancel" value="Cancel"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;
                                        <% 
                                         if(request.getParameter("Cancel")!=null)
                {
                response.sendRedirect("Challan_no.jsp");
            }%>
                                </div></td>
                            </tr>
                        </table>
                    </div>
                </form>
                <script>
                    var field5 = new LiveValidation('vechno');
                    field5.add( Validate.Presence );
                     var field6 = new LiveValidation('mobile');
                    field6.add( Validate.Numericality );
                </script>
            </div>
        </div>
    </body>
</html>
<script type="text/javascript" src="jquery-2.2.2.min.js"></script>
	<script type="text/javascript" src="validation.js "></script>
<script type="text/javascript">
  
  $(".text").keyup(function()
			{
		var val = $(this).val();		
		var regx = new RegExp(/^[A-Za-z]+$/);
		if(!val.match(regx)){
			var len = val.length;
			var newVal = val.replace(val.charAt(len-1), "");
			$(this).val(newVal);
		}
	});
  
  $(".text").keyup(function()
			{
		var val = $(this).val();		
		var regx = new RegExp(/^[a-zA-Z\s]+$/);
		if(!val.match(regx)){
			var len = val.length;
			var newVal = val.replace(val.charAt(len-1), "");
			$(this).val(newVal);
		}
	});

	$(".number").keyup(function(){
			var val = $(this).val();		
			if(isNaN(val)){
				var len = val.length;
				var newVal = val.replace(val.charAt(len-1), "");
				$(this).val(newVal);
			}
		});

	$(".email").keyup(function()
			{
		var val = $(this).val();		
		var regx = new RegExp(/^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/);
		if(!val.match(regx))
		{
			$(".email").css("border","2px solid red").focus();
		}
		else
			{
			$(".email").css("border","2px solid green").focus();
			}
	});
</script>
