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
             //uname.focus();
             return false;
          }
          var password=document.forms["individual_login_form"]["individual_password"].value;
          

        if(password.length<1)
          {
             alert("Password cannot be left empty");
             //password.focus();
             return false;
          }
           
}

    function Captcha(){
                     var alpha = new Array('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z',0,1,2,3,4,5,6,7,8,9);
                     var i;
                     for (i=0;i<6;i++){
                       var a = alpha[Math.floor(Math.random() * alpha.length)];
                       var b = alpha[Math.floor(Math.random() * alpha.length)];
                       var c = alpha[Math.floor(Math.random() * alpha.length)];
                       var d = alpha[Math.floor(Math.random() * alpha.length)];
                       var e = alpha[Math.floor(Math.random() * alpha.length)];
                       var f = alpha[Math.floor(Math.random() * alpha.length)];
                       var g = alpha[Math.floor(Math.random() * alpha.length)];
                      }
                    var code = a + ' ' + b + ' ' + ' ' + c + ' ' + d + ' ' + e + ' '+ f + ' ' + g;
                    document.getElementById("mainCaptcha").innerHTML = code;
                  }
                  function ValidCaptcha(){
                      var string1 = removeSpaces(document.getElementById('mainCaptcha').innerHTML);
                      var string2 = removeSpaces(document.getElementById('txtInput').value);
                      if (string1 == string2){
                        document.getElementById("sub").disabled=false;
                        return true;
                      }
                      else{
                        
                        Captcha();        
                        return false;

                      }
                  }
                  function removeSpaces(string){
                    return string.split(' ').join('');
                  }   
      </script>

</head>

<body onload="Captcha();">
    
    <div>
        <%@include file="header.jsp" %>
    </div>
    
    <div class="page-wrapper p-t-45 p-b-50">
        <div class="wrapper wrapper--w790">
            <div class="card card-5">
                <div class="card-heading">
                    <h2 class="title">Individual Login</h2>
                </div>
                <div class="card-body">
                    <form id="frm" method="POST" name="individual_login_form" action="individual_login_process.jsp" onsubmit="return validate_individual_login()">
                       
                	<div class="form-row">
                            <div class="name">Username</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="text" name="username">
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Password</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="password" name="individual_password">
                                </div>
                            </div>
                        </div>
                        
                         <div class="form-row">
                            <div class="value">
                                <div class="input-group">
                                 <center>   <del><label  id="mainCaptcha" style="font-family: lucida calligraphy;letter-spacing: none; margin-left: 100px; background-color: silver;s"> </label></del></center>
                                </div>
                            </div>
                            <div class="name"><button type="button" id="refresh" class="btn btn--green btn--radius-2" value="Refresh" onclick="Captcha();"style="float: right;">Refresh</button>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="value">
                                <div class="input-group">
                                 <center><input type="text" id="txtInput"style="margin-left: 130px;margin-right:25px;margin-top: 0px;width: 122px;height:25px;"></center>
                                </div>
                            </div>
                            <div class="name"><button type="button" id="Button1"  value="Check" class="btn btn--green btn--radius-2" onclick="alert(ValidCaptcha());"style="float: right;margin-left:45px; width: 170px;">Check</button>        

                            </div>
                        </div>

                        <div class="form-row">
                          <div class="value">
                                <div class="input-group">
                                    <a href="forgot_password_individual.jsp">Forgot Password</a><br>
                                 </div>
                            </div>
                        </div>
                        
                        
                        <center>
                        <div>
                            <button id="sub" class="btn btn--radius-2 btn--green" type="submit" disabled="disabled" onclick="return validate_individual_login()">Submit</button>
                        </div>
						</center>
                    </form>
                </div>
            </div>
        </div>
    </div>
     <script>
            document.getElementsByTagName("form")[0].onchange=function(){
             document.getElementById("sub").disabled=true;
}
  </script>  

    <div>
        <%@include file="footer.jsp" %>
           <%@include file="side_icons.jsp"%>
    </div>
</body>
</html>
