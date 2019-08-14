<%@include file="headder.jsp" %>
    <div id="menu"><%@include file="sothinkmenu.jsp"%></div>
    <div id="detail">
        <div id="lchild"><%@include file="sidemenu2.jsp"%></div>
    <div id="rchild">
        <% response.sendRedirect("mainpage.jsp");%>
         </div>
    </div>
    </body>
</html>
