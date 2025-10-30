
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>날짜 시간 출력</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

</head>
<body>
    <form method="get" action="/jsp/test/test03.jsp">
        <div class="container">
            <h3>날짜, 시간 링크</h3>
            <a href = "test03.jsp?what=time" class="btn bg-info text-white">현재 시간 확인</a>
            <a href = "test03.jsp?what=date" class="btn bg-success text-white">현재 날짜 확인</a>
        </div>
    </form>
</body>
</html>

<%--<form method="get" action="/jsp/test/test03.jsp">--%>
<%--    <div class="container">--%>
<%--        <h3>날짜, 시간 링크</h3>--%>
<%--        <a href = "test03.jsp?time=1" class="btn bg-info text-white">현재 시간 확인</a>--%>
<%--        <a href = "test03.jsp?date=1" class="btn bg-success text-white">현재 날짜 확인</a>--%>
<%--    </div>--%>
<%--</form>--%>
<%--    <form method="get" action="/jsp/test/test03.jsp">--%>
<%--        <h3>날짜, 시간 링크</h3>--%>
<%--        <button type="submit"  class="btn bg-info text-white" name="time">현재 시간 확인</button>--%>
<%--        <button type="submit"  class="btn bg-success text-white" name="date">현재 날짜 확인</button>--%>

<%--    </form>--%>
