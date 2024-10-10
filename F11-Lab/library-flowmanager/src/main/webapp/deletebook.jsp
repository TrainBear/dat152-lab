<%--
  Created by IntelliJ IDEA.
  User: train_bear
  Date: 10.10.2024
  Time: 13:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete Book</title>
</head>
<body>
<div>
    <a href="/library">Home</a>
</div>
<strong>Are you sure you want to delete the following book?</strong>
<table>
    <tr>
        <td><p>Title: </p></td>
        <td><p>${book.title}</p></td>
    </tr>
    <tr>
        <td><p>Isbn: </p></td>
        <td><p>${book.isbn}</p></td>
    </tr>
    <tr>
        <td><p>Author: </p></td>
        <td><p>${author.firstname} ${author.lastname}</p></td>
    </tr>
</table>
<form action="deletebook" method="post">
    <input hidden="hidden" name="isbn" value="${book.isbn}"/>
    <input type="submit" value="Submit" name="submit">
</form>
</body>
</html>
