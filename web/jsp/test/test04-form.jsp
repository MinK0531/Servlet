<%--
  Created by IntelliJ IDEA.
  User: A1-13
  Date: 2025-10-30
  Time: 오후 5:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>사칙연산</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>
    <form method="post" action="/jsp/test/test04.jsp">
        <h3>사칙 연산</h3>
        <div class="d-flex">
            <input type="text" class="form-control col-2" name="number1">
            <select name="calculation" class="form-control col-1 ml-1">
                <option value="+">+</option>
                <option value="-">-</option>
                <option value="X">X</option>
                <option value="÷">÷</option>
            </select>
            <input type="text" name="number2" class="form-control col-2 ml-1">
            <button type="submit" class="btn bg-success text-white ml-2" >계산</button>

        </div>
    </form>
</body>
</html>
