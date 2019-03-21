<%-- 
    Document   : events
    Created on : Feb 23, 2019, 12:00:14 PM
    Author     : HP
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
        
table {
  width: 800px;
  border-collapse: collapse;
  overflow: hidden;
  box-shadow: 0 0 20px rgba(0,0,0,0.1);
}

th,
td {
  padding: 15px;
  background-color: rgba(255,255,255,0.2);
  color:black;
}

th {
  text-align: left;
}

thead {
  th {
    background-color: #55608f;
  }
}

tbody {
  tr {
    &:hover {
      background-color: rgba(255,255,255,0.3);
    }
  }
  td {
    position: relative;
    &:hover {
      &:before {
        content: "";
        position: absolute;
        left: 0;
        right: 0;
        top: -9999px;
        bottom: -9999px;
        background-color: rgba(255,255,255,0.2);
        z-index: -1;
      }
    }
  }
}


    </style>

    </head>
    <body>
        <div style="height:20%;" >
        <%@include file="header.jsp" %>
    </div>
    
      <%    
        try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root", "");
   PreparedStatement stmt;
   PreparedStatement stmt1;
   PreparedStatement stmt2;
   ResultSet rs,rs1,rs2,result;
   
   
   %>
    
    <div style="height:60%;">
    <center>
        <table >
        <caption><h1>UP COMING EVENTS</h1></caption>
        <tr>
            <th>ORGANIZING COMPANY</th>
            <th>EVENT TYPE</th>
            <th>EVENT NAME</th>
            <th>EVENT LOCATION</th>
            <th>EVENT DATE</th>
            <th>REGISTERED COMPANIES</th>
            
        </tr>
        
        <%  String registered_company=""; 
            stmt2 = con.prepareStatement("select cin,event_type,event_venue,event_name,start_date from event_data where SYSDATE()<Date(start_date) order by start_date");
    
    rs1=stmt2.executeQuery();
     while(rs1.next()){
      String cin1 = rs1.getString("cin");
      String event_type1=rs1.getString("event_type");
     
      stmt1= con.prepareStatement("select comp_name from corporate_data where cin='"+cin1+"'");
      
       result=stmt1.executeQuery();
       result.next();
       String comp_name1=result.getString("comp_name");
       
       stmt = con.prepareStatement("select collaborating_company from collaboration where company='"+comp_name1+"' and status='accepted' and event_type='"+event_type1+"'");
       rs2=stmt.executeQuery();
       while(rs2.next()){
        registered_company=registered_company+" "+rs2.getString("collaborating_company");
         }
     
       String event_name1 =rs1.getString("event_name");
       String event_venue1 =rs1.getString("event_venue");
       String start_date1 =rs1.getString("start_date");
%>
<tr>
<td><%=comp_name1 %></td> 
<td><%=event_type1 %></td>
<td><%=event_name1 %></td>
<td><%=event_venue1%></td>
<td><%=start_date1 %></td>
<td><%=registered_company%></td>


</tr>
<% } %>
      

      
   
    </table>
        
        <table>
        <caption><h1>PREVIOUS EVENTS</h1></caption>
        <tr>
            <th>ORGANIZING Company</th>
            <th>EVENT NAME</th>
            <th>EVENT TYPE</th>
            <th>EVENT LOCATION</th>
            <th>EVENT DATE</th>
            <th>REGISTERED COMPANIES</th>
    
        </tr>
              
        <%   registered_company=""; 
            stmt2 = con.prepareStatement("select cin,event_type,event_venue,event_name,start_date from event_data where SYSDATE()>Date(start_date) order by start_date desc");    
    rs1=stmt2.executeQuery();
     while(rs1.next()){
      String cin1 = rs1.getString("cin");
      String event_type1=rs1.getString("event_type");
     
      stmt1= con.prepareStatement("select comp_name from corporate_data where cin='"+cin1+"'");
      
       result=stmt1.executeQuery();
       result.next();
       String comp_name1=result.getString("comp_name");
       
       stmt = con.prepareStatement("select collaborating_company from collaboration where company='"+comp_name1+"' and status='accepted' and event_type='"+event_type1+"'");
       rs2=stmt.executeQuery();
       while(rs2.next()){
        registered_company=registered_company+" "+rs2.getString("collaborating_company");
         }
     
       String event_name1 =rs1.getString("event_name");
       String event_venue1 =rs1.getString("event_venue");
       String start_date1 =rs1.getString("start_date");
%>
<tr>
<td><%=comp_name1 %></td> 
<td><%=event_type1 %></td>
<td><%=event_name1 %></td>
<td><%=event_venue1%></td>
<td><%=start_date1 %></td>
<td><%=registered_company%></td>


</tr>
<% }  }  catch(Exception ee){
       out.println("error:"+ee);
    }  
%>  
        
    </table>
    
        </center>   
    </div>
    <div style="height:20%">
        <%@include file="footer.jsp" %>
    </div>
        <%@include file="side_icons.jsp" %>
    </body>
</html>
