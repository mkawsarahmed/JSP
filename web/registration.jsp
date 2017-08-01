<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.SQLException" %>
<%
    String first_name = request.getParameter("fname");
    String last_name = request.getParameter("lname");
    String email = request.getParameter("email");
    String username = request.getParameter("uname");
    String pass = request.getParameter("password");

    try {
        String connectionURL = "jdbc:mysql://localhost:3306/jsp";
        Connection connection = null;
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        connection = DriverManager.getConnection(connectionURL, "root", "root");
        Statement st = connection.createStatement();
        int i = st.executeUpdate("INSERT INTO members(first_name, last_name, email, uname, pass, regdate) VALUES ('" + first_name + "','" + last_name + "','" + email + "','" + username + "','" + pass + "', CURDATE())");
        if(i > 0) {
            response.sendRedirect("welcome.jsp");
        } else {
            response.sendRedirect("index.jsp");
        }
        /*if(!connection.isClosed())
            out.println("Successfully connected to " + "MySQL server using TCP/IP...");*/
        connection.close();
    }catch(Exception ex){
        out.println("Unable to connect to database"+ex);
    }
%>