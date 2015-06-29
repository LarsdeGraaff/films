<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: jeansmits
  Date: 25/06/15
  Time: 16:05
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

<div class="container">
    <h1>Create film</h1>
    <sf:form action="create" commandName="film" method="post">
        <div class="form-group">
            <label for="title">Title</label>
            <sf:input path="title" class="form-control" />
        </div>
        <div class="form-group">
                <sf:input path="urlImage" class="form-control"/>
        </div>


        <sf:hidden path="id"/>

        <button type="submit" class="btn btn-success">submit</button>

    </sf:form>
</div>
</body>
</html>
