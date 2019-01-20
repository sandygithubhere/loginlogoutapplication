<%@page  errorPage="Error.jsp" %>
<%
    String e=(String)session.getAttribute("e");
    if(e!=null){    
%>
<html>
    <body>
        <h1>Login Logout App</h1>
        <hr>
        Welcome: <%=(String)session.getAttribute("n") %> ,
        <a href='Logout.jsp'>Logout</a>
        <hr>
        <%
        Integer c=(Integer)application.getAttribute("count");
        if(c==null){
                c=0;
        }
        application.setAttribute("count",++c);
        %>
        No of Visitor: <%=c%>
        <hr>
        Email: <b> <%=(String)session.getAttribute("e")%> </b><br>
        Phone: <b> <%=(String)session.getAttribute("p")%> </b><br>
        Age <b> <%=(String)session.getAttribute("a")%> </b><br>
    </body>
</html>

<%
}else{
        session.setAttribute("msg","Plz Login first");
        response.sendRedirect("index.jsp");
}
%>