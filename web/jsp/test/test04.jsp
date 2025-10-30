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
    <title>Post Method1</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>
    <%
        String calculation = request.getParameter("calculation");
        int number1 = Integer.parseInt(request.getParameter("number1"));
        int number2 = Integer.parseInt(request.getParameter("number2"));
        double result = 0;
        if(calculation.equals("+")){
            result = number1+number2;
        }else if(calculation.equals("-")) {
            result = number1 - number2;
        }else if(calculation.equals("X")) {
            result = number1 * number2;
        }else if(calculation.equals("÷")){
            result = number1/(double)number2;
        }
    %>
    <div>
        <h3>계산 결과</h3>
        <h1><%=number1 %> <%= calculation %>  <%= number2 %>  =  <span class="text-primary"><%= result %></span></h1>
    </div>


</body>
</html>
