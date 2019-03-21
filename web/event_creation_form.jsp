<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <title></title>

    

    <link href="main.css" rel="stylesheet" media="all">
    <script type="text/javascript">
        
   function validate(){

      var event_title=document.forms["event_create"]["event-title"].value;
       var event_type=document.forms["event_create"]["event-type"].value;
      var description=document.forms["event_create"]["description"].value;
      var venue=document.forms["event_create"]["venue"].value;
      var district=document.forms["event_create"]["district"].value;
      
      var pincode=document.forms["event_create"]["pin-code"].value;
      var start_date=document.forms["event_create"]["start-date"].value;
      var end_date=document.forms["event_create"]["end-date"].value;  
      var event_days=document.forms["event_create"]["event-days"].value;

     if (event_title.length<1)                                  
    { 
      alert("please enter name of event");
      return false;

    } 
    if (event_type.length<1)                                  
    { 
      alert("please enter type of event");
      return false;

    } 

   if (description.length<1)                                  
    { 
      alert("please enter description of event");
      return false;

    } 

   if (venue.length<1)                                  
    { 
      alert("please enter venue of event");
      return false;

    } 
    if (district.length<1)                                  
    { 
      alert("please enter district of event");
      return false;

    } 
  if (pincode.length<1)                                  
    { 
      alert("please enter pincode");
      return false;

    } 
   if (start_date.length<1)                                  
    { 
      alert("please enter start-date of event");
      return false;

    } 
  if (end_date.length<1)                                  
    { 
      alert("please enter end-date of event");
      return false;

    } 
    if (event_days.length<1)                                  
    { 
      alert("please enter event-days of event");
      return false;

    } 
  }
    </script>
   </head>
<body>
    <div>
        <%@include file="header_2.jsp" %>
    </div>
    
    <div class="page-wrapper p-t-45 p-b-50">
        <div class="wrapper wrapper--w790">
            <div class="card card-5">
                <div class="card-heading">
                    <h2 class="title">Create Event</h2>
                </div>
                <div class="card-body">
                    <form method="POST" name="event_create" action=""  onsubmit="validate()">
                       
                	<div class="form-row">
                            <div class="name">Event Title</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="text" name="event-title">
                                </div>
                            </div>
                        </div>
						  <div class="form-row">
                            <div class="name">Event type</div>
                            <div class="value">
                                <div class="input-group">
                                    
                                     <select class="input--style-2">
                                      <option>Plantation</option>
                                    <option>Right to Education</option>
                                       <option>Save Electricity</option>
                                    <option>Save Water</option>
                                    <option>Innovation and Skill Development</option>
                                   <option>Swachh Bharat</option>
                                    <option>Health and Hygiene</option>
                                    <option>Gender Equality</option>
                                       <option>Blood Donation</option>
                                      <option>Women Empowerment</option>
                                      <option>Sustainable Development</option></select><br>   

                                    </select>
                                </div>
                            </div>
                        </div>


                        <div class="form-row">
                            <div class="name">Description</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="text" name="description">
                                </div>
                            </div>
                        </div>


                   
                            <div class="form-row">
                            <div class="name">Venue</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="text" name="venue">
                                </div>
                            </div>
                        </div>
    
                                
                           <div class="form-row">
                            <div class="name">district</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-2" type="text" placeholder="District" name="district">
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
                                    <input class="input--style-5" type="number" name="pin-code">
                                </div>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="name">Start Date</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="Date" name="start-date">
                                </div>
                            </div>
                        </div>


                        

                        <div class="form-row">
                            <div class="name">End Date</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="Date" name="end-date">
                                </div>
                            </div>
                        </div>


                           <div class="form-row">
                            <div class="name">Event Days</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="number" name="event-days">
                                </div>
                            </div>
                        </div>




                        <div class="form-row">
                            <div class="name">Want Collaboration</div>
                            <div class="value">
                                <div class="input-group">
                                    <input type="radio" name="Event Title">Yes<br>
                                    <input type="radio" name="Event Title">No<br>

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