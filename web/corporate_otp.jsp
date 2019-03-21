
<%@page import="java.io.*" %>
<%@page import ="java.sql.*" %>
<%@page import="java.net.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="main.css" rel="stylesheet" media="all">
    </head>
    <body>
         <%@include file="header.jsp" %>
     <% int otp=1000+(int)(Math.random()*28);
           session.setAttribute("otp",otp);
           
   String user_name = request.getParameter("user_name");    
    String password =request.getParameter("password");
    String name = request.getParameter("name");
    String designation = request.getParameter("designation");
    String mobile = request.getParameter("mobile");
    String mail = request.getParameter("mail");
    String comp_name = request.getParameter("comp_name");
    String comp_mobile= request.getParameter("comp_mobile");
    String comp_email = request.getParameter("comp_mail");
    String address = request.getParameter("address");
    String state = request.getParameter("state");
    String district = request.getParameter("district");
    String pin_code= request.getParameter("pin_code");
    String head_name = request.getParameter("head_name");
    String head_mail = request.getParameter("head_mail");
    String head_mobile =request.getParameter("head_mobile");
    String cin = request.getParameter("cin");
    String comp_phone = request.getParameter("comp_phone");
    
     session.setAttribute("user_name",user_name);    
    session.setAttribute("password",password);
    session.setAttribute("name",name);
     session.setAttribute("designation",designation);
    session.setAttribute("mobile",mobile);
     session.setAttribute("mail",mail);
    session.setAttribute("comp_name",comp_name);
    session.setAttribute("comp_mobile",comp_mobile);
    session.setAttribute("comp_mail",comp_email);
    session.setAttribute("address",address);
    session.setAttribute("state",state);
    session.setAttribute("district",district);
    session.setAttribute("pin_code",pin_code);
    session.setAttribute("head_name",head_name);
   session.setAttribute("head_mail",head_mail);
    session.setAttribute("head_mobile",head_mobile);
    session.setAttribute("cin",cin);
    session.setAttribute("comp_phone",comp_phone);
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root", "");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select comp_phone from cin_table where cin='" + cin + "' and comp_name=' "+comp_name+"'and comp_phone='"+comp_phone+"'");
    if (rs.next()) {
        try{
             String apiKey="apikey="+"Z9IKWIJz0dI-wTUzfNfUX4KqNrGoCYJcgzCAePTnlw  ";
            String message="&message="+"your one time otp is"+otp;
            String sender="&sebder"+"txtlocal";
            String numbers="&numbers="+head_mobile;
            
            HttpURLConnection conn=(HttpURLConnection)new URL("https://api.textlocal.in/send/?").openConnection();
            String data=apiKey+numbers+message+sender;
            conn.setDoOutput(true);
            conn.setRequestMethod("POST");
            conn.setRequestProperty("Content-Length",Integer.toString(data.length()));
            
            conn.getOutputStream().write(data.getBytes("UTF-8"));
            final BufferedReader rd=new BufferedReader(new InputStreamReader(conn.getInputStream()));
            final StringBuffer stringBuffer=new StringBuffer();
            String line;
            while ((line=rd.readLine())!=null){
                //out.write("message:"+line);
            }
            rd.close();
           }catch(Exception ee){
                  out.write("error:"+ee);
                                }%>
          
          <div class="page-wrapper p-t-45 p-b-50">
        <div class="wrapper wrapper--w790">
            <div class="card card-5">
                <div class="card-heading">
                    <h2 class="title">Enter One-Time-Password</h2>
                </div>
                <div class="card-body">
                    <form method="POST" action="corporate_verify_otp.jsp">
                       
                	<div class="form-row">
                            <div class="name">OTP</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="text" name="otpvalue">
                                </div>
                            </div>
                        </div>
	                <center>
                        <div>
                            <button class="btn btn--radius-2 btn--green" value="login" type="submit">Submit</button>
                        </div>
	        	</center>
                                </div>
            </div>
        </div>
    </div>
 </form>

      <% }else{
               out.write("<h1>invalid User</h1>");
               out.write("<a href='corporate_signup.jsp'><h2>go onto the signup page </h2></a>");
              } %>
          <%@include file="footer.jsp" %>
    <%@include file="side_icons.jsp" %>                      
    </body>
</html>