<%@ page import="com.mink.common.MysqlService" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>사이트</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>
    <%
        MysqlService mysqlService = MysqlService.getInstance();

        mysqlService.connect();
        List<Map<String,Object>> urlList = mysqlService.select("SELECT *FROM `url`;");


        mysqlService.disconnect();

    %>
    <table class="table table-hover text-center">
        <thead>
        <tr>
            <th scope="col" class="font-weight-blod">사이트</th>
            <th scope="col" class="font-weight-blod">사이트 주소</th>
            <th scope="col" class="font-weight-blod">삭제</th>
        </tr>
        </thead>
        <tbody>
        <%for(Map<String,Object> url:urlList){%>
            <tr>
                <td><%= url.get("name") %></td>
                <td><a href="<%= url.get("address") %>"><%= url.get("address") %></a></td>
                <td><a href="/db/test/test03?id=<%= url.get("id") %>" class="btn btn-danger text-light">삭제</a></td>
            </tr>

        <%
            }
        %>

        </tbody>
    </table>

</body>
</html>
