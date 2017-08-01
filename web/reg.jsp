<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Registration</title>
    <link rel="stylesheet" href="css/custom.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>

    <div class="container">
        <div class="row">
            <div class="col-md-5 col-md-offset-5">
                <div class="panel panel-default">
                    <div class="panel-heading"> <strong class="">Registration</strong>

                    </div>
                    <div class="panel-body">
                        <c:if test="${not empty message_error}">
                            <div class="alert alert-warning">
                                <strong><c:out value="${message_error}"/></strong>
                            </div>
                            <c:set var="message_error" value="" scope="session"/>
                        </c:if>

                        <form class="form-horizontal" role="form" method="POST" action="registration.jsp">
                            <div class="form-group">
                                <label for="inputEmail3" class="col-sm-3 control-label">Firs Name</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" id="inputEmail3" name="fname" placeholder="First name" required="">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputPassword3" class="col-sm-3 control-label">Last Name</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" id="inputPassword3" name="lname" placeholder="Last Name" required="">
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="inputPassword3" class="col-sm-3 control-label">Email</label>
                                <div class="col-sm-9">
                                    <input type="email" class="form-control" id="inputPassword3" name="email" placeholder="Email" required="">
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="inputPassword3" class="col-sm-3 control-label">User Name</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" id="inputPassword3" name="uname" placeholder="User Name" required="">
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="inputPassword3" class="col-sm-3 control-label">Password</label>
                                <div class="col-sm-9">
                                    <input type="password" class="form-control" id="inputPassword3" name="password" placeholder="Password" required="">
                                </div>
                            </div>

                            <div class="form-group last">
                                <div class="col-sm-offset-3 col-sm-9">
                                    <button type="submit" class="btn btn-success btn-sm">Sign in</button>
                                    <button type="reset" class="btn btn-default btn-sm">Reset</button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="panel-footer">Already registered! <a href="index.jsp" class="">Login</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>