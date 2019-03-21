<%@ page import ="javax.mail.internet.*" %>
<%@ page import ="javax.mail.*" %>
<%@ page import ="java.util.*" %>
<%@ page import ="java.util.Properties" %>
<%@ page import ="java.text.SimpleDateFormat" %>
<%@ page import ="java.sql.*" %> 
<%@ page import ="java.util.Date" %>

<%  
    String company = (String)session.getAttribute("comp_name1");
    String collaborating_company = (String)session.getAttribute("comp_name");    
    //String type_of_collaboration = request.getParameter("type_of_collaboration");
    String event_type = (String)session.getAttribute("event_type1");
    String event_name = (String)session.getAttribute("event_name1");
    String fund_value = request.getParameter("fund_value");
    String resources_description = request.getParameter("resources_desription");
    String volunteering_days = request.getParameter("volunteering_days");
    String services_description= request.getParameter("services_description");
    String others_description = request.getParameter("others_description");
    String[] collaboration=request.getParameterValues("collaboration");
   
    String status="pending";
    //java.util.Date collaboration_req_time=new java.util.Date("dd/MM/yyyy");
    Date date=new Date();
    SimpleDateFormat formatter=new SimpleDateFormat("yyyy/MM/dd");
    String collaboration_req_time=formatter.format(date);
     try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root", "");
    
     Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select head_mail from corporate_data where comp_name="+company+"");
        rs.next();
        out.write(company);
        String toWhom=rs.getString(1);
      
      out.write("Arpesh");
       
    
    PreparedStatement stmt = con.prepareStatement("Insert into collaboration values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
            stmt.setString(1,company);
            stmt.setString(2,event_name);
            stmt.setString(3,event_type);
            stmt.setString(4,collaborating_company);
            stmt.setString(5,collaboration_req_time+"");
            stmt.setString(6,status);
            
            int i;
            for(i =0;i<collaboration.length;i++)
            {
               
            if(collaboration[i].equals("1")){
            stmt.setString(7,"yes");
             stmt.setString(12, fund_value);
            }else{ stmt.setString(7,"no");
             stmt.setString(12, null);}
            
            if(collaboration[i].equals("2")){
             stmt.setString(8,"yes");
             stmt.setString(13, resources_description);
            }else{ stmt.setString(8,"no");
             stmt.setString(13, null);}
            
            if(collaboration[i].equals("3")){
             stmt.setString(9,"yes");
             stmt.setString(14, volunteering_days);
            }else{ stmt.setString(9,"no");
             stmt.setString(14, null);}
            
            if(collaboration[i].equals("4")){
              
             stmt.setString(10,"yes");
             stmt.setString(15, services_description);
            }else{ stmt.setString(10,"no");
             stmt.setString(15, null);}
            
            if(collaboration[i].equals("5")){
           
             stmt.setString(11,"yes");
             stmt.setString(16, others_description);
            }else{ stmt.setString(11,"no");
             stmt.setString(16, null);}
            }
           
            
            int j=stmt.executeUpdate();
     
            
            if (j > 0) {
                
//                String to="destinationisajourney@gmail.com";//change accordingly
////Get the session object
//Properties props = new Properties();
//props.put("mail.smtp.type", "javax.mail.Session");
//props.put("mail.smtp.host", "smtp.gmail.com");
//props.put("mail.smtp.starttls.enable", "true");
//props.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
//props.put("mail.smtp.auth", "true");
//props.put("mail.smtp.ssl", "true");
//props.put("mail.smtp.port", "888");
//
//Session session1 = Session.getInstance(props, new javax.mail.Authenticator() {
//protected PasswordAuthentication getPasswordAuthentication() {
//return new PasswordAuthentication("destinationisajourney@gmail.com","anybodycanbeanything");//Put your email id and password here
//}
//});
////compose message
//try {
//MimeMessage message = new MimeMessage(session1);
//message.setFrom(new InternetAddress("destinationisajourney@gmail.com"));//change accordingly
//message.addRecipient(Message.RecipientType.TO,new InternetAddress(toWhom));
//message.setSubject("Collaboration request mail");
//message.setText("  Thank you for creating Event : Event_name on our CSR portal.A company wants to collaborate with you"
//        + " and help you to conduct the event" +event_name+
//        "The way in which they can give you a helping hand along with the details of the company are mentioned below:"
//        +"Company name :"+collaborating_company+
//         "How can they help and collaborate? :"+
//         "You can contact the company for further details and negotiate in any case."+
//         "Once you accept the collaboration request of this company you can let us know"+
//         "via mail or you can update and add it in your account in the company registered"
//                 + " category corresponding to your event.  ");
////send message
//       Transport.send(message);
//       out.println("message sent successfully");
//       } catch (MessagingException e) {throw new RuntimeException(e);}               
//


                
                response.sendRedirect("after_corporate_login.jsp");
              //response.sendRedirect("corporate_welcome.jsp");
              //out.print("Registration Successfull!"+"<a href='corporate_login.jsp'>Go to Login</a>");
    
            } else {
             response.sendRedirect("corporate_signup.jsp");
          }
           
    }catch(SQLException ee){
       out.println("error"+ee);
    }  
%>