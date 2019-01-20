<%@page  errorPage="Error.jsp" %>
<%
    String e=(String)session.getAttribute("e");
    if(e!=null){
            session.invalidate();
            response.sendRedirect("index.jsp");
    }else{
        session.setAttribute("msg","Plz Login first");
        response.sendRedirect("index.jsp");
    }
%>