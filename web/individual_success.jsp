<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
<%
    response.sendRedirect("individual_signin.jsp");
%>

<%} else {
%>
<%
    response.sendRedirect("after_individual_login.jsp");
%>

<%
    }
%>