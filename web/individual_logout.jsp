<%
session.setAttribute("userid", null);
session.invalidate();
response.sendRedirect("individual_login.jsp");
%>