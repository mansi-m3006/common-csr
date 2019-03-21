<%@ page import ="javax.mail.internet.*" %>
<%@ page import ="javax.mail.*" %>
<%@ page import ="java.util.*" %>
<%@ page import ="java.util.Properties" %>
<%@ page import ="java.sql.*" %>

<%! public void sendMail(String subject,String text,String toWhom){

String to="destinationisajourney@gmail.com";//change accordingly
//Get the session object
Properties props = new Properties();
props.put("mail.smtp.host", "smtp.gmail.com");
props.put("mail.smtp.socketFactory.port", "465");
props.put("mail.smtp.socketFactory.class",
"javax.net.ssl.SSLSocketFactory");
props.put("mail.smtp.auth", "true");
props.put("mail.smtp.port", "465");

Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
protected PasswordAuthentication getPasswordAuthentication() {
return new PasswordAuthentication("destinationisajourney@gmail.com","anybodycanbeanything");//Put your email id and password here
}
});
//compose message
try {
MimeMessage message = new MimeMessage(session);
message.setFrom(new InternetAddress("destinationisajourney@gmail.com"));//change accordingly
message.addRecipient(Message.RecipientType.TO,new InternetAddress(toWhom));
message.setSubject(subject);
message.setText(text);
//send message
Transport.send(message);
System.out.println("message sent successfully");
} catch (MessagingException e) {throw new RuntimeException(e);}               

}%>



<%! public int compare2Dates(String date1,String date2){
            
      return 0;
     }
%>


<%
    String comp_name = (String)session.getAttribute("comp_name");
    String comp_email = (String)session.getAttribute("comp_email");
    String comp_mobile = (String)session.getAttribute("comp_mobile");
    
    String event_name = (String)session.getAttribute("event_name");    
    String event_type = (String)session.getAttribute("event_type");
    String description = (String)session.getAttribute("description");
    String want_collaboration = (String)session.getAttribute("want_collaboration");
    String start_date = (String)session.getAttribute("start_date");
    String end_date = (String)session.getAttribute("end_date");
    String event_days = (String)session.getAttribute("event_days");
    String event_venue= (String)session.getAttribute("event_venue");
    String state = (String)session.getAttribute("state");
    String district = (String)session.getAttribute("district");
    String pin_code = (String)session.getAttribute("pin_code");
    
    try
    {    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login",
            "root", "");
    Statement st = con.createStatement();
    ResultSet rs,result,rs1;
    rs = st.executeQuery("select * from event_data where want_collaboration='" + "yes"+ "' and event_type='" + event_type + "' and comp_name!='" + comp_name + "'");
    while (rs.next()) {
        //session.setAttribute("userid", userid);
        String state1=rs.getString("state");
        String district1=rs.getString("district");
        String start_date1=rs.getString("start_date");
        String end_date1=rs.getString("end_date");
        String pin_code1=rs.getString("pin_code");
        String comp_name1=rs.getString("comp_name");
        String event_days1=rs.getString("event_days");
        String event_name1=rs.getString("event_name");
        String event_venue1=rs.getString("event_venue");
        String description1=rs.getString("description");
        String cin1=rs.getString("cin");
        
        rs1 = st.executeQuery("select * from corporate_data where comp_name='" + comp_name1 + "' and cin='" + cin1 + "'");
        String comp_mobile1=rs1.getString("comp_mobile");
        String comp_email1=rs1.getString("comp_email");
        
        
        if((compare2Dates(start_date1,start_date)<15 ) && ((Integer.parseInt(event_days1)-(Integer.parseInt(event_days))<10 ))){
            if(state1.equals(state)){
                if(district1.equals(district)){
              
                   out.print("mail to comp_name state&district=same, date may differ but event type=same u can collaborate with the comp_name1");
                   response.sendRedirect("after_corporate_login.jsp");
                }
                else{
                     
                    result = st.executeQuery("select suggested_district from event_suggestions where suggested_state='" + state + "' and event_type='"+event_type+"'");
                    if(result.next()){
                        
                        out.print("mail to comp_name and comp_name1 state=same, date may differ but event type=same u can collaborate with each other in the following "
                                + "district suggested by some individual"+result.getString("suggested_district"));
                        response.sendRedirect("after_corporate_login.jsp");
                    }else{
                        
                        out.print("mail to comp_name and comp_name1 state=same, date may differ but event type=same u can collaborate with each other ");
                        response.sendRedirect("after_corporate_login.jsp");
                    }
                
                }
           
            }else{
                
                result = st.executeQuery("select suggested_district,suggested_state from event_suggestions where suggested_event_type='" + event_type + "'");
                    if(result.next()){
                
                       out.print("mail to comp_name and comp_name1 location=not same, date may differ but event type=same u can collaborate with each other"
                        + " in the following suggested location "+result.getString("suggested_state")+""+result.getString("suggested_district"));
                       response.sendRedirect("after_corporate_login.jsp");
                     }else{
                         
                        out.print("mail to comp_name, you have the same event as the comp_name 1 in the related time period ");
                        response.sendRedirect("after_corporate_login.jsp");
                    }
             }
        
        }else{
              
             out.write("mail to comp_name,you both are organising same event.");
              response.sendRedirect("after_corporate_login.jsp");
             }
     
      }
    
    response.sendRedirect("after_corporate_login.jsp");
   
   }catch(SQLException ee){
      out.println(ee);
      response.sendRedirect("after_corporate_login.jsp");
   }
    
%>