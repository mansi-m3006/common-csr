<%@page import ="java.sql.*" %>
<%  String user_name=(String)session.getAttribute("username");
out.write("hi"+user_name);
    
    String  suggested_district= request.getParameter("district");
    String suggested_event_type = request.getParameter("event_type");
    String suggested_state = request.getParameter("state");
    String any_comments = request.getParameter("comment"); %>
    
  <%  try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login",
            "root", "");
    PreparedStatement stmt = con.prepareStatement("Insert into event_suggesions values(?,?,?,?,?)");
            stmt.setString(1,user_name );
            stmt.setString(2,suggested_state);
            stmt.setString(3,suggested_district);
            stmt.setString(4,suggested_event_type);
            stmt.setString(5,any_comments);
            
            int i=stmt.executeUpdate();
            out.println("Done");
            if (i > 0) {
                out.write("suggestion filled successfuly");
              //response.sendRedirect(".jsp");
              //out.print("Registration Successfull!"+"<a href='corporate_login.jsp'>Go to Login</a>");
    
            } else {
             out.write("give suggestion again");
          }
           
    }catch(SQLException ee){
      out.println("error"+ee);
    }  
%>