<%@ page import="java.util.Arrays" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        int sum = 0;
        int[] scores = {80, 90, 100, 95, 80};
        for(int i = 0; i < scores.length; i++){
            sum += scores[i];
        }
        double average = sum / (double)scores.length;
    %>
    <h3>1. 점수들의 평균 구하기</h3>
    <h4>점수 평균은 <%= average %> 입니다.</h4>


    <%
        List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
        int result = 0;
        for(String score: scoreList){
            if(score.equals("O")){
                result += 10;
            }
        }
    %>
    <h3>2. 채점 결과</h3>
    <h4>채점 결과는 <%= result %>점 입니다.</h4>

    <%!
        public int getSum(int a){
            int sum = 0;
            for(int i = 1; i <= a; i++){
                sum += i;
            }
            return sum;
        }
    %>

    <h3>3. 1부터 N까지의 합계를 구하는 함수</h3>
    <h4>1에서 50까지의 합은 <%= getSum(50) %></h4>

    <%
        String birthDay = "20010820";
        int age = Integer.parseInt(birthDay.substring(0,4));
        int current = 2025 - age + 1;
    %>

    <h3>4. 나이 구하기</h3>
    <h4><%= birthDay %> 의 나이는 <%= current %>살 입니다.</h4>
</body>
</html>
