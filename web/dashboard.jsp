<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
        <style>
table {
  width: 90%;
  margin-left: 5%;
  margin-right: 5%;
  border-collapse: collapse;
  overflow: hidden;
  box-shadow: 0 0 20px rgba(0,0,0,0.1);
}

th,
td {
    max-width: 1%;
  padding: 5px;
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
        <%@include file="corporate_header.jsp" %>
    </div>
    
     <%    
        try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root", "");
   PreparedStatement stmt;
   //PreparedStatement stmt1;
   //PreparedStatement stmt2;
   ResultSet rs1;
   
   
   %>
    
    <div style="height:60%;">
       <center>
        <table >
        <caption><h1>PENDING REQUESTS BY CORPORATES</h1></caption>
        <tr>
             <th>Event Name </th>             
            <th>Company Name</th>
            <th>Type Of Collaboration</th>
            <th>Status</th>
            <th>Action</th>
            
        </tr>
        <tr>
            <% 
                String company = (String)session.getAttribute("comp_name");
               
                
            stmt= con.prepareStatement("select * from collaboration where status='pending' and COMPANY='"+company+"'");
             rs1=stmt.executeQuery();
    if(rs1.next()){        
         do{
            
            String type_of_collaboration="";
         
      String collaborating_company = rs1.getString("collaborating_company");
      String event_name=rs1.getString("event_name");
      String fund=rs1.getString("fund");
      String resources=rs1.getString("resources");
      String volunteer=rs1.getString("volunteer");
      String services=rs1.getString("services");
      String others=rs1.getString("others");
      String status=rs1.getString("status");
      
      String fund_value=rs1.getString("fund_value");
     String resources_description=rs1.getString("resources_description");
      String volunteering_days=rs1.getString("volunteering_days");
      String services_description=rs1.getString("services_description");
      String other_description=rs1.getString("other_description");
      
      if(fund.equals("yes")){ type_of_collaboration=type_of_collaboration+"funds:"+fund_value+"<br>" ;}
      if(resources.equals("yes")){ type_of_collaboration=type_of_collaboration+"resources:"+resources_description+"<br>" ;}
      if(volunteer.equals("yes")){ type_of_collaboration=type_of_collaboration+"volunteer:"+volunteering_days+"<br>" ;}
      if(services.equals("yes")){ type_of_collaboration=type_of_collaboration+"services:"+services_description+"<br>" ;}
      if(others.equals("yes")){ type_of_collaboration=type_of_collaboration+"others:"+other_description+"<br>" ;}
%>
<tr>
<td><%=event_name %></td> 
<td><%=collaborating_company%></td>
<td><%=type_of_collaboration %></td>
<td><%=status%></td>
<td><a href='corporate_dashboard_process.jsp?event_type="<%=event_name%>"&collaborating_company="<%=collaborating_company%>"&D="agree"'>AGREE</a><br>
    <a href='corporate_dashboard_process.jsp?event_type="<%=event_name%>"&collaborating_company="<%=collaborating_company%>"&D="disagree"'>DISAGREE</a></td>
      



</tr>
<%}while(rs1.next());
}else{%> <tr><td colspan="5"><center>NO DATA FOUND</center></td></tr> <%}%>
 
            <!--<td><button class="btn btn--radius-2 btn--green" style="max-width:100%;">AGREE</button><button class="btn btn--radius-2 btn--green" style="max-width:100%;">DISAGREE</button></td>-->
            
        <!--</tr>-->
        </table>
       </center>
    </div>

    <div style="height:60%;">
       <center>
        <table >
        <caption><h1>PENDING REQUESTS BY INDIVIDUALS</h1></caption>
        <tr>
             <th>Event Name </th>             
            <th>Individual Name</th>
            <th>Type Of Collaboration</th>
            <th>Status</th>
            <th>Action</th>
            
        </tr>
        <tr>
              <% 
                
            stmt= con.prepareStatement("select * from individual_collab where status='pending'and COMPANY='"+company+"'");
             rs1=stmt.executeQuery();
            
        if(rs1.next()){        
         do{
            
          String   type_of_collaboration="";
         
       String collaborating_individual1 = rs1.getString("collaborating_individual");
       String event_name1=rs1.getString("event_type");
       String fund1=rs1.getString("fund");
       String resources1=rs1.getString("resources");
       String volunteer1=rs1.getString("volunteer");
       String services1=rs1.getString("services");
       String others1=rs1.getString("other");
       String status1=rs1.getString("status");
      
       String fund_value1=rs1.getString("fund_value");
       String resources_description1=rs1.getString("resources_description");
       String volunteering_days1=rs1.getString("volunteering_days");
       String services_description1=rs1.getString("services_description");
       String other_description1=rs1.getString("other_description");
      
      if(fund1.equals("yes")){ type_of_collaboration=type_of_collaboration+"funds:"+fund_value1+"<br>" ;}
      if(resources1.equals("yes")){ type_of_collaboration=type_of_collaboration+"resources:"+resources_description1+"<br>" ;}
      if(volunteer1.equals("yes")){ type_of_collaboration=type_of_collaboration+"volunteer:"+volunteering_days1+"<br>" ;}
      if(services1.equals("yes")){ type_of_collaboration=type_of_collaboration+"services:"+services_description1+"<br>" ;}
      if(others1.equals("yes")){ type_of_collaboration=type_of_collaboration+"others:"+other_description1+"<br>" ;}
%>
<tr>
<td><%=event_name1 %></td> 
<td><%=collaborating_individual1%></td>
<td><%=type_of_collaboration %></td>
<td><%=status1%></td>
<td><a href="individual_dashboard_process.jsp?event_type1='<%=event_name1%>'& collaborating_individual='<%=collaborating_individual1%>'& D='agree">AGREE</a><br>
    <a href="individual_dashboard_process.jsp?event_type1='<%=event_name1%>'& collaborating_individual='<%=collaborating_individual1%>'& D='disagree">DISAGREE</a></td>
            
</tr>
<%;
    }
while(rs1.next());
}else{%> <tr><td colspan="5"><center>NO DATA FOUND</center></td></tr> <%}
  }   catch(Exception ee){
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
