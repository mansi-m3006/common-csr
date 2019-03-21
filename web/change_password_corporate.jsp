<%-- 
    Document   : corporate_signin
    Created on : Feb 21, 2019, 3:20:09 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>corporate sign in</title>
 <link href="main.css" rel="stylesheet" media="all">

<script type="text/javascript">
    function validate(){
        var newpassword=document.forms["corporate-sign-in"]["new_password"].value;
        var confirmpassword=document.forms["corporate-sign-in"]["confirm_new_password"].value;
        var regularExpression  = /^[a-zA-Z!@#$%^&*]{8,16}$/;

    if (newpassword.length<1)                                  
    { 
      alert("please enter password");
      return false;
    } 

    if (confirmpassword.length<1)                                  
    { 
        alert("please enter confirm password field");
        return false;
    }
    
           
    if(newpassword.length<5 && newpassword.length>16)
                {
                    alert("Choose a password between 8 and 15");
                   
                    return false;
                }
                if( newpassword!=confirmpassword)
                {
                    alert("password does not match");
                   
                    return false;
                }
              /*  if(!regularExpression.test(newpassword)) {
                    alert("password should contain one special character");
                    return false;
                 }*/         
}
</script>

</head>

<body>
    
   <%String user_name=(String)session.getAttribute("username");%>
       
    <div>
        <%@include file="header_2.jsp" %>
    </div>
    
    <div class="page-wrapper p-t-45 p-b-50">
        <div class="wrapper wrapper--w790">
            <div class="card card-5">
                <div class="card-heading">
                    <h2 class="title">Change Your Password</h2>
                </div>
                <div class="card-body">
                    <form method="POST" name="corporate-sign-in" action="change_password_corporate_process.jsp" onsubmit="validate()">
                       
                	<div class="form-row">
                            <div class="name">Enter new Password</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="password" name="new_password">
                                </div>
                            </div>
                        </div>
			<div class="form-row">
                            <div class="name">Confirm Password</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="Password" name="confirm_new_password">
                                </div>
                            </div>
                        </div>
			
                        
                        
                    <center>
                        <div>
                            <button class="btn btn--radius-2 btn--green" type="submit">Submit</button>
                        </div>
                    </center>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <%@include file="footer.jsp" %>
    <%@include file="side_icons.jsp" %>
</body>
</html>