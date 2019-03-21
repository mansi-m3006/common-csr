<%@page import="java.sql.*"%>
<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>--%>
<!DOCTYPE html>
<html>
<head>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
   <script type="text/javascript">
       
       $("button").click(function() {
    alert(this.id); // or alert($(this).attr('id'));
});
       </script>
    <link rel="stylesheet" type="text/css" href="main.css">
    <style>
        .container {
    position: absolute;
    padding-top: 20%;
    left: 50%;
    transform: translate(-50%, -50%);
    }

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
    <div id='wr'></div>
    <div style="height:60%;">
    <a href="event_creation_form.jsp"><<a href="event_creation_form.jsp"><button class="btn btn--radius-2 btn--green" style="float:left;margin-top:1cm;margin-left:5cm" type="">Create Event</button></a>
    <a href="view_suggestion.jsp"><button class="btn btn--radius-2 btn--green" style="margin-top:1cm;margin-left:5cm;float: left;" type="">View Suggestion</button></a>
    <a href="dashboard.jsp"><button class="btn btn--radius-2 btn--green" style="margin-top:1cm;margin-left:5cm;float: left;" type="">Requests</button></a>
    <%    
        try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root", "");
   PreparedStatement stmt;
   PreparedStatement stmt1;
   PreparedStatement stmt2;
   ResultSet rs,rs1,rs2,result;
   
   String comp_name=(String)session.getAttribute("comp_name");
   String cin=(String)session.getAttribute("cin");

   
   %>
   
    
    <center>
        <table>
        <caption><h1>MY INITIATIVES</h1></caption>
        <tr>
            <th>EVENT TYPE</th>
            <th>EVENT Location</th>
            <th>EVENT Date</th>
            <th>REGISTERED COMPANIES</th>
        </tr>
        
    
    <% String registered_company="";
       stmt = con.prepareStatement("select event_type,event_venue,start_date from event_data where cin='"+cin+"'");
       rs=stmt.executeQuery();
       
       while(rs.next()){
       String event_type=rs.getString("event_type");
       
       String event_venue=rs.getString("event_venue");
       
       String start_date=rs.getString("start_date");
        
       
       stmt = con.prepareStatement("select collaborating_company from collaboration where company='"+comp_name+"' and status='accepted' and event_type='"+event_type+"'");
       rs2=stmt.executeQuery();
       while(rs2.next()){
        registered_company=registered_company+" "+rs2.getString("collaborating_company");
         }
                %>
<tr>
<td><%=event_type %></td>
<td><%=event_venue%></td>
<td><%=start_date%></td>
<td><%=registered_company%></td>
</tr> 

<%}%>
    </table>
        
        <table>
        <caption><h1>OTHER'S INITIATIVES</h1></caption>
        <tr>
            <th>Organising Company</th>
            <th>EVENT TYpe</th>
            <th>EVENT Location</th>
            <th>EVENT Date</th>
<!--            <th>REGISTERED COMPANIES</th>-->
            <th>COLLABORATE</th>
        </tr>
                
     
<%  stmt2 = con.prepareStatement("select cin,event_type,event_venue,event_name,start_date from event_data where cin!='"+cin+"' and SYSDATE()<start_date");
    
    rs1=stmt2.executeQuery();
     while(rs1.next()){
      String cin1 = rs1.getString("cin");
     
      stmt1= con.prepareStatement("select comp_name from corporate_data where cin='"+cin1+"'");
      
       result=stmt1.executeQuery();
       result.next();
       String comp_name1=result.getString("comp_name");
       //String comp_name1=null;
      // if(result.getString("comp_name"));
       String event_type1 =rs1.getString("event_type");
       String event_name1 =rs1.getString("event_name");
       String event_venue1 =rs1.getString("event_venue");
       String start_date1 =rs1.getString("start_date");
%>
<tr>
<td><%=comp_name1 %></td> 
<td><%=event_type1 %></td>
<td><%=event_venue1%></td>
<td><%=start_date1 %></td>
<td><center><a href='corporate_collaboration.jsp?comp_name1="<%=comp_name1%>"&event_type1="<%=event_type1 %>"&event_name1="<%=event_name1 %>"'>collaborate</a></center></td>

</tr>
<% } %>
<% }  catch(Exception ee){
       out.println("error:"+ee);
    }  
%>        
    </table>
    
          
    </div>
    <div style="height:20%">
        <%@include file="footer.jsp" %>
    </div>
</body>
</html>

