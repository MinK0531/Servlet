<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>배탈의 민족 검색</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>
    <div class="container">
        <h1>메뉴 검색</h1>
        <form method="post" action="/jsp/test/test07.jsp">
            <div class="d-flex align-items-end">
                <input type="text" class="form-control w-50 mr-1" name="menu"><label><input type="checkbox" class="ml-1" name="point" value="check"> 4점 이하 제외</label><br>
            </div>
            <button type="submit" class="btn bg-success text-white mt-2 ">검색</button>
        </form>
    </div>
</body>
</html>
