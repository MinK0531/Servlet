<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %><%--
  Created by IntelliJ IDEA.
  User: A1-13
  Date: 2025-10-29
  Time: 오후 6:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

</head>
<body>
    <%
        Date now = new Date();

        SimpleDateFormat dateFormatter = new SimpleDateFormat("yyyy년 M월 d일");
        SimpleDateFormat timeFormatter = new SimpleDateFormat("h시 m분 ss초");

        String dateString = dateFormatter.format(now);
        String timeString = timeFormatter.format(now);
        String dateString2 = request.getParameter("date");
        String timeString2 = request.getParameter("time");

        String result ="";
        if(timeString2 != null){
            result = ("현재 시간 " +timeString);
        }
        else if(dateString2 != null){
            result = ("오늘 날짜 " +dateString);
        }
    %>

    <h1 class="font-weight-light"><%=result%></h1>

</body>
</html>
