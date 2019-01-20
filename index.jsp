<html>
<body>
    <h1>Login Logout Application</h1>
    <%
        String m=(String)session.getAttribute("msg");
        if(m!=null){
    %>
    <div>
            <h3><%=m%></h3>
    </div>
    <%
            session.setAttribute("msg",null);
        }
    %>
    <form action='Login.jsp' method='post'>
    Email: <input type='email' name='email' required/> <br><br>
    Password: <input type='password' name='pass' required/> <br><br>
    <input type='submit' value='LOGIN'/>
    <input type='reset' value='RESET'/>
    </form>
    <hr>
    <h2>New User !</h2>
    <form action='Register.jsp' method='post'>
    Email: <input type='text' name='email' required/> <br><br>
    Name: <input type='text' name='name' required/> <br><br>
    Phone: <input type='text' name='phone' required/> <br><br>
    Age: <input type='text' name='age' required/> <br><br>
    Password: <input type='password' name='pass' required/> <br><br>
    <input type='submit' value='Register'/>
    <input type='reset' value='RESET'/>
    </form>
</body>
</html>