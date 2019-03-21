<%@ page import ="java.sql.*" %>
<%   String username=request.getParameter("username"); 
       
  
    String pwd = request.getParameter("individual_password");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login",
            "root", "");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from individual_data where user_name='" + username + "' and password='" + pwd + "'");
    
    if (rs.next()) {
    out.write(username);
        session.setAttribute("username", username);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("individual_success.jsp");
    } else {           response.sendRedirect("individual_signin.jsp");
    %>
    <script>
        window.alert("Invalid User Name / Password");
        setTimeout(null,30000);
    </script>
    <%
    }
%>