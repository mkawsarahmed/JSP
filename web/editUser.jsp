<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: kawsar
  Date: 8/1/17
  Time: 10:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Update</title>
    <link rel="stylesheet" href="css/custom.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-md-5 col-md-offset-5">
                <div class="panel panel-default">
                    <div class="panel-heading"> <strong class="">User Update</strong>

                    </div>
                    <div class="panel-body">
                        <%
                            Connection connection = null;
                            Statement s = null;
                            try {
                                Class.forName("com.mysql.jdbc.Driver");
                                connection = DriverManager.getConnection("jdbc:mysql://localhost/jsp" + "?user=root&password=root");
                                s = connection.createStatement();
                                String UserId = request.getParameter("userID");
                                String sql = "SELECT * FROM  members WHERE id = '" + UserId + "'  ";
                                ResultSet rec = s.executeQuery(sql);
                                if (rec != null)
                                {
                                    rec.next();
                                    %>

                                <form class="form-horizontal" role="form" method="POST" action="userUpdate.jsp?userID=<%=rec.getString("id")%>" autocomplete="off">
                                    <div class="form-group">
                                        <label for="inputEmail3" class="col-sm-3 control-label">Firs Name</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" id="inputEmail3" name="fname" value="<%=rec.getString("first_name")%>" placeholder="First name" required="">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputPassword3" class="col-sm-3 control-label">Last Name</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" id="inputPassword3" name="lname" value="<%=rec.getString("last_name")%>" placeholder="Last Name" required="">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label for="inputPassword3" class="col-sm-3 control-label">Email</label>
                                        <div class="col-sm-9">
                                            <input type="email" class="form-control" id="inputPassword3" name="email" value="<%=rec.getString("email")%>" placeholder="Email" required="">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label for="inputPassword3" class="col-sm-3 control-label">User Name</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" id="inputPassword3" name="uname" value="<%=rec.getString("uname")%>" placeholder="User Name" readonly>
                                        </div>
                                    </div>

                                    <div class="form-group last">
                                        <div class="col-sm-offset-3 col-sm-9">
                                            <button type="submit" class="btn btn-success btn-sm">Update</button>
                                        </div>
                                    </div>
                                </form>


                                <%}
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
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
