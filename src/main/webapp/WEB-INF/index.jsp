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
    <title>Dojos and Ninjas</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="/css/style.css" />
    <!-- change to match your file/naming structure -->
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/app.js"></script>
    <!-- change to match your file/naming structure -->
  </head>
  <body>
    <div class="d-flex justify-content-between align-items-sm-baseline">
      <h1 class="col-10">New Dojo</h1>
      <a href="/ninja/new" class="btn btn-primary">Create a Ninja</a>
    </div>
    <hr />
    <div class="card p-3 col-5 form-group mb-3">
      <form action="/dojo/create" method="POST" modelAttribute="newDojo">
        <label for="name" class="form-label">Name:</label>
        <input type="text" name="name" class="form-control mb-3" />
        <button class="btn btn-primary">Create</button>
      </form>
    </div>
  </body>
</html>
