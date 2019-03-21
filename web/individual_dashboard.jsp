<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
        <style>
table {
  width: 100%;
  margin-left: 5%;
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
    <div style="height:60%;">
       <center>
        <table >
        <caption><h1>PENDING REQUESTS</h1></caption>
        <tr>
             <th>Event Name</th>             
            <th>Individual Name</th>
            <th>Type Of Collaboration</th>
            <th>Status</th>
            <th>Action</th>
            
        </tr>
        <tr>
             <td></td>             
            <td></td>
            <td></td>
            <td></th>
            <td><button class="btn btn--radius-2 btn--green" style="max-width:100%;">AGREE</button><button class="btn btn--radius-2 btn--green" style="max-width:100%;">DISAGREE</button></td>
            
        </tr>
        </table>
       </center>
    </div>
    <div style="height:20%">
        <%@include file="footer.jsp" %>
    </div>
        <%@include file="side_icons.jsp" %>
    </body>
</html>
