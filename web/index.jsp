<%--
  Created by IntelliJ IDEA.
  User: kawsar
  Date: 7/25/17
  Time: 4:45 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Hello</title>
      <link rel="stylesheet" href="css/custom.css">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  </head>
  <body>
      <div class="container">
          <div class="row">
              <div class="col-md-5 col-md-offset-5">
                  <div class="panel panel-default">
                      <div class="panel-heading"><strong class="">Login</strong>

                      </div>
                      <div class="panel-body">
                          <form class="form-horizontal" role="form" method="POST" action="login.jsp">
                              <div class="form-group">
                                  <label for="inputEmail3" class="col-sm-3 control-label">User Name</label>
                                  <div class="col-sm-9">
                                      <input type="text" class="form-control" id="inputEmail3" name="uname"
                                             placeholder="User Name" required="">
                                  </div>
                              </div>
                              <div class="form-group">
                                  <label for="inputPassword3" class="col-sm-3 control-label">Password</label>
                                  <div class="col-sm-9">
                                      <input type="password" class="form-control" id="inputPassword3" name="pass"
                                             placeholder="Password" required="">
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
                      <div class="panel-footer">Not Registered? <a href="reg.jsp" class="">Register here</a>
                      </div>
                  </div>
              </div>
          </div>
      </div>
  </body>
</html>
