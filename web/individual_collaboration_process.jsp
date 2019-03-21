
<%@ page import ="java.sql.*" %>
<%@ page import ="java.util.*" %>

<%  
    String company = request.getParameter("comp_name1");
    String collaborating_company = (String)session.getAttribute("comp_name");    
    //String type_of_collaboration = request.getParameter("type_of_collaboration");
    String event_type = request.getParameter("event_type1");
    String fund_value = request.getParameter("fund_value");
    String resources_value = request.getParameter("resource_value");
    String volunteering_value = request.getParameter("volunteering_value");
    String services_value = request.getParameter("services_value");
    String others_value = request.getParameter("others_value");
    String[] collaboration=request.getParameterValues("collaboration");
   
    String status="pending";
    java.util.Date collaboration_req_time=new java.util.Date("dd/MM/yyyy");
     try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root", "");
    PreparedStatement stmt = con.prepareStatement("Insert into collaboration_data values(?,?,?,?,?)");
            stmt.setString(1,company);
            stmt.setString(2,event_type);
            stmt.setString(3,collaborating_company);
            stmt.setString(4,collaboration_req_time+"");
            stmt.setString(5,status);
            stmt.setString(6,type_of_collaboration);
            stmt.setString(7,funds);
            stmt.setString(8,resources);
            stmt.setString(9,status);
            stmt.setString(10,status);
            stmt.setString(11,status);
            
            int i=stmt.executeUpdate();
            System.out.println("Done");
            
            if (i > 0) {
                response.sendRedirect("after_corporate_login.jsp");
              //response.sendRedirect("corporate_welcome.jsp");
              //out.print("Registration Successfull!"+"<a href='corporate_login.jsp'>Go to Login</a>");
    
            } else {
             response.sendRedirect("corporate_collaboration.jsp");
          }
           
    }catch(SQLException ee){
       System.out.println("error"+ee);
    }  
%>