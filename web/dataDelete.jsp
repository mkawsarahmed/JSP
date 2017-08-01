<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.SQLException" %><%

    Connection con = null;
    Statement s = null;

    try {
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/jsp" + "?user=root&password=root");
        s = con.createStatement();
        String UserId = request.getParameter("userID");
        String sql = "DELETE FROM members " + " WHERE id = '" + UserId + "' ";
        s.execute(sql);
        out.println("Data deleted successfully!");
        response.sendRedirect("success.jsp");
    } catch (Exception e) {
        out.println(e.getMessage());
        e.printStackTrace();
    }

    try {
        if(s != null) {
            s.close();
            con.close();
        }
    } catch (SQLException e) {
        out.println(e.getMessage());
        e.printStackTrace();
    }

%>