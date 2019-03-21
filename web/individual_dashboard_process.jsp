<%-- 
    Document   : dashboard_process
    Created on : Mar 3, 2019, 2:40:07 PM
    Author     : HP
--%>
<%@ page import ="java.sql.*" %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% try{
           String d=null;
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root", "");
   PreparedStatement stmt;
   ResultSet rs;
            
            String D=request.getParameter("D");
            String comp_name=(String)session.getAttribute("comp_name");
            String collaborating_individual=request.getParameter("collaborating_individual1");
            String event_type=request.getParameter("event_type1");
            
            if(D=="agree"){ d="accepted";}else{ d="rejected"; } 
                stmt = con.prepareStatement("Update individual_collab set status='"+d+"' where COMPANY='"+comp_name+"'AND collaborating_individual='"+collaborating_individual+"'AND event_type='"+event_type+"'");
                stmt.executeUpdate();
                response.sendRedirect("dashboard.jsp");
            }catch(Exception ee){ out.write("error"+ee);}
         %>
    </body>
</html>
