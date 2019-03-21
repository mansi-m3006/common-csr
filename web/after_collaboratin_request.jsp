<%-- 
    Document   : clb.jsp
    Created on : Mar 2, 2019, 8:59:50 AM
    Author     : Gunjali Moorjani
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
   <title>Collaboration</title>
    <link href="main.css" rel="stylesheet">
   <style>
	.leftalign {
		  text-align: justify;
		  font-size:20px;
		  }
		  div.ex1 {
	  width: 700px;
	  margin: auto;
 	float: center;
 }
body {
  width: 1280px;
  height: 720px;
}
       
	</style>
  </head>
<body >
     <div style="height:40%;">
        <%@include file="header.jsp" %>
     </div><br><br><br><br>
    
  	<div class="ex1" >
	<h1  style="font-size:40px;"> <center> <b>Your Collaboration Request Sent</b></center></h1>
	
	
		<p class="leftalign" align= "justify"><center> We have forwarded your details to the organisers and sent you the mail mentioning the details of the organising company. Please communicate with them regarding collaboration and by which means you can provide a helping hand in thier event. <br> <br>
			As soon as the organisers will confirm your collaboration request we will notify you via mail.
		</center>
	</p>
        <h1  style="font-size:40px;"> <center> <b>Thank You For Your Collaboration</b></center></h1><br> <br> <br> <br> <br> <br>
           
</div>
         <div style="height: 140%" >
        <%@include file="footer.jsp" %>
</div>

<div>
    <%@include file="side_icons.jsp" %>
</div>
  </body>
        </html>