<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>장보기 목록</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>
    <%
        List<String> goodsList = Arrays.asList(new String[]{
                "저지방 우유", "요플레 4개", "딸기 1팩", "삼겹살 300g", "생수 6개", "주방 세제"
        });
    %>
    <div class="container">
        <h3 class="text-center mb-2">장 목록</h3>
        <table class="table table-hover text-center">
            <thead>
            <tr>
                <th scope="col">번호</th>
                <th scope="col">품목</th>
            </tr>
            </thead>
            <tbody>
            <% for(int i = 0; i < goodsList.size(); i++) { %>
            <tr>
                <td><%= i + 1 %></td>
                <td><%= goodsList.get(i) %></td>
            </tr>
            <% } %>
            </tbody>
        </table>
    </div>

</body>
</html>
