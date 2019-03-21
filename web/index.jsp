<%-- 
    Document   : index
    Created on : Feb 15, 2019, 2:08:44 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body style="background-image: url(images/green-background.jpg); height: 100%">
        
    
        
        <div style="width: 100%; z-index: 1000">
            <%@include file="header.jsp" %>
        </div>
        
        
        <div style="width: 100%;z-index: 0; padding-top: 1%;">
            <%@include file="slider.jsp" %>
        </div>
        
        <div style="padding-top: 1%;">
            <%@include file="body.jsp" %>
        </div>
        
        <div style="width: 100%; height: 40%; padding-top: 30%">
            <%@include file="Areas_of_work.jsp" %>
        </div>
        
        <div style="width: 100%; height: 20%">
            <%@include file="footer.jsp" %>
        </div>
        <div>
        <%@include file="side_icons.jsp" %>
        </div>
    </body>
</html>
