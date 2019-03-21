<%-- 
    Document   : individual_signin.jsp
    Created on : Feb 21, 2019, 3:19:12 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <title>Common Corporate Social Responsibility Portal</title>
    <link href="main.css" rel="stylesheet" media="all">

      <script type="text/javascript">
      function validate_individual_login(){

        var uname=document.forms["individual_login_form"]["individual_username"].value;
        if(uname.length<1)
          {
             alert("Please Enter Your Username");
             return false;
          }
          var mail=document.forms["individual_login_form"]["mail"].value;
          var mobile=document.forms["individual_login_form"]["mobile"].value;
          
          var a=mail.indexOf("@");
          var d=mail.indexOf(".");

          
        if(mobile.length!=10)
        {
            
            alert("please enter mobile no. of company account creator ");
            return false;
              
         }
        if(a<1 || a+2>d || d+2>=mail.length)
        {
          alert("Please Enter Correct E-mail id.");
          return false;
        }          
}

      </script>

</head>

<body>
    
    <div>
        <%@include file="header.jsp" %>
    </div>
    
    <div class="page-wrapper p-t-45 p-b-50">
        <div class="wrapper wrapper--w790">
            <div class="card card-5">
                <div class="card-heading">
                    <h2 class="title">Forgot Password</h2>
                </div>
                <div class="card-body">
                    <form method="POST" name="individual_login_form" onsubmit="return validate_individual_login()">
                       
                	<div class="form-row">
                            <div class="name">Username</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="text" name="individual_username">
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">E-mail Id</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="emai" name="mail">
                                </div>
                            </div>
                        </div>
						
                        <div class="form-row">
                            <div class="name">Mobile No.</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="number" name="mobile">
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

    <div>
        <%@include file="footer.jsp" %>
    </div>
        <%@include file="side_icons.jsp" %>
    
</body>
</html>