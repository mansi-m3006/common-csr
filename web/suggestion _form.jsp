     <html>
<head>
  <title>corporate sign in</title>
 <link href="main.css" rel="stylesheet" media="all">

<script type="text/javascript">
    function validate(){
        var district=document.forms["suggestion"]["district"].value;
        var comment=document.forms["suggestion"]["comment"].value;

        if (district.length<1)                                  
    { 
      alert("please enter district");
      return false;

    } 

    if (comment.length>150)                                  
    { 
        alert("comment should be maximum 150 characters");
        return false;
    } 
    }
</script>

</head>

<body>
    <%String user_name=(String)session.getAttribute("username");%>
    <%@include file="header_2.jsp" %>
    <div class="page-wrapper p-t-45 p-b-50">
        <div class="wrapper wrapper--w790">
            <div class="card card-5">
                <div class="card-heading">
                    <h2 class="title">Suggestion</h2>
                </div>
                <div class="card-body">
                    <form method="POST" name="suggestion" action="event_suggestions_process.jsp" onsubmit="validate()">
               
                 <div class="form-row">
                            <div class="name">State</div>
                            <div class="value">
                                <div class="input-group">
                                    
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
                            <div class="name">District</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="text" name="district">
                                </div>
                            </div>
                    </div>

                    <div class="form-row">
                            <div class="name">Event type</div>
                            <div class="value">
                                <div class="input-group">
                                    
                                     <select class="input--style-2" name="event_type">
                                      <option>PLantation</option>
                                    <option>Right to Education</option>
                                       <option>Save Electricity</option>
                                    <option>Save Water</option>
                                    <option>Innovation and Skill Development</option>
                                   <option>Swachh Bharat</option>
                                    <option>Health and Hygene</option>
                                    <option>Gender Equality</option>
                                       <option>Blood Donation</option>
                                      <option>Women Empowerment</option>
                                      <option>Sustainable Development</option></select><br>   

                                    </select>
                                </div>
                            </div>
                        </div>


                    <div class="form-row">
                            <div class="name">Comment</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="textarea" name="comment">
                                </div>
                            </div>
                    </div>
                        
                        <center>
                        <div>
                            <a href="after_individual_login.jsp"><input class="btn btn--radius-2 btn--green" style="float:left" type="button" value="BACK"></a>
                            <input class="btn btn--radius-2 btn--green" style="float:right" type="submit">
                        </div>
                        </center>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <%@include file="footer.jsp" %>
    
</body>
</html>