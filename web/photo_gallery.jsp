<%-- 
    Document   : photo_gallery
    Created on : Feb 18, 2019, 12:11:20 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <script href="main.js">
    </script>
    <link href="main.css">
    </head>
    <body>
        <div>
        <%@include file="header.jsp" %>
        </div>
        
        <div style="align-content: center;">
            <section class="slideshow" >
           <div class="content">

               <div class="content-carrousel">
                    <figure class="shadow"><img src="images/csrevent1.jpg" id="Img1" onclick="f(Img1);"></figure>
                    <figure class="shadow"><img src="images/csrevent2.jpg" id="Img2" onclick="f();"></figure>
                    <figure class="shadow"><img src="images/csrevent3.jpg" id="Img3" onclick="f();"></figure>
                    <figure class="shadow"><img src="images/csrevent4.jpg" id="Img4" onclick="f();"></figure>
                    <figure class="shadow"><img src="images/csrevent5.jpg" id="Img5" onclick="f();"></figure>
                    <figure class="shadow"><img src="images/csrevent6.jpg" id="Img6" onclick="f();"></figure>
                    <figure class="shadow"><img src="images/csrevent7.jpg" id="Img7" onclick="f();"></figure>
                    <figure class="shadow"><img src="images/csrevent8.jpg" id="Img8" onclick="f();"></figure>
                    <figure class="shadow"><img src="images/csrevent9.jpg" id="Img9" onclick="f();"></figure>
               </div>

           </div>
       </section>
<div id="myModal" class="modal">

  <!-- The Close Button -->
  <span class="close">&times;</span>

  <!-- Modal Content (The Image) -->
  <img class="modal-content" id="img01">

  <!-- Modal Caption (Image Text) -->
  <div id="caption"></div>
</div>
        </div>
        
        <div class="gallery">
<div>
    <div style="padding-bottom: 10px">
<a href="images/csrevent10.jpg"><img src="images/csrevent10.jpg"></a>
<a href="images/csrevent11.jpg"><img src="images/csrevent11.jpg"></a>
<a href="images/csrevent12.jpg"><img src="images/csrevent12.jpg"></a>
<a href="images/csrevent13.jpg"><img src="images/csrevent13.jpg"></a>
<a href="images/csrevent14.jpg"><img src="images/csrevent14.jpg"></a>
    </div>
    <div style="padding-bottom: 10px; padding-top: 10px;">
<a href="images/csrevent15.jpg"><img src="images/csrevent15.jpg"></a>
<a href="images/csrevent16.jpg"><img src="images/csrevent16.jpg"></a>
<a href="images/csrevent17.jpg"><img src="images/csrevent17.jpg"></a>
<a href="images/csrevent18.jpg"><img src="images/csrevent18.jpg"></a>
<a href="images/csrevent19.jpg"><img src="images/csrevent19.jpg"></a>
    </div>
</div>
</div>
        
        <%@include file="footer.jsp" %>
        
        <div >
            <%@include file="side_icons.jsp" %>
        </div>
        
    </body>
</html>
