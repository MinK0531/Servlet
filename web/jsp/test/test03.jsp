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

        SimpleDateFormat dateFormatter = new SimpleDateFormat("yyyy M d");
        SimpleDateFormat timeFormatter = new SimpleDateFormat("h m ss");

        String dateString2 = request.getParameter("date");
        String timeString2 = request.getParameter("time");

        String dateString = dateFormatter.format(now);
        String timeString = timeFormatter.format(now);

        String result ="";
        String text ="";
        String datenumber[] = dateString.split(" ");
        String timenumber[] = timeString.split(" ");
        if(timeString2 != null){
            text= "현재 시간";
            result = (text +" <span class='font-weight-bold'>" +timenumber[0] +
                    "</span>시 <span class='font-weight-bold'>" + timenumber[1] +
                    "</span>분 <span class='font-weight-bold'>" + timenumber[2] +
                    "</span>초 ");
        }
        else if(dateString2 != null){
            text= "오늘 날짜";
            result = ("text + <span class='font-weight-bold'>" +datenumber[0] +
                    "</span>년 <span class='font-weight-bold'>" + datenumber[1] +
                    "</span>월 <span class='font-weight-bold'>" + datenumber[2] +
                    "</span>일 ");
        }
    %>

    <div class="container">
        <li class ="justify-content-start" ><%=text%></li>
        <h1 class="font-weight-light"><%=result%></h1>

    </div>
</body>
</html>
