<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>종합문제2</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <%
        String title = request.getParameter("title");
        String id = request.getParameter("id");

        Map<String, Object> artistInfo = new HashMap<>();
        artistInfo.put("name", "아이유");
        artistInfo.put("debute", 2008);
        artistInfo.put("agency", "EDAM엔터테인먼트");
        artistInfo.put("photo", "https://musicmeta-phinf.pstatic.net/artist/000/112/112579.jpg?type=ff300_300");

        List<Map<String, Object>> musicList = new ArrayList<>();

        Map<String, Object> musicInfo = new HashMap<>();
        musicInfo.put("id", 1);
        musicInfo.put("title", "팔레트");
        musicInfo.put("album", "Palette");
        musicInfo.put("singer", "아이유");
        musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/000/2000240.jpg?type=r360Fll");
        musicInfo.put("time", 217);
        musicInfo.put("composer", "아이유");
        musicInfo.put("lyricist", "아이유");
        musicList.add(musicInfo);

        musicInfo = new HashMap<>();
        musicInfo.put("id", 2);
        musicInfo.put("title", "좋은날");
        musicInfo.put("album", "Real");
        musicInfo.put("singer", "아이유");
        musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/000/184/184117.jpg?type=r360Fll");
        musicInfo.put("time", 233);
        musicInfo.put("composer", "이민수");
        musicInfo.put("lyricist", "김이나");
        musicList.add(musicInfo);

        musicInfo = new HashMap<>();
        musicInfo.put("id", 3);
        musicInfo.put("title", "밤편지");
        musicInfo.put("album", "palette");
        musicInfo.put("singer", "아이유");
        musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/000/2000240.jpg?type=r360Fll");
        musicInfo.put("time", 253);
        musicInfo.put("composer", "제휘,김희원");
        musicInfo.put("lyricist", "아이유");
        musicList.add(musicInfo);

        musicInfo = new HashMap<>();
        musicInfo.put("id", 4);
        musicInfo.put("title", "삐삐");
        musicInfo.put("album", "삐삐");
        musicInfo.put("singer", "아이유");
        musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/559/2559408.jpg?type=r360Fll");
        musicInfo.put("time", 194);
        musicInfo.put("composer", "이종훈");
        musicInfo.put("lyricist", "아이유");
        musicList.add(musicInfo);

        musicInfo = new HashMap<>();
        musicInfo.put("id", 5);
        musicInfo.put("title", "스물셋");
        musicInfo.put("album", "CHAT-SHIRE");
        musicInfo.put("singer", "아이유");
        musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/000/592/592471.jpg?type=r360Fll");
        musicInfo.put("time", 194);
        musicInfo.put("composer", "아이유,이종훈,이채규");
        musicInfo.put("lyricist", "아이유");
        musicList.add(musicInfo);

        musicInfo = new HashMap<>();
        musicInfo.put("id", 6);
        musicInfo.put("title", "Blueming");
        musicInfo.put("album", "Love poem");
        musicInfo.put("singer", "아이유");
        musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/003/399/3399860.jpg?type=r360Fll");
        musicInfo.put("time", 217);
        musicInfo.put("composer", "아이유,이종훈,이채규");
        musicInfo.put("lyricist", "아이유");
        musicList.add(musicInfo);
    %>
    <div id="wrap" class="container">

        <header class="d-flex mt-3 ">
            <div class="d-flex align-items-center">
                <h3 class="text-success ml-2 mr-4">Melong</h3>
            </div>
            <div class="search d-flex justify-content-center align-items-center ml-4">
                <div class=" input-group ">
                    <input type="text" class="form-control">
                    <div class="input-group-append">
                        <button class="btn btn-info text-center" type="button">검색</button>
                    </div>
                </div>
            </div>
        </header>
        <nav class="mt-3">
            <ul class=" nav nav-start  font-weight-bold">
                <li class="nav-item"><a href="#" class="nav-link text-dark ">멜론차트</a></li>
                <li class="nav-item"><a href="#" class="nav-link text-dark ">최신음악</a></li>
                <li class="nav-item"><a href="#" class="nav-link text-dark ">장르음악</a></li>
                <li class="nav-item"><a href="#" class="nav-link text-dark ">멜롱DJ</a></li>
                <li class="nav-item"><a href="#" class="nav-link text-dark ">뮤직어워드</a></li>
            </ul>
        </nav>
        <aside class="artist-info d-flex mt-2 p-3 border border-success">
            <%
                for (Map<String, Object> music : musicList) {
                    if ((title != null && title.equals(music.get("title"))) ||
                            (id != null && Integer.parseInt(id) == (Integer) music.get("id")))  {
            %>
            <div class="d-flex">
                <img src="<%= music.get("thumbnail") %>" alt="아티스트 사진" class="align-items-center music-photo mr-3">
                <div>
                    <h1 class="font-weight-light"><%= music.get("title") %></h1>
                    <h5 class="text-success"><%= music.get("singer") %></h5>

                    <table class="mt-3 text-secondary small">
                        <tr>
                            <td class="pr-3">앨범</td>
                            <td><%= music.get("album") %></td>
                        </tr>
                        <tr>
                            <td class="pr-3">재생시간</td>
                            <td><b><%= (int) music.get("time") / 60 %> : <%= (int) music.get("time") % 60 %></b></td>
                        </tr>
                        <tr>
                            <td class="pr-3">작곡가</td>
                            <td><%= music.get("composer") %></td>
                        </tr>
                        <tr>
                            <td class="pr-3">작사가</td>
                            <td><%= music.get("lyricist") %></td>
                        </tr>
                    </table>
                </div>
            </div>
            <%
                    }
                }
            %>
        </aside>
        <h4 class="title mt-3">가사</h4>
        <hr>
        <p>가사 정보 없음</p><br>
        <hr>
        <footer>
            <div class="smal text-secondary">
                Copyright 2021. melong All Rights Reserved.
            </div>
        </footer>

    </div>
</body>
</html>
