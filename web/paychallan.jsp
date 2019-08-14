<%@include file="headder.jsp" %>
    <div id="menu"><%@include file="sothinkmenu.jsp"%></div>
        <div id="detail">
            <div id="lchild"><%@include file="sidemenu2.jsp"%></div>
             <div id="rchild">
         <%@include file="connection.jsp"%>
         
         <%
         String challno = request.getParameter("challno");
         String chalno="",dat="", lstdat="", ctype="", amt="", vchno="", nme="", add="", mbl="", gndr="", sta="";
            if(request.getParameter("Pay")!=null)
            {
                
                String mobile = request.getParameter("mobile");
                String date = request.getParameter("date");
                String vechno = request.getParameter("vechno");
                String name = request.getParameter("name");
                String license = request.getParameter("license");
                String type = request.getParameter("type");
                String amount = request.getParameter("amnt");
                String cc = request.getParameter("cc");
                String bank = request.getParameter("bank");
                String branch = request.getParameter("branch");
                String status="Paid";
                
                st.executeUpdate("insert into paychallan values ('"+challno+"' , '"+mobile+"', '"+date+"', '"+vechno+"', '"+name+"', '"+license+"', '"+type+"', '"+cc+"', '"+amount+"', '"+bank+"', '"+branch+"')");
                st.executeUpdate("update create_challan set Status='"+status+"' where challan_no='"+challno+"'");
        %><script>alert('Record is inserted')</script>
                <%
            }
            if(request.getParameter("Cancel")!=null)
                {
                response.sendRedirect("afteroperator.jsp");
            }
            
            if(request.getParameter("Search")!=null)
                {
               ResultSet rs =  st.executeQuery("select * from create_challan where challan_no='"+challno+"'");
                while(rs.next())
                  {
                    
                      chalno= rs.getString("challan_no");
                      dat = rs.getString("date");
                      lstdat = rs.getString("last_date");
                      ctype = rs.getString("c_type"); 
                      amt = rs.getString("amount");
                      vchno = rs.getString("vehicle_no");
                      nme = rs.getString("name");
                      add =rs.getString("address");
                      mbl = rs.getString("mobile");
                      gndr = rs.getString("gender");
                      sta = rs.getString("Status");
                  }
                }
         %>
         
        <form name="form1" method="post" action="">
          <p align="center">Pay Challan</p>
          <div align="center">
            <table width="361" height="364" border="1">
              <tr>
                <td>Challan No. :</td>
                <td><label for="challno"></label>
                <input type="text" name="challno" required id="challno" value="<%out.println(chalno);%>"></td>
              </tr>
              <tr>
                <td>Mobile :</td>
                <td><input type="text" name="mobile" required id="mobile" value="<%out.println(mbl);%>"></td>
              </tr>
              <tr>
                <td>Date :</td>
                <td><input type="text" name="date" required id="date" value="<%out.println(dat);%>"></td>
              </tr>
              <tr>
                <td>Vehicle No. :</td>
                <td><input type="text" name="vechno" required id="vechno" value="<%out.println(vchno);%>"></td>
              </tr>
              <tr>
                <td>Name :</td>
                <td><input type="text" name="name" required id="name" value="<%out.println(nme);%>"></td>
              </tr>
              <tr>
                <td>License No. :</td>
                <td><input type="text" name="license" required id="license" ></td>
              </tr>
              <tr>
                <td>Type :</td>
                <td><label for="type"></label>
                  <select name="type" id="type" required value="<%out.println(ctype);%>">
                   <option value="Single">Signal break</option>
                    <option value="Three Tire">Three seater</option>
                    <option value="Four tire">Rash Driving</option>
                    <option value="Four tire">No license</option>
                    <option value="Four tire">Teen age</option>
                </select></td>
              </tr>
              <tr>
                <td>Amount :</td>
                <td><input type="number" required name="amnt" id="amnt"></td>
              </tr>
              <tr>
                <td>Credit Card :</td>
                <td><input type="text" name="cc" id="cc"></td>
              </tr>
              <tr>
                <td>Bank Name :</td>
                <td><input type="text" name="bank" required id="bank"></td>
              </tr>
              <tr>
                <td>Branch :</td>
                <td><input type="text" name="branch" required id="branch"></td>
              </tr>
              <tr>
                <td colspan="2"><div align="center">
                  <input type="submit" name="Pay" id="Pay" value="Pay">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;
                  <input type="submit" name="Cancel" id="Cancel" value="Cancel"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;
                   
                </div></td>
              </tr>
            </table>
          </div>
      <p>&nbsp;</p>
        </form>
        <script>
            var field1 = new LiveValidation( 'challno' );
field1.add( Validate.Presence);
            
        </script>
<h2>&nbsp;</h2></div></div>
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

