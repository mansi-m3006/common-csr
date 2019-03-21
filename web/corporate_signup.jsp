<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>corporate sign up</title>
 
    <link href="main.css" rel="stylesheet" media="all">
    <script type="text/javascript">
        function validate_corporate_signup()
        {
           
            var company_account_creator_name=document.forms["corporate_signup"]["name"].value;
            var company_account_creator_designation=document.forms["corporate_signup"]["designation"].value;
            var company_account_creator_email=document.forms["corporate_signup"]["mail"].value;
            var company_account_creator_mobile=document.forms["corporate_signup"]["mobile"].value;
            var company_name=document.forms["corporate_signup"]["comp_name"].value;
            var cin=document.forms["corporate_signup"]["cin"].value;
            var company_mobile=document.forms["corporate_signup"]["comp_mobile"].value;
            var company_phone=document.forms["corporate_signup"]["comp_phone"].value;
            var company_email=document.forms["corporate_signup"]["comp_mail"].value;
            var company_address=document.forms["corporate_signup"]["address"].value;
            var district=document.forms["corporate_signup"]["district"].value;
            
            var pincode=document.forms["corporate_signup"]["pin_code"].value;
            var csr_headname=document.forms["corporate_signup"]["head_name"].value;
            var csr_email=document.forms["corporate_signup"]["head_mail"].value;
            var csr_mobile=document.forms["corporate_signup"]["head_mobile"].value;
            var user_name=document.forms["corporate_signup"]["user_name"].value; 
            var password=document.forms["corporate_signup"]["password"].value;
            var confirmpass=document.forms["corporate_signup"]["confirm-password"].value;
            var regularExpression  = /^[a-zA-Z!@#$%^&*]{8,16}$/;

       
        var a=company_account_creator_email.indexOf("@");
        var d=company_account_creator_email.indexOf(".");
        
        var a2=company_email.indexOf("@");
        var d2=company_email.indexOf(".");
        
        var a3=csr_email.indexOf("@");
        var d3=csr_email.indexOf(".");
        if (company_account_creator_name.length<1)                                  
    { 
      alert("please enter name of company account creator");
      return false;} 
    if (company_account_creator_designation.length<1)                                  
    { 
        alert("please enter company's account creator's designation");
        return false;
    } 
    
    if(company_account_creator_mobile.length!=10)
        {
            
            alert("please enter mobile no. of company account creator ");
            return false;
              
         }
      
            if (company_name.length<1)                                  
    { 
      alert("please enter name of company");
      return false;

    } 
         

       if (cin.length<1)                                  
    { 
      alert("please enter cin");
      return false;

    } 

    if(company_mobile.length!==10)
        {
             
            alert("please enter valid company mobile");
            return false;
              
         }
      
       
         if(company_phone.length!==10)
        {
        
            alert("please enter valid company phone ");
            return false;
              
         }
      
       if (company_address.length<1)                                  
    { 
      alert("please enter address of company");
      return false;

    }
     if (pincode.length!==6)                                  
    { 
      alert("please enter valid pincode");
      return false;

    }     
    
     if (csr_headname.length<1)                                  
    {
      alert("please enter headname of company");
      return false;

    }

    if(csr_mobile.length!==10)
        {
        
            alert("please enter valid mobile no. of Head ");
            return false;
              
         }
      if (user_name.length<1)                                  
    { 
      alert("please enter user name");
      return false;

    }
         
           if(password.length<8 && password.length>16)
                {
                    alert("Choose a password between 8 and 15");
                   
                    return false;
                }
                if( password!==confirmpass)
                {
                    alert("password does not match");
                   
                    return false;
                }
                if(!regularExpression.test(password)) {
                    alert("password should contain one special character");
                    return false;
                 }
      

   
     if(a<1 || a+2>d || d+2>=em.length)
        {
          alert("Please Enter Correct Format Of company-account-creator-email");
          return false;
        }
  

     if(a2<1 || a2+2>d2 || d2+2>=em2.length)
        {
          alert("Please Enter Correct Format Of company email");
          return false;
        }


      if(a3<1 || a3+2>d || d3+2>=em3.length)
        {
          alert("Please Enter Correct Format Of csr-email");
          return false;
        }


         if(district.length<1)
         {
             alert("Please Enter Your district");
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
                    <h2 class="title">Corporate Sign Up Form</h2>
                    
                </div>
                <div class="card-body">
                    <form method="POST" name="corporate_signup"  onsubmit="validate_corporate_signup()" action="corporate_otp.jsp">
                            
                        <div class="form-row">
                            <div class="name">Name</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="text" name="name">
                                </div>
                            </div>
                        </div>
                        
            <div class="form-row">
                            <div class="name">Designation</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="text" name="designation">
                                </div>
                            </div>
                        </div>
                            
                       
                    <div class="form-row">
                            <div class="name">E-mail</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="email" name="mail">
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
                        
                    

                    
                    <div class="form-row">
                            <div class="name">Company Name</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="text" name="comp_name">
                                </div>
                            </div>
                        </div>
                        
                       
                    <div class="form-row">
                            <div class="name">CIN</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="text" name="cin">
                                </div>
                            </div>
                        </div>
                    
                    <div class="form-row">
                            <div class="name">Company Mobile No.</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="number" name="comp_mobile">
                                </div>
                            </div>
                        </div>
                    
                    <div class="form-row">
                            <div class="name">Company Phone No.</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="number" name="comp_phone">
                                </div>
                            </div>
                        </div>
                    
                    
                    <div class="form-row">
                            <div class="name">Company E-mail</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="email" name="comp_mail">
                                </div>
                            </div>
                        </div>
                    
                    
                    <div class="form-row">
                            <div class="name">Company Address</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="text" placeholder="Building and Street" name="address">
                                    
                                </div>
                            <div class="input-group">
                                    <input class="input--style-2" type="text" placeholder="District" name="district">
                                    <select class="input--style-2" name="state">
                                        <option value="Andhra Pradesh">Andhra Pradesh</option>
                                        <option value="Andaman And Nicobar Island">Andaman And Nicobar Island</option>
                                        <option value="Arunachal Pradesh">Arunachal Pradesh</option>
                                        <option value="Assam">Assam</option>
                                        <option value="Bihar">Bihar</option>
                                        <option value="Chhatisgarh">Chhatisgarh</option>
                                        <option value="Chandigarh">Chandigarh</option>
                                        <option value="Dadra And Nagar Haveli">Dadra And Nagar Haveli</option>
                                        <option value="Daman And Diu">Daman And Diu</option>
                                        <option value="Delhi">Delhi</option>
                                        <option value="Goa">Goa</option>
                                        <option value="Gujrat">Gujrat</option>
                                        <option value="Haryana">Haryana</option>
                                        <option value="Himachal Pradesh">Himachal Pradesh</option>
                                        <option value="Jammu And Kashmir">Jammu And Kashmir</option>
                                        <option value="Jharkhand">Jharkhand</option>
                                        <option value="Karnataka">Karnataka</option>
                                        <option value="Kerala">Kerala</option>
                                        <option value="Lakshadweep">Lakshadweep</option>
                                        <option value="Madhya Pradesh">Madhya Pradesh</option>
                                        <option value="Maharashtra">Maharashtra</option>
                                        <option value="Manipur">Manipur</option>
                                        <option value="Meghalaya">Meghalaya</option>
                                        <option value="Mizoram">Mizoram</option>
                                        <option value="Nagaland">Nagaland</option>
                                        <option value="Odisha">Odisha</option>
                                        <option value="Puducherry">Puducherry</option>
                                        <option value="Punjab">Punjab</option>
                                        <option value="Rajasthan">Rajasthan</option>
                                        <option value="Sikkim">Sikkim</option>
                                        <option value="Tamil Nadu">Tamil Nadu</option>
                                        <option value="Telangana">Telangana</option>
                                        <option value="Tripura">Tripura</option>
                                        <option value="Uttarakhand">Uttarakhand</option>
                                        <option value="Uttar Pradesh">Uttar Pradesh</option>
                                        <option value="West Bengal">West Bengal</option>

                                    </select>
                                </div>
                            </div>
                    </div>
                    
                    <div class="form-row">
                            <div class="name">Pincode</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="number" name="pin_code">
                                </div>
                            </div>
                        </div>
                    
                    
                    <div class="form-row">
                            <div class="name">CSR Head Name</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="text" name="head_name">
                                </div>
                            </div>
                        </div>
                        
                            
                       
                    <div class="form-row">
                            <div class="name">E-mail</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="email" name="head_mail">
                                </div>
                            </div>
                        </div>
                        
                           
                    <div class="form-row">
                            <div class="name">Mobile No.</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="number" name="head_mobile">
                                </div>
                            </div>
                        </div>
                        
                       
                    
                        
                    <div class="form-row">
                            <div class="name">User Name</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="text" name="user_name">
                                </div>
                            </div>
                        </div>
                    
                        
                        <div class="form-row">
                            <div class="name">Password</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="password" name="password">
                                </div>
                            </div>
                        </div>
                    <div class="form-row">
                            <div class="name">Confirm Password</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="password" name="confirm-password">
                                </div>
                            </div>
                        </div>
                    
                    <div class="form-row">
                            <div class="value">
                                <div class="input-group">
                                    <input type="checkbox" name="check" value="True">I agree to all the <a href="Terms_and_conditions.jsp">Terms and conditions.</a><br>
                                </div>
                            </div>
                        </div>
                         
                        <center>
                        <div>
                            <button class="btn btn--radius-2 btn--green" type="submit">Send OTP</button>
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