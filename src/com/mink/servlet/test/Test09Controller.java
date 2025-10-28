package com.mink.servlet.test;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
@WebServlet("/servlet/test09")
public class Test09Controller extends HttpServlet {
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

        response.setContentType("text/html");

        PrintWriter out = response.getWriter();

        String name = request.getParameter("name");
        String content = request.getParameter("content");
        out.println("" +
                "<html>\n" +
                "   <head><title>입사 지원</title></head>\n" +
                "   <body>");

        out.println("" +
                "       <h3>" + name + "님 지원이 완료 되었습니다.</h3>\n" +
                "       <hr>\n" +
                "       <div>지원 내용<br> " + content+ "</div>\n");
        out.println("" +
                "   </body>\n" +
                "</html>");
    }
}
