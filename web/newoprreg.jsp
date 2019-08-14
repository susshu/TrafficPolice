<%@include file="headder.jsp" %>
    <div id="menu"><%@include file="sothinkmenu.jsp"%></div>
        <div id="detail">
            <div id="lchild"><%@include file="sidemenu1.jsp"%></div>
             <div id="rchild">
        
        <%@include file="connection.jsp"%>
         
         <%
            if(request.getParameter("Submit")!=null)
            {
                String fname = request.getParameter("fname");
                String lname = request.getParameter("lname");
                String id = request.getParameter("id");
                String pass = request.getParameter("pass");
                String email = request.getParameter("email");
                String mobile = request.getParameter("mobile");
                String shift = request.getParameter("shift");
                
                st.executeUpdate("insert into operator_login values ('"+fname+"' , '"+lname+"', '"+id+"', '"+pass+"', '"+email+"', '"+mobile+"', '"+shift+"')");

        %><script>alert('Record is inserted')</script>
                <%
            }
            if(request.getParameter("Cancel")!=null)
                {
                response.sendRedirect("afterlogin.jsp");
            }
         %>
         
      <form name="form1" method="post" action="">
          <p align="center">New Operator Registration</p>
          <div align="center">
        <table width="398" border="0">
          <tr>
            <td>First name </td>
            <td><label>
              <input name="fname" type="text" id="fname" class="text" required>
            </label>
            <label></label></td>
          </tr>
          <tr>
            <td>Last name </td>
            <td><label>
            <input name="lname" type="text" id="lname" class="text" required>
            </label></td>
          </tr>
          <tr>
            <td>Opr_id </td>
            <td><label>
            <input name="id" type="text" id="id" required >
            </label></td>
          </tr>
          <tr>
            <td>Password</td>
            <td><label>
            <input name="pass" type="text" id="pass" required>
            </label></td>
          </tr>
          <tr>
            <td>Email</td>
            <td><label>
            <input name="email" type="email" id="email" class="email" required>
            </label></td>
          </tr>
          <tr>
            <td>Mobile</td>
            <td><label>
            <input name="mobile" type="number" id="mobile" class="number" required>
            </label></td>
          </tr>
          <tr>
                                <td>Shift</td>
                                <td><label for="type"></label>
                                    <select name="shift" id="shift" required>
                                        <option value="morning">morning</option>
                                        <option value="evening">evening</option>
                                        <option value="night">night</option>
                                </select></td>
                            </tr>
          <tr>
            <td colspan="2"><div align="center">
                  <input type="submit" name="Submit" value="Submit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;
                  <input type="submit" name="Cancel" id="Cancel" value="Cancel">
                </div></td>
          </tr>
        </table>
        </div>
      </form>
      <script>
            var field1 = new LiveValidation( 'id' );
field1.add( Validate.Presence);
             var field2 = new LiveValidation( 'pass' );
field2.add( Validate.Presence);
            var field5 = new LiveValidation( 'email');
field5.add( Validate.Email );
            var field9 = new LiveValidation( 'shift' );
field9.add( Validate.Presence );    
            var f4 = new LiveValidation('fname');
f4.add( Validate.Presence );
            var f5 = new LiveValidation('mobile');
f5.add( Validate.Numericality );
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
