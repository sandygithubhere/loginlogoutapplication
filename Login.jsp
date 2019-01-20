<%@page import="java.sql.ResultSet"%>
<%@page  errorPage="Error.jsp" %>
<%
    String e=request.getParameter("email");
    String p=request.getParameter("pass");
    db.DbConnection db=new db.DbConnection();
    ResultSet rs=db.checkUser(e,p);
    if(rs!=null){
            session.setAttribute("n",rs.getString("name"));
            session.setAttribute("e",rs.getString("email"));
            session.setAttribute("p",rs.getString("phone"));
            session.setAttribute("a",rs.getString("age"));
            response.sendRedirect("Profile.jsp");
    }else{
            session.setAttribute("msg","Invalid Id or Password");
            response.sendRedirect("index.jsp");
    }
%>