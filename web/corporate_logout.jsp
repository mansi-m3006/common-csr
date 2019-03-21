<%
session.setAttribute("userid", null);
session.invalidate();
response.sendRedirect("corporate_login.jsp");
%>