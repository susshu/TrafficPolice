<%@include file="headder.jsp" %>
	<div id="menu"><%@include file="sothinkmenu.jsp"%></div>
	<div id="detail">
	<div id="lchild"><%@include file="Lchild1.jsp"%></div>
	
     <div id="rchild">
         
         <%@include file="connection.jsp"%>
         
         <%
            if(request.getParameter("Submit")!=null)
            {
                String name = request.getParameter("name");
                String mobile = request.getParameter("mobile");
                String gender = request.getParameter("gender");
                String address = request.getParameter("address");
                String email = request.getParameter("email");
                String suggest = request.getParameter("suggest");
                
                st.executeUpdate("insert into feedback_form values ('"+name+"' , '"+mobile+"', '"+gender+"', '"+address+"', '"+email+"', '"+suggest+"')");

        %><script>alert('Thank you for your Feedback......')</script>
                <%
            }
         %>
       <form name="form1" method="post" action="">
         <table width="426" border="1">
           <tr>
             <td width="92">Name </td>
             <td width="318"><label>
               <input name="name" type="text" id="name">
             </label></td>
           </tr>
           <tr>
             <td>Mobile</td>
             <td><label>
             <input name="mobile" type="text" id="mobile">
             </label></td>
           </tr>
           <tr>
             <td>Gender</td>
             <td><label>
             <input name="gender" type="text" id="gender">
             </label></td>
           </tr>
           <tr>
             <td>Address</td>
             <td><label>
             <input name="address" type="text" id="address">
             </label></td>
           </tr>
           <tr>
             <td>Email</td>
             <td><label>
             <input name="email" type="text" id="email">
             </label></td>
           </tr>
           <tr>
             <td>Suggestion</td>
             <td><label for="suggest"></label>
             <textarea name="suggest" rows="4" id="suggest"></textarea></td>
           </tr>
           <tr>
             <td>&nbsp;</td>
             <td><label>
               <input type="submit" name="Submit" value="Submit">
               <input type="submit" name="Cancel" id="Cancel" value="Cancel">
             </label></td>
           </tr>
         </table>
       </form>
       <script>   
           
            var f4 = new LiveValidation('email');
f4.add( Validate.Presence );
            var f5 = new LiveValidation('mobile');
f5.add( Validate.Presence );
        </script>
      </div>
      </div>
    </body>
</html>
