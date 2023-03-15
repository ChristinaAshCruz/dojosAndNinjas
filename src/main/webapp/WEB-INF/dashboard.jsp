<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. -->
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!-- Formatting (dates) -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Dashboard</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="/css/style.css" />
    <!-- change to match your file/naming structure -->
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/app.js"></script>
    <!-- change to match your file/naming structure -->
    <!-- FONTS -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@300;400&family=Ruda:wght@600;700&display=swap"
      rel="stylesheet"
    />
  </head>
  <body>
    <div class="d-flex justify-content-between align-items-sm-baseline">
      <h1><c:out value="${thisDojo.name}"></c:out> Location Ninjas</h1>
      <a href="/" class="btn btn-primary">Back To Home</a>
    </div>
    <hr />
    <div class="card p-3 col-5">
      <table class="table">
        <thead>
          <tr>
            <th schope="col">First Name</th>
            <th schope="col">Last Name</th>
            <th schope="col">Age</th>
          </tr>
        </thead>
        <c:forEach var="ninja" items="${thisDojo.ninjas}">
          <tr>
            <td>
              <c:out value="${ninja.firstName}"></c:out>
            </td>
            <td><c:out value="${ninja.lastName}"></c:out></td>
            <td><c:out value="${ninja.age}"></c:out></td>
          </tr>
        </c:forEach>
      </table>
    </div>
  </body>
</html>
