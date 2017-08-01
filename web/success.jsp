<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Welcome</title>
    <link rel="stylesheet" href="css/custom.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
</head>
<body>

<sql:setDataSource
        var="myDS"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/jsp"
        user="root" password="root"
/>

<sql:query var="listUsers"   dataSource="${myDS}">
    SELECT * FROM members;
</sql:query>

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading"> <strong class="">Welcome</strong>

                </div>
                <div class="panel-body">
                    <%
                        if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
                    %>
                    You are not logged in<br/>
                    <a href="index.jsp">Please Login</a>
                    <%} else {
                    %>
                    Welcome <%=session.getAttribute("userid")%>
                    <a href='logout.jsp'>Log out</a>
                    <%
                        }
                    %>

                </div>
                    <%
                        if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
                    %>
                        No data found
                    <%} else {
                    %>
                        <div class="panel-body">
                            <table class="table table-hover">
                                <thead>
                                <tr>
                                    <td>Name</td>
                                    <td>Email</td>
                                    <td>User Name</td>
                                    <td>Password</td>
                                    <td>Action</td>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="user" items="${listUsers.rows}">
                                    <tr>
                                        <td><c:out value="${user.first_name} ${user.last_name}" /></td>
                                        <td><c:out value="${user.email}" /></td>
                                        <td><c:out value="${user.uname}" /></td>
                                        <td><c:out value="${user.pass}" /></td>
                                        <td>
                                            <a href="#" class="btn btn-circle btn-danger"><i class="fa fa-trash" aria-hidden="true"></i></a>
                                        </td>
                                    </tr>
                                </c:forEach>

                                </tbody>
                            </table>
                        </div>
                    <%
                        }
                    %>


            </div>
        </div>
    </div>
</div>
</body>
</html>
