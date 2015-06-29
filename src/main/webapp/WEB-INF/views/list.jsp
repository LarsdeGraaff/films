<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: jeansmits
  Date: 25/06/15
  Time: 15:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body>


<div class="container" class="">
    <h1>Films</h1>
    <table class=" table table-condensed table-hover table-striped ">
        <tr>
            <th>ID</th>
            <th>Movie Title</th>

        </tr>
        <c:forEach items="${films}" var="f">
            <tr>
                <td>${f.id}</td>
                <td><a href="film?id=${f.id}">${f.title}</a></td>
            </tr>
        </c:forEach>
    </table>


    <a href="form" class=" col-md-12 btn btn-block btn-primary">film toevoegen</a>
</div>

</body>
</html>
