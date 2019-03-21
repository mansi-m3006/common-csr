<%@page import="java.io.*" %>
<%@page import ="java.sql.*" %>
<%@page import="java.net.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <title></title>
    <link href="main.css" rel="stylesheet" media="all">
</head>

<body>
    
    <%@include file="header.jsp" %>
     <% int otp=1000+(int)(Math.random()*28);
           session.setAttribute("otp",otp);
           
            String user_name = request.getParameter("user_name");    
    String password = request.getParameter("password");
    String name = request.getParameter("name");
    String dob = request.getParameter("dob");
    String mobile = request.getParameter("mobile");
    String email = request.getParameter("email");
    //String profession = request.getParameter("profession");
    String aadhar= request.getParameter("aadhar");
    String gender = request.getParameter("gender");
    String areas_of_interest = request.getParameter("areas_of_interest");
    String state = request.getParameter("state");
    String address = request.getParameter("address");
    String pin_code = request.getParameter("pin_code");
    
           session.setAttribute("user_name",user_name);
           session.setAttribute("password",password);
           session.setAttribute("name",name);
           session.setAttribute("dob",dob);
           session.setAttribute("mobile",mobile);
           session.setAttribute("email",email);
           //session.setAttribute("profession",profession);
           session.setAttribute("aadhar",aadhar);
           session.setAttribute("gender",gender);
           session.setAttribute("areas_of_interest",areas_of_interest);
           session.setAttribute("state",state);
           session.setAttribute("address",address);
           session.setAttribute("pin_code",pin_code);
           
        
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root", "");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select mobile from aadhar where aadhar='" + aadhar + "'");
    if (rs.next()) {
            
        
        try{
            String apiKey="apikey="+"Z9IKWIJz0dI-wTUzfNfUX4KqNrGoCYJcgzCAePTnlw  ";
            String message="&message="+"your one time otp is"+otp;
            String sender="&sebder"+"txtlocal";
            String numbers="&numbers="+mobile;
            
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
             out.write("message:"+line);
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
                    <form method="POST" action="individual_verify_otp.jsp">
                       
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
               out.write("<h1>invalid aadhar</h1>");
               out.write("<a href='individual_signup.jsp'><h2>go onto the signup page </h2></a>");
              } %>
                           
    <%@include file="footer.jsp" %>
    <%@include file="side_icons.jsp" %>
</body>
</html>