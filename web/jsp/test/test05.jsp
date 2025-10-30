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
    <title>POST Method 2</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>
    <%
        int cm = Integer.parseInt(request.getParameter("numberCm"));
        String[] changeArray = request.getParameterValues("change");

        String cmString = "";
//        StringBuilder sb = new StringBuilder();
//이거 써보기
        for (String change : changeArray) {

            double result = 0;
            if(change.equals("inch")){
                result = cm /  2.54;
                cmString += result + "in<br>";
            } else if (change.equals("yard")) {
                result = cm / 91.44;
                cmString += result +"yd<br>";
            }
            else if (change.equals("feet")) {
                result = cm / 30.48;
                cmString += result + "ft<br>";
            }
            else if (change.equals("meter")) {
                result = cm / 100.0;
                cmString += result+ "m";
            }
        }

    %>
    <div class="container">
        <h2>변환 결과</h2>
        <h3><%= cm %>cm</h3>
        <hr>
        <h3><%= cmString %></h3>


    </div>


</body>
</html>
