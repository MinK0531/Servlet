<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>
        <div class="container">
            <h3>체격 조건 입력</h3>
            <form method="get" action="/jsp/test/test02.jsp">
                <div class="d-flex align-items-end">
                    <input type="text" name="height"><label>cm</label>
                    <input type="text" name="weight"><label>kg</label>
                    <button type="submit" class="btn bg-info text-white" >계산</button>
                </div>
            </form>
        </div>
</body>
</html>
