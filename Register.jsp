<%@page  errorPage="Error.jsp" %>
<%
    String e=request.getParameter("email");
    String n=request.getParameter("name");
    String ph=request.getParameter("phone");
    int a=Integer.parseInt(request.getParameter("age"));
    String p=request.getParameter("pass");
    db.DbConnection db=new db.DbConnection();
    String m=db.insertUser(e,n,ph,a,p);
    if(m.equals("Done")){
            session.setAttribute("n",n);
            session.setAttribute("e",e);
            session.setAttribute("p",ph);
            session.setAttribute("a",a);
            response.sendRedirect("Profile.jsp");
    }else if(m.equals("Already")){
        session.setAttribute("msg","Email ID Already Registered");
        response.sendRedirect("index.jsp");
    }else{
        session.setAttribute("msg","Registration Failed");
        response.sendRedirect("index.jsp");
    }
%>