<%@page import="java.lang.String"%>
<%@ page import ="java.sql.*" %>
    <%String user_name=(String)session.getAttribute("username");%>
   <%  String password = request.getParameter("new_password");    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login",
            "root", "");
    Statement st = con.createStatement();
    String query="UPDATE corporate_data SET password='"+password+"' where user_name=' "+user_name+" '";
    st.executeUpdate("query");
    response.sendRedirect("after_corporate_login.jsp");
  %>
