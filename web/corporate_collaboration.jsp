<%-- 
    Document   : corporate_collaboration
    Created on : Feb 25, 2019, 3:45:00 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>collaboration</title>
        
        <link href="main.css" rel="stylesheet" media="all">   
  <style type="text/css">

  .input--style-6 {

line-height: 50px;

-webkit-border-radius: 5px;
  -moz-border-radius: 5px;
  border-radius: 5px;
 margin-top: 10px;
  font-size: 16px;
  width: 500px;

  }
    .checked{
  text-align: left;
  font-size: 25px;
   }
input[type=checkbox] {
    zoom: 1.5;
}
  </style>
  

        
    </head>
    
    <body>
        
        <div class="page-wrapper p-t-45 p-b-50">
        <div class="wrapper wrapper--w790">
            <div class="card card-5">
                <div class="card-heading">
                    <h2 class="title">How Can You Collaborate</h2>
                </div>
                
                <form action="corporate_collaboration_process.jsp" method="post">
                        
             <div class="card-body"><center>
                         <div class="checked">
                                    <input type="checkbox" id="1" name="collaboration" value="1">
                                   <label>Fund</label> <br></div>
                      <div class="form-row">
             <div class="value">
                       <div class="input-group">           
                           <div id="div1" style="display:none">
                           <input name="fund_value" type="text" class="input--style-6" placeholder="how much fund you want to donate">
                            </div>
                     </div></div></div>
                            
                            <div class="checked">
                                   <input type="checkbox" id="2" name="collaboration" value="2">
                                   <label>Resources</label> <br></div>  
                               <div class="form-row">
                     <div class="value">
                               <div class="input-group">  
                                   
                       <div id="div2" style="display:none">
                       <input type="text" name="resources_description" class="input--style-6" placeholder="what resources you want to donate">
                        </div>
                       </div></div></div>
                    
                     <div class="checked">
                                   <input type="checkbox" id="3" name="collaboration" value="3">
                                   <label>Volunteer</label> <br></div>
                     <div class="form-row">
                     <div class="value">
                               <div class="input-group">                
                       <div id="div3" style="display:none" >
                       <input type="text" name="vounteering_days" class="input--style-6" placeholder="for how many days you want to do volunteering">
                        </div>
                       </div></div></div>

                   <div class="checked">
                                   <input type="checkbox" id="4" name="collaboration" value="4">
                                   <label>Services</label> <br></div>
                     <div class="form-row">
                     <div class="value">
                               <div class="input-group">                
                       <div id="div4" style="display:none">
                       <input type="text" name="services_description" class="input--style-6" placeholder="what services you want to give">
                        </div>
                       </div></div></div>
                       

                   <div class="checked">
                                   <input type="checkbox" id="5" name="collaboration" value="5">
                                   <label>Others</label> <br></div>
                     <div class="form-row">
                     <div class="value">
                               <div class="input-group">                
                       <div id="div5" style="display:none">
                       <input type="text" name="othersdescription" class="input--style-6" placeholder="In what other way you want to help">
                        </div>
                       </div></div></div>
                     <button class="btn btn--radius-2 btn--green" style="float: right;" type="submit">Submit</button>
                     <a href="after_individual_login.jsp"><button class="btn btn--radius-2 btn--green" style="float: left;" type="button">Back</button></a>

                   </center>  
               </div>
                    
                   </form> 
         </div>
       </div>
      </div>
    


         
        <script>
            var a=document.getElementById("1")
             a.onchange=function(){
                 if(a.checked){
                     document.getElementById("div1").style.display="block";
                 }
                 else
                     document.getElementById("div1").style.display="none";
                 }
              var b=document.getElementById("2")
               b.onchange=function(){
                 if(b.checked){
                     document.getElementById("div2").style.display="block";
                 }
                 else
                     document.getElementById("div2").style.display="none";
                 } 
                var c=document.getElementById("3")
               c.onchange=function(){
                 if(c.checked){
                     document.getElementById("div3").style.display="block";
                 }
                 else
                     document.getElementById("div3").style.display="none";
                 } 

                 var d=document.getElementById("4")
               d.onchange=function(){
                 if(d.checked){
                     document.getElementById("div4").style.display="block";
                 }
                 else
                     document.getElementById("div4").style.display="none";
                 }  

                 var e=document.getElementById("5")
               e.onchange=function(){
                if(e.checked){
                     document.getElementById("div5").style.display="block";
                 }
                 else
                     document.getElementById("div5").style.display="none";
                 }   
        </script>
        
        
        <% String comp_name1=request.getParameter("comp_name1");
        session.setAttribute("comp_name1",comp_name1);
        String event_name1=request.getParameter("event_name1");
        session.setAttribute("event_name1",event_name1);
        String event_type1=request.getParameter("event_type1"); 
        session.setAttribute("event_type1",event_type1);
        %>    
    </body>
</html>
