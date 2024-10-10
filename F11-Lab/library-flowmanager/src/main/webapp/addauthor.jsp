<%--
  Created by IntelliJ IDEA.
  User: train_bear
  Date: 10.10.2024
  Time: 12:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add New Author</title>
</head>
<body>
<a href="/library">Home</a>
<p>
<form action="addauthor" method="post">
    <table>
        <tr>
            <td>
                <label for="first-name">First Name:</label>
            </td>
            <td>
                <input type="text" name="first-name" placeholder="First name" id="first-name" required/>
            </td>
        </tr>
        <tr>
            <td>
                <label for="last-name">Second Name:</label>
            </td>
            <td>
                <input type="text" name="last-name" placeholder="Last name" id="last-name" required/>
            </td>
        </tr>
    </table>
    <br>
    <input type="submit" value="Submit" name="submit"></input>
</form>
</body>
</html>
