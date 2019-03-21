<%@ page import ="java.sql.*" %>
<%
    String user_name = request.getParameter("username");    
    String head_mail = request.getParameter("head_mail");
    String head_mobile=request.getParameter("head_mobile");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login",
            "root", "");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from corporate_data where user_name='" + user_name + "' and head_mail='" + head_mail+ "'and head_mobile='"+head_mobile+"'");
    if (rs.next()) {
       String user=(String) session.getAttribute(user_name);
        response.sendRedirect("change_password_corporate.jsp");
    } else {%>
    <script>
        window.alert("Invalid User Name / head detail");
        setTimeout(null,30000);
    </script>
    <%           response.sendRedirect("forgot_password_corporate.jsp");
    }
%>