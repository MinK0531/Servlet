package com.mink.servlet.test;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
@WebServlet("/servlet/test03")
public class Test03Controller extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html");

        PrintWriter out = response.getWriter();

        Date now = new Date();

        SimpleDateFormat formatter = new SimpleDateFormat( "yyyy/M/dd hh:mm:ss");
        String datetimeString = formatter.format(now);

        out.println("" +
                "<html>\n" +
                "   <head><title> 뉴스 기사 출력</title></head>\n" +
                "   <body>\n" +
                "       <h1>[단독]고양이가 야옹해</h1>\n" +
                "       <p>기사 입력시간 : " + datetimeString + "</p>\n" +
                "       <hr>\n" +
                "       <p>끝</p>\n" +
                "   </body>\n" +
                "</html>\n");
    }
}
