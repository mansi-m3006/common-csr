<%-- 
    Document   : after_individual_login
    Created on : Feb 23, 2019, 2:24:58 PM
    Author     : HP
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
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
        <%@include file="header_2.jsp" %>
    </div>
    
    <%    
        try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root", "");
   PreparedStatement stmt;
   PreparedStatement stmt1;
   PreparedStatement stmt2;
   ResultSet rs,rs1,rs2,result,rs3;
   String user_name=(String)session.getAttribute("username");
   %>
    
    
    <div style="height:60%;">
       <a href="suggestion _form.jsp"><button class="btn btn--radius-2 btn--green" style="margin-top:1cm;margin-left:1cm" type="">Suggestion</button></a>
    
       <center>
        <table >
        <caption><h1>MY INITIATIVES</h1></caption>
        <tr>
            <th>EVENT ORGANIZING COMPANY</th>
            <th>EVENT TYPE</th>
            <th>EVENT NAME</th>
            <th>STATUS</th>
            <th>EVENT LOCATION</th>
            <th>EVENT DAYS</th>
            
        </tr>
        
        <% String registered_company="";
       stmt = con.prepareStatement("select event_type,status,COMPANY from individual_collab where collaborating_individual='"+user_name+"'");
       rs=stmt.executeQuery();
       
       while(rs.next()){
       String event_type=rs.getString("event_type");
       
       String company=rs.getString("COMPANY");
       
       String status=rs.getString("status");
        
       stmt=con.prepareStatement("select cin from corporate_data where comp_name='"+company+"'");
       rs3=stmt.executeQuery();
       rs3.next();
       String cin2=rs3.getString("cin");
    
       
       stmt = con.prepareStatement("select event_days,state,district,event_venue,event_name,pin_code from  event_data where cin='"+cin2+"' and event_type='"+event_type+"'");
       rs2=stmt.executeQuery();
       rs2.next();
       String event_name=rs2.getString("event_name");
       String event_venue=rs2.getString("event_venue");
       String event_district=rs2.getString("district");
       String event_state=rs2.getString("state");
        String pin_code=rs2.getString("pin_code");
       String event_days=rs2.getString("event_days");
       String event_location=event_venue+", "+event_district+", "+event_state+", "+pin_code; 
//       while(rs2.next()){
//        registered_company=registered_company+" "+rs2.getString("collaborating_company");
//         }
                %>
<tr>
<td><%=company %></td>
<td><%=event_type%></td>
<td><%=event_name%></td>
<td><%=status%></td>
<td><%=event_location%></td>
<td><%=event_days%></td>
</tr> 

<%}%>
        
    </table>
        
        <table>
        <caption><h1>UP COMING EVENTS</h1></caption>
        <tr>
            <th>Organising COMPANY</th>
            <th>EVENT TYPE</th>
            <th>EVENT NAME</th>
            <th>EVENT LOCATION</th>
            <th>EVENT DATE</th>
            <th>REGISTERED COMPANIES</th>
            <th>COLLABORATE</th>
        </tr>
        
    <%  registered_company=""; 
        stmt2 = con.prepareStatement("select cin,event_type,event_venue,event_name,start_date from event_data where SYSDATE()<Date(start_date)");
    
    rs1=stmt2.executeQuery();
     while(rs1.next()){
      String cin1 = rs1.getString("cin");
      String event_type1=rs1.getString("event_type");
      String event_name1=rs1.getString("event_name");
     
      stmt1= con.prepareStatement("select comp_name from corporate_data where cin='"+cin1+"'");
      
       result=stmt1.executeQuery();
       result.next();
       String comp_name1=result.getString("comp_name");
       
       stmt = con.prepareStatement("select collaborating_company from collaboration where company='"+comp_name1+"' and status='accepted' and event_type='"+event_type1+"'");
       rs2=stmt.executeQuery();
       while(rs2.next()){
        registered_company=registered_company+" "+rs2.getString("collaborating_company");
         }
    
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
<td><center><a href="individual_collaboration.jsp?comp_name1="<%=comp_name1%>"&event_type1="<%=event_type1 %>"&event_name1="<%=event_name1 %>"'>collaborate</a></center></td>
</tr>
<% }  }  catch(Exception ee){
       out.println("error:"+ee);
    }  
%>  
        
        
            <!--<td><center><button class="btn btn--radius-2 btn--green" style="max-width:90%;">Collaborate</button></center></td>-->
        
    </table>
           
        </center>   
    </div>
    <div style="height:20%">
        <%@include file="footer.jsp" %>
    </div>
        <%@include file="side_icons.jsp" %>
    </body>
</html>
