<%@ page import="java.sql.*" %>
<%
    String userid = request.getParameter("uname");
    String pwd = request.getParameter("pass");
    try {
        String connectionURL = "jdbc:mysql://localhost:3306/jsp";
        Connection connection = null;
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        connection = DriverManager.getConnection(connectionURL, "root", "root");
        Statement st = connection.createStatement();
        ResultSet rs;
        rs = st.executeQuery("select * from members where uname='" + userid + "' and pass='" + pwd + "'");
        if (rs.next()) {
            session.setAttribute("userid", userid);
            response.sendRedirect("success.jsp");
        } else {
            out.println("Invalid password <a href='index.jsp'>try again</a>");
        }
    } catch (Exception ex) {
        out.println("Unable to connect to database"+ex);
    }
%>