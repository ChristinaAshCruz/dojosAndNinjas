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
    <title>New Ninja</title>
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
      <h1>New Ninja</h1>
      <a href="/" class="btn btn-primary">Create a Dojo</a>
    </div>
    <hr />
    <div class="card p-3 col-5 form-group mb-3">
      <form:form action="/ninja/create" method="POST" modelAttribute="newNinja">
        <div class="form-group mb-3">
          <form:label for="dojo" class="form-label" path="dojo"
            >Dojo:</form:label
          >
          <form:select class="form-select" path="dojo">
            <c:forEach var="dojo" items="${allDojos}">
              <option value="${dojo.id}">
                <c:out value="${dojo.name}"></c:out>
              </option>
            </c:forEach>
          </form:select>
        </div>
        <div class="form-group mb-3">
          <form:label for="firstName" class="form-label" path="firstName"
            >First Name:</form:label
          >
          <form:input
            type="text"
            name="firstName"
            class="form-control mb-3"
            path="firstName"
          />
          <form:errors path="firstName"></form:errors>
        </div>
        <div class="form-group mb-3">
          <form:label for="lastName" class="form-label" path="lastName"
            >Last Name:</form:label
          >
          <form:input
            type="text"
            name="lastName"
            class="form-control mb-3"
            path="lastName"
          />
          <form:errors path="lastName"></form:errors>
        </div>
        <div class="form-group mb-3">
          <form:label for="age" class="form-label" path="age">Age:</form:label>
          <form:input
            type="number"
            name="age"
            class="form-control mb-3"
            path="age"
          />
          <form:errors path="age"></form:errors>
        </div>
        <button class="btn btn-primary">Create Ninja</button>
      </form:form>
    </div>
  </body>
</html>
