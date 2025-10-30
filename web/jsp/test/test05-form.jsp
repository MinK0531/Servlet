<%--
  Created by IntelliJ IDEA.
  User: A1-13
  Date: 2025-10-30
  Time: 오후 5:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>길이 변환</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>

    <div class="container">
            <h1>길이 변환</h1>
        <form method="post" action="/jsp/test/test05.jsp">
            <div class="d-flex align-items-end">
                <input type="text" class="form-control col-2 mr-1" name="numberCm"><div>cm</div>
            </div>
            <div>
                <label>인치<input type="checkbox" class="ml-1" name="change" value="inch"></label>
                <label>야드<input type="checkbox" class="ml-1" name="change" value="yard"></label>
                <label>피트<input type="checkbox" class="ml-1" name="change" value="feet"></label>
                <label>미터<input type="checkbox" class="ml-1" name="change" value="meter"></label>
            </div>
            <button type="submit" class="btn bg-success text-white" >변환</button>
        </form>

    </div>
</body>
</html>
