<%-- 
    Document   : verify_otp
    Created on : Feb 22, 2019, 5:01:36 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% // String name=(String)session.getAttribute("name");
           //String email=(String)session.getAttribute("email");
           //String phone=(String)session.getAttribute("phone");
           int otp= (Integer) session.getAttribute("otp");
           String otpvalue=request.getParameter("otpvalue");
           int enterOtp=Integer.parseInt(otpvalue);
           if(otp==enterOtp){
              response.sendRedirect("corporate_signup_process.jsp");
           }else{
                out.write("<h1>invalid otp</h1>");
               out.write("<a href='.jsp'><h2>Resend OTP </h2></a>");
                }
        %>
    </body>
</html>
