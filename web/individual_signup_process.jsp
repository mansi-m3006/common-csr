<%@page import ="java.sql.*" %>

<%
    String user_name = (String)session.getAttribute("user_name");    
    String password = (String)session.getAttribute("password");
    String name = (String)session.getAttribute("name");
    String dob = (String)session.getAttribute("dob");
    String mobile = (String)session.getAttribute("mobile");
    String email = (String)session.getAttribute("email");
    //String profession = (String)session.getAttribute("profession");
    String aadhar= (String)session.getAttribute("aadhar");
    String gender = (String)session.getAttribute("gender");
    String areas_of_interest = (String)session.getAttribute("areas_of_interest");
    String state = (String)session.getAttribute("state");
    String district=(String)session.getAttribute("district");
    String address =  (String)session.getAttribute("address");
    String pin_code = (String)session.getAttribute("pin_code"); %>
    
    
  <%  try{
    Class.forName("com.mysql.jdbc.Driver"); out.println("connection1 ");

    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root", "");
            out.println("connection ");

    PreparedStatement stmt = con.prepareStatement("Insert into individual_data values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
            stmt.setString(1,name);
            stmt.setString(2,dob);
            stmt.setString(3,email);
            stmt.setString(4,mobile);
            stmt.setString(5,aadhar);
            stmt.setString(6,gender);
            stmt.setString(7,areas_of_interest);
            stmt.setString(8,user_name);
            stmt.setString(9,address);
            stmt.setString(10,password);
            stmt.setString(11,state);
            stmt.setString(12,district);
            stmt.setString(13,pin_code);
           
           
            int i=stmt.executeUpdate();
               out.println("Done");
            
            if (i > 0) {
              response.sendRedirect("individual_welcome.jsp");
              //out.print("Registration Successfull!"+"<a href='corporate_login.jsp'>Go to Login</a>");
    
            } else {
             response.sendRedirect("individual_signup.jsp");
          }
           
    }catch(SQLException ee){
       out.println("error"+ee);
    }  
%>