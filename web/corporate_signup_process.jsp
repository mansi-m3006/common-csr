<%@ page import ="java.sql.*" %>

<%
    String user_name = (String)session.getAttribute("user_name");    
    String password = (String)session.getAttribute("password");
    String name = (String) session.getAttribute("name");
    String designation = (String) session.getAttribute("designation");
    String mobile = (String) session.getAttribute("mobile");
    String mail = (String) session.getAttribute("mail");
    String comp_name = (String)session.getAttribute("comp_name");
    String comp_mobile= (String)session.getAttribute("comp_mobile");
    String comp_email = (String)session.getAttribute("comp_mail");
    String address = (String)session.getAttribute("address");
    String state = (String)session.getAttribute("state");
    String district = (String)session.getAttribute("district");
    String pin_code =(String)session.getAttribute("pin_code");
    String head_name = (String)session.getAttribute("head_name");
    String head_mail = (String)session.getAttribute("head_mail");
    String head_mobile =(String)session.getAttribute("head_mobile");
    String cin = (String)session.getAttribute("cin");
    String comp_phone = (String)session.getAttribute("comp_phone");
    //out.println("initialization....");
    
    try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login",
            "root", "");
    //out.println("Connection....");
    PreparedStatement stmt = con.prepareStatement("Insert into corporate_data values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
            stmt.setString(1,name );
            stmt.setString(2,designation);
            stmt.setString(3,mobile);
            stmt.setString(4,mail);
            stmt.setString(5,comp_name);
            stmt.setString(6,cin);
            stmt.setString(7,comp_phone);
            stmt.setString(8,comp_mobile);
            stmt.setString(9,comp_email);
            stmt.setString(10,address);
            stmt.setString(11,state);
            stmt.setString(12,district);
            stmt.setString(13,pin_code);
            stmt.setString(14,head_name);
            stmt.setString(15,head_mail);
            stmt.setString(16,head_mobile);
            stmt.setString(17,user_name);
            stmt.setString(18,password);
            int i=stmt.executeUpdate();
            out.println("Done");
            
            if (i > 0) {
              response.sendRedirect("corporate_signin.jsp");
              //out.print("Registration Successfull!"+"<a href='corporate_login.jsp'>Go to Login</a>");
    
            } else {
             response.sendRedirect("corporate_signup.jsp");
          }
           
    }catch(SQLException ee){
      out.println("error"+ee);
    }  
%>