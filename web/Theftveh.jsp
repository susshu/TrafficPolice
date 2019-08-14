<%@include file="headder.jsp" %>
        <div id="menu"><%@include file="sothinkmenu.jsp"%></div>
        <div id="detail">
            <div id="lchild"><%@include file="sidemenu2.jsp"%></div>
            <div id="rchild">
         <%@include file="connection.jsp"%>
         
         <%
            if(request.getParameter("Submit")!=null)
            {
                String vechno = request.getParameter("vechno");
                String engno = request.getParameter("engno");
                String chasis = request.getParameter("chasis");
                String model = request.getParameter("model");
                String owner = request.getParameter("owner");
                String address = request.getParameter("address");
                String mobile = request.getParameter("mobile");
                String place = request.getParameter("place");
                
                
                st.executeUpdate("insert into theft_vehicles values ('"+vechno+"' , '"+engno+"', '"+chasis+"', '"+model+"', '"+owner+"', '"+address+"', '"+mobile+"', '"+place+"')");

        %><script>alert('Record is inserted')</script>
                <%
            }
         %>
        
      <form name="form1" method="post" action="">
          <p align="center">Theft Vehicle Information</p>
        <table width="295" border="0" align="center">
          <tr>
            <td width="170">Vehicle no. </td>
            <td width="109"><label>
              <input name="vechno" type="text" id="vechno" required>
            </label></td>
          </tr>
          <tr>
            <td>Engine no. </td>
            <td><input name="engno" type="text" id="engno" required></td>
          </tr>
          <tr>
            <td>Chasis no. </td>
            <td><input name="chasis" type="text" id="chasis" required></td>
          </tr>
          <tr>
            <td>Model year </td>
            <td><input name="model" type="text" id="model" required></td>
          </tr>
          <tr>
            <td>Owner name </td>
            <td><input name="owner" type="text" id="owner" required></td>
          </tr>
          <tr>
            <td>Address</td>
            <td><input name="address" type="text" id="address" required></td>
          </tr>
          <tr>
            <td>Mobile</td>
            <td><label>
            <input name="mobile" type="number" id="mobile" class="number" required>
          </tr>
          <tr>
            <td>Theft place </td>
            <td><input name="place" type="text" id="place" required></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td align="center"><label>
              <input type="submit" name="Submit" value="Submit">
              <input type="submit" name="Cancel" id="Cancel" value="Cancel">
            </label></td>
          </tr>
        </table>
      </form>
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

