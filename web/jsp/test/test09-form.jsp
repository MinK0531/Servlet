<%@ page import="java.util.Map" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.HashMap" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>
    <%
        List<Map<String, String>> list = new ArrayList<>();
        Map<String, String> map = new HashMap<String, String>() {{ put("ch", "5"); put("name", "SBS"); put("category", "지상파"); }};
        list.add(map);
        map = new HashMap<String, String>() {{ put("ch", "7"); put("name", "KBS2"); put("category", "지상파"); }};
        list.add(map);
        map = new HashMap<String, String>() {{ put("ch", "9"); put("name", "KBS1"); put("category", "지상파"); }};
        list.add(map);
        map = new HashMap<String, String>() {{ put("ch", "11"); put("name", "MBC"); put("category", "지상파"); }};
        list.add(map);
        map = new HashMap<String, String>() {{ put("ch", "54"); put("name", "OCN"); put("category", "영화"); }};
        list.add(map);
        map = new HashMap<String, String>() {{ put("ch", "56"); put("name", "Screen"); put("category", "영화"); }};
        list.add(map);
        map = new HashMap<String, String>() {{ put("ch", "57"); put("name", "Mplex"); put("category", "영화"); }};
        list.add(map);
        map = new HashMap<String, String>() {{ put("ch", "30"); put("name", "KBS 드라마"); put("category", "드라마"); }};
        list.add(map);
        map = new HashMap<String, String>() {{ put("ch", "32"); put("name", "MBC 드라마"); put("category", "드라마"); }};
        list.add(map);
        map = new HashMap<String, String>() {{ put("ch", "34"); put("name", "Olive"); put("category", "드라마"); }};
        list.add(map);
        map = new HashMap<String, String>() {{ put("ch", "3"); put("name", "tvN"); put("category", "예능"); }};
        list.add(map);
        map = new HashMap<String, String>() {{ put("ch", "28"); put("name", "MBC Every1"); put("category", "예능"); }};
        list.add(map);
        map = new HashMap<String, String>() {{ put("ch", "48"); put("name", "JTBC2"); put("category", "예능"); }};
        list.add(map);
        map = new HashMap<String, String>() {{ put("ch", "49"); put("name", "E채널"); put("category", "예능"); }};
        list.add(map);
        map = new HashMap<String, String>() {{ put("ch", "120"); put("name", "SPOTV"); put("category", "스포츠"); }};
        list.add(map);
        map = new HashMap<String, String>() {{ put("ch", "121"); put("name", "KBSN 스포츠"); put("category", "스포츠"); }};
        list.add(map);
    %>
    <div class="container">
        <h4 class="text-center text-danger mb-3">Sk boradband IP TV</h4>
        <nav class="bg-danger">
            <ul class=" nav nav-fill small">
                <li class="nav-item"><a href="#" class="nav-link text-light ">전체</a></li>
                <li class="nav-item"><a href="#" class="nav-link text-light">지상파</a></li>
                <li class="nav-item"><a href="#" class="nav-link text-light">드라마</a></li>
                <li class="nav-item"><a href="#" class="nav-link text-light">예능</a></li>
                <li class="nav-item"><a href="#" class="nav-link text-light">영화</a></li>
                <li class="nav-item"><a href="#" class="nav-link text-light">스포츠</a></li>

            </ul>

        </nav>
        <table class="table table-hover text-center">
            <thead>
            <tr>
                <th scope="col" class="font-weight-blod">채널</th>
                <th scope="col" class="font-weight-blod">채널명</th>
                <th scope="col" class="font-weight-blod">카테고리</th>
            </tr>
            </thead>
            <tbody>
            <%for(Map<String,String> channel:list){%>
            <tr>
                <td class="col-3"><%=channel.get("ch")%></td>
                <td class="col-5"><%=channel.get("name")%></td>
                <td class="col-4"><%=channel.get("category")%></td>
            </tr>
            <%
                }
            %>

            </tbody>
        </table>
        <footer>
            <div class="text-center small">
                Copyright 2021. marondal All Rights Reserved.
            </div>

        </footer>

    </div>


</body>
</html>
