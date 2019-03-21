<%@ page import ="java.sql.*" %>

<%
    String event_name = request.getParameter("event_name");    
    String event_type = request.getParameter("event_type");
    String description = request.getParameter("description");
    String want_collaboration = request.getParameter("want_collaboration");
    String start_date = request.getParameter("start_date");
    String end_date = request.getParameter("end_date");
    String event_days = request.getParameter("event_days");
    String event_venue= request.getParameter("event_venue");
    String state = request.getParameter("state");
    String district = request.getParameter("district");
    String pin_code = request.getParameter("pin_code");
    
       
    try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login",
            "root", "");
    PreparedStatement stmt = con.prepareStatement("Insert into event_data values(?,?,?,?,?,?,?,?,?,?,?,?)");
            stmt.setString(1,event_name );
            stmt.setString(2,event_type);
            stmt.setString(3,description);
            stmt.setString(4,want_collaboration);
            stmt.setString(5,start_date);
            stmt.setString(6,end_date);
            stmt.setString(7,event_days);
            stmt.setString(8,event_venue);
            stmt.setString(9,state);
            stmt.setString(10,district);
            stmt.setString(11,pin_code);
            stmt.setString(12,"");
            
           
            int i=stmt.executeUpdate();
            System.out.println("Done");
            
            if (i > 0) {
                response.sendRedirect("auto_suggestion_generation.jsp");
              //response.sendRedirect("corporate_welcome.jsp");
              //out.print("Registration Successfull!"+"<a href='corporate_login.jsp'>Go to Login</a>");
    
            } else {
             response.sendRedirect("individual_signup.jsp");
          }
           
    }catch(SQLException ee){
       System.out.println("error"+ee);
    }  
%>