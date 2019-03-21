<!DOCTYPE html>
<html>
  <title></title>
  <link href="main.css" rel="stylesheet" media="all">
  <script type="text/javascript">
      function validate_individual_signup(){
        


        var name=document.forms["individual_signup_form"]["individual_name"].value;
        if(name.length<1)
          {
             alert("Please Enter Your Name");
             return false;
          }


       var em=document.forms["individual_signup_form"]["individual_mail"].value;
        var a=em.indexOf("@");
        var d=em.indexOf(".");
        if(a<1 || a+2>d || d+2>=em.length)
        {
          alert("Please Enter Correct Format Of Email");
          return false;
        }

        var mobile=document.forms["individual_signup_form"]["individual_mobile"].value;;
        if(mobile.length!=10 )
         {
            alert("Please Enter Correct 10 Digit Mobile Number");
            return false;
         }

         var street=document.forms["individual_signup_form"]["Individual_street"].value;;
        if(street.length<1 )
         {
            alert("Please Enter Your Address");
            return false;
         }

         var dob=document.forms["individual_signup_form"]["individual_dob"].value;;
        if(dob.length<1 )
         {
            alert("Please Enter Your DOB");
            return false;
         }

         var pincode=document.forms["individual_signup_form"]["individual_pincode"].value;
         if(pincode.length!=6)
         {
             alert("Please Enter 6 Digit Pin Code");
             return false;
         }
         var district=document.forms["individual_signup_form"]["individual_district"].value;
         if(pincode.length!=6)
         {
             alert("Please Enter 6 Digit Pin Code");
             return false;
         }

         var username=document.forms["individual_signup_form"]["individual_username"].value;
         if(username=="")
         {
             alert("Username cannot be left empty");
             return false;
         }
        

 }        
  </script>
</head>

<body style="background-image: url(green-background.jpg)">
    <div class="page-wrapper p-t-45 p-b-50">
        <div class="wrapper wrapper--w790">
            <div class="card card-5">
                <div class="card-heading">
                    <h2 class="title">Edit Profile</h2>
                </div>
                <div class="card-body">
                    <form method="POST" name="individual_signup_form" onsubmit="return validate_individual_signup()">
                    
					   
                	<div class="form-row">
                            <div class="name">Name</div>
                            <div class="value">
                                <div class="input-group">
                                    <input readonly="readonly" class="input--style-5" type="text" value="" name="individual_name">
                                </div>
                            </div>
                        </div>
						
					<div class="form-row">
                            <div class="name">D.O.B.</div>
                            <div class="value">
                                <div class="input-group">
                                    <input  readonly="readonly" class="input--style-5" type="date" name="individual_dob">
                                </div>
                            </div>
                        </div>
						   	
					   
                	<div class="form-row">
                            <div class="name">E-mail</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="mail" name="individual_mail">
                                </div>
                            </div>
                        </div>
						
						   
                	<div class="form-row">
                            <div class="name">Mobile No.</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="number" name="individual_mobile">
                                </div>
                            </div>
                        </div>
						
					

					
                	   
                	<div class="form-row">
                            <div class="name">AADHAR No.</div>
                            <div class="value">
                                <div class="input-group">
                                    <input readonly="readonly" class="input--style-5"name="individual_aadhar">
                                </div>
                            </div>
                        </div>
					
					<div class="form-row">
                            <div class="name">Gender</div>
                            <div class="p-t-15">
                                <label class="radio-container m-r-55">Male
                                    <input readonly="readonly" type="radio" checked="checked" name="gender">
                                    <span class="checkmark"></span>
                                </label>
                                <label class="radio-container">Female
                                    <input readonly="readonly" type="radio" name="gender">
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                        </div>
                        
					
                	<div class="form-row">
                            <div class="name">Address</div>
                            <div class="value">
								<div class="input-group">
                                    <input class="input--style-5" type="text" placeholder="Building and Street" name="Individual_street">
									
								</div>
								<div class="input-group">
                                    <input class="input--style-2" type="text" placeholder="District" name="individual_district">
									<select class="input--style-2">
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
                                    <input class="input--style-5" type="Number" name="individual_pincode">
                                </div>
                            </div>
                        </div>
					
					<div class="form-row">
                            <div class="AOI">Area Of Interest</div>
                            <div class="value">
                                <div class="input-group">
                                    <select class="input--style-2">
										<option value="Plantation">Plantation Drive</option>
										<option value="Environment Issues">Environment Related Issues</option>
										<option value="Animal Welfare">Animal Welfare</option>
										<option value="Education">Educational Event</option>
										<option value="Swachh Bharat ">Swachh Bharat</option>
										<option value="Women Empowerment">Women Empowerment</option>
									</select>
                                </div>
                            </div>
                        </div>
					
                	
						
					<div class="form-row">
                            <div class="name">User Name</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="text" name="individual_username">
                                </div>
                            </div>
                        </div>
					

                        <center>
                        <div>
                            <button class="btn btn--radius-2 btn--green" type="submit" id="submit" >Update</button>
                        </div>
						</center>
                    </form>
                </div>
            </div>
        </div>
    </div>

    
</body>
</html>