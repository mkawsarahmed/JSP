<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.SQLException" %>

<%
    Connection connection = null;
    Statement s = null;
    try {
        Class.forName("com.mysql.jdbc.Driver");
        connection = DriverManager.getConnection("jdbc:mysql://localhost/jsp" + "?user=root&password=root");
        s = connection.createStatement();

        String UserId = request.getParameter("userID");
        String first_name = request.getParameter("fname");
        String last_name = request.getParameter("lname");
        String email = request.getParameter("email");

        String sql = "UPDATE members " + "SET first_name = '" + first_name + " ' " + "," +
                " last_name = '" + last_name + " ' " + "," +
                " email = '" + email + " ' " + "WHERE id = '" + UserId +" ' ";
        s.execute(sql);
        String message = "Data updated successfully!";
        request.getSession().setAttribute("message", message);
        response.sendRedirect("success.jsp");
    } catch (Exception e) {
        out.println(e.getMessage());
        e.printStackTrace();
    }

    try {
        if(s != null) {
            s.close();
            connection.close();
        }
    } catch (SQLException e) {
        out.println(e.getMessage());
        e.printStackTrace();
    }
%>