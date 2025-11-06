
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<html>
<head>
    <title>즐겨찾기 추가</title>
</head>
<body>
    <div class="container">
        <form method="post" action="/db/test/test02">
            <h2>즐겨찾기 추가</h2>
            <label>사이트명:</label><br>
            <input type="text" class="form-control w-25 mr-1" name="name"><br>
            <label>사이트 주소:</label><br>
            <input type="text" class="form-control w-50 mr-1" name="address"><br>
            <button type="submit" class="btn btn-success text-light">추가</button>
        </form>
    </div>
</body>
</html>
