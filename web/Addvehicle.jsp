<%@include file="headder.jsp" %>
    <div id="menu"><%@include file="sothinkmenu.jsp"%></div>
    <div id="detail">
        <div id="lchild"><%@include file="sidemenu2.jsp"%></div>
    <div id="rchild">
            
            <%@include file="connection.jsp"%>

         <%
   
            if(request.getParameter("Submit")!=null)
            {
                String vechno = request.getParameter("vechregis");
                String engno = request.getParameter("engineno");
                String chasisno = request.getParameter("chasis");
                String fueltype = request.getParameter("fuel");
                String dealer = request.getParameter("dealer");
                String owner = request.getParameter("owner");
                String address = request.getParameter("address");
                String gender = request.getParameter("gender");
                String dob = request.getParameter("dob");
                String email = request.getParameter("email");
                String mobile = request.getParameter("mobile");
                String bloodgrp = request.getParameter("blood");
                String occu = request.getParameter("occu");
                String office = request.getParameter("office");
                st.executeUpdate("insert into add_vehicle values ('"+vechno+"' , '"+engno+"', '"+chasisno+"', '"+fueltype+"', '"+dealer+"', '"+owner+"', '"+address+"', '"+gender+"', '"+dob+"', '"+email+"', '"+mobile+"', '"+bloodgrp+"', '"+occu+"', '"+office+"')");

        %><script>alert('Record is inserted')</script>
                <%
            }
            if(request.getParameter("Cancel")!=null)
                {
                response.sendRedirect("afteroperator.jsp");
            }
        %>

	
    <form name="form1" method="post" action="" id="addvhical">
         <p align="center">Vehicle Registration</p>
         <div align="center">
      <table width="326" border="1">
        <tr>
          <td width="173">Vehicle Registration no. </td>
          <td width="137"><label>
            <input name="vechregis" type="text" id="vechregis" class="number" required>
          </label></td>
        </tr>
        <tr>
          <td>Engine no. </td>
          <td><label>
          <input name="engineno" type="text" id="engineno" class="number" required>
          </label></td>
        </tr>
        <tr>
          <td>Chasis no. </td>
          <td><label>
          <input name="chasis" type="text" id="chasis" class="number" required>
          </label></td>
        </tr>
        <tr>
                                <td>fuel type</td>
                                <td><input type="radio" name="fuel" value="Petrol" checked>Petrol
<input type="radio" name="fuel" value="Deisel">Deisel</td>
                            </tr>
        <tr>
          <td>Purchase Dealer </td>
          <td><input name="dealer" type="text" id="dealer" class="text" required></td>
        </tr>
        <tr>
          <td>Owner name </td>
          <td><input name="owner" type="text" id="owner" class="text" required></td>
        </tr>
        <tr>
          <td>Address</td>
          <td><input name="address" type="text" id="address" required></td>
        </tr>
        <tr>
                                <td>Gender</td>
                                <td><input type="radio" name="gender" value="gender" checked>male
<input type="radio" name="gender" value="female">female</td>
                            </tr>
        <tr>
                                <td>Birth Date</td>
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
                                       <%for(int i=1990;i<=2020;i++){
                                    	   %>
                                    	   <option><%=i %></option>
                                    	   }
                                       <% }%>
                                    	  
                                </td>

                            </tr>
        <tr>
          <td>Email</td>
          <td><input name="text" type="email" id="email" class="email" required></td>
        </tr>
        <tr>
          <td>Mobile</td>
          <td><input name="mobile" type="number" id="mobile" class="number" required></td>
        </tr>
        <tr>
                                <td>Blood Group</td>
                                <td><label for="type"></label>
                                    <select name="blood" id="blood" required>
                                        <option value="A+">A+</option>
                                        <option value="A-">A-</option>
                                        <option value="B+">B+</option>
                                        <option value="B-">B-</option>
                                        <option value="O+">O+</option>
                                        <option value="O-">O-</option>
                                        <option value="AB+">AB+</option>
                                        <option value="AB-">AB-</option>
                                </select></td>
                            </tr>
        <tr>
          <td>Occupation</td>
          <td><input name="occu" type="text" id="occu" class="text" required></td>
        </tr>
        <tr>
          <td>Office Address </td>
          <td><input name="office" type="text" id="office" class="text" required></td>
        </tr>
        <tr>
           <td colspan="2"><div align="center">
                  <input type="submit" name="Submit" value="Submit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;
                  <input type="submit" name="Cancel" id="Cancel" value="Cancel">
                </div></td>
        </tr>
      </table>
      </div>
    </form><!-- 
    <script>
            var field1 = new LiveValidation( 'vechregis' );
field1.add( Validate.Presence);
            var field5 = new LiveValidation( 'owner');
field5.add( Validate.Presence );
            var field9 = new LiveValidation( 'address' );
field9.add( Validate.Presence );    
            var f4 = new LiveValidation('email');
f4.add( Validate.Email );
            var f5 = new LiveValidation('mobile');
f5.add( Validate.Numericality );
        </script> -->
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