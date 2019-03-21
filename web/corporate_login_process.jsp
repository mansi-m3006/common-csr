<%@ page import ="java.sql.*" %>
<% 
//    String comp_name=(String)session.getAttribute("comp_name"); 
    String userid = request.getParameter("username");    
    String pwd = request.getParameter("password");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login",
            "root", "");
    Statement st = con.createStatement();
    ResultSet rs,rs1;
    rs = st.executeQuery("select * from corporate_data where user_name='" + userid + "' and password='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("userid", userid);
        session.setAttribute("comp_name", rs.getString("comp_name") );
        session.setAttribute("cin", rs.getString("cin") );
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("after_corporate_login.jsp");
    } else {%>
    <script>
        window.alert("Invalid User Name / Password");
        setTimeout(null,30000);
    </script>
    <%           response.sendRedirect("corporate_login.jsp");
    }
%>