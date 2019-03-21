<%-- 
    Document   : deletion
    Created on : Mar 1, 2019, 11:07:19 AM
    Author     : nikita
--%>

<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.Statement"%>
<%@page import="com.mysql.jdbc.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.util.concurrent.Executors"%>
<%@page import="java.util.concurrent.ScheduledExecutorService"%>
<%@page import="java.util.concurrent.ScheduledFuture"%>
<%@page import="java.util.concurrent.TimeUnit"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root", "");
    out.println("Connection....");

        ScheduledExecutorService scheduledExecutorService
                = Executors.newScheduledThreadPool(5);

        ScheduledFuture scheduledFuture
                = scheduledExecutorService.scheduleAtFixedRate(new Runnable() {
                    @Override
                    public void run() {
                        System.out.println("delete * from event_data where event_days=1 ");
                    }
                }, 0, 5, TimeUnit.SECONDS);
         out.println("Delete....");
            }catch(Exception e)
            {
                out.println("error="+e);
            }
//         to end the program add the following line
//        scheduledExecutorService.shutdown();

        %>
    </body>
</html>
