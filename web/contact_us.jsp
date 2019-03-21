

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel='stylesheet' type='text/css'>
    
        <link href="main.css">
        <style>
		
	
	h1{	
            
            font-size: 100px;
            text-align: center;
            font-family: scream real;
            background:url(images/green_star.jpg);
            color:rgba(0,102,0,.1);
            -webkit-background-clip:text;
            animation-name: a;
            animation-duration:0.5s;
            animation-iteration-count:infinite;
            animation-timing-function: linear;

}

	@keyframes a{
		0%{background-position:top 0 left 0;}
		100%{background-position: top 0 left 300px;}

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
    <div style="height:20%;">
        <%@include file="header.jsp" %>
    </div>
    <div style="height:60%"><center>
            <center>
          <table cellpadding="10px" ><tr><td ><img src="images/logo_1.png" style="border-radius: 50%"/>  </td><td><h1>SOCIAL VISIONERS</h1></td></tr></table>
      </center>
        <table>
            <table>
        <tr>
            <th><center>OUR TEAM</center></th>
            <th><center>CONTACT DETAILS</center></th>
        </tr>
        <tr>
            <td><center><b>TEAM LEADER-</b> MAYANK JINDAL</center></td>
            <td><center><b>COLLEGE-</b> MEERUT INSTITUTE OF ENGINEERING AND TECHNOLOGY</center></td>
        </tr>
        <tr>
            <td><center>NIKITA GUPTA</center></td>
            <td><center><i class="fa fa-phone"></i><font style="font-size: 18px; font-weight: bold;">0121-2439439</center></td>
        </tr>
        <tr>
            <td><center>LAKSHAY GUGLANI</center></td>
            <td><center><i class="fa fa-google"></i><font style="font-size: 18px; font-weight: bold;">www.miet.ac.in</center></td>
        </tr>
        <tr>
            <td><center>MANSI MISHRA</center></td>
            <td><center><i class="fa fa-facebook"></i><font style="font-size: 18px; font-weight: bold;">www.facebook.com/mietgroup</center></td>
        </tr>
        <tr>
            <td><center>GUNJALI MOORJANI</center></td>
            <td><center><i class="fa fa-twitter"></i><font style="font-size: 18px; font-weight: bold;">www.twitter.com/mietmeerut</center></td>
        </tr>
        <tr>
            <td><center>NEHA KUMARI</center></td>
            <td><center><i class="fa fa-instagram"></i><font style="font-size: 18px; font-weight: bold;">www.instagram.com/mietmeerut</center></td>
        </tr>
        <tr>
            <td><center><b>OUR MENTORS-</b>BHAWNA GUPTA</center></td>
            <td><center><i class="fa fa-linkedin"></i><font style="font-size: 18px; font-weight: bold;">www.linkedin.com/mietgroup</center></td>
        </tr>
        <tr>
            <td><center>ARPESH SINGH</center></td>
            <td><center><i class="fa fa-youtube"></i><font style="font-size: 18px; font-weight: bold;">mietmemories</center></td>
        </tr>
    </table>
        </center>
    </div>
    
    
    <div style="height: 20%;">
        <%@include file="footer.jsp" %>
</div>>

<div>
    <%@include file="side_icons.jsp" %>
</div>
    </body>
</html>
