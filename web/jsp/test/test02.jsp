<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>BMI 수치</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>
    <%
        double height = Integer.parseInt(request.getParameter("height"));
        double weight = Integer.parseInt(request.getParameter("weight"));

        double bmi = weight /((height / 100.0) * (height / 100.0));

        String result = "";

        if(bmi < 18.5){
            result = "저체중";
        } else if (bmi < 25) {
            result ="정상";
        }
        else if (bmi < 30) {
            result = "과체중";
        }
        else if (bmi >= 30) {
            result ="비만";
        }

    %>

    <div class="container">
        <h2>BMI 측정결과</h2>
        <h1 class="font-weight-light"> 당신은 <span class="text-info"><%=result%></span> 입니다.</h1>

        <p>BMI 수치 : <%= bmi %></p>
    </div>


</body>
</html>
