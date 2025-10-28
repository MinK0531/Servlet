package com.mink.servlet.test;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

@WebServlet("/servlet/test10")
public class Test10Controller extends HttpServlet {
    private final Map<String, String> userMap =  new HashMap<String, String>() {
        {
            put("id", "hagulu");
            put("password", "asdf");
            put("name", "김인규");
        }
    };
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

        response.setContentType("text/html");

        PrintWriter out = response.getWriter();

        String id = request.getParameter("id");
        String password = request.getParameter("password");
        out.println("" +
                "<html>\n" +
                "   <head><title>입사 지원</title></head>\n" +
                "   <body>");

        if(!(id.equals(userMap.get("id")))){
            out.println("       <h1>id가 일치하지 않습니다.</h1>\n");
        } else if (!(password.equals(userMap.get("password")))) {
            out.println("       <h1>password가 일치하지 않습니다.</h1>\n");
        }
        else {
            out.println("       <h1>" + userMap.get("name") + "님 환영 합니다.</h1>\n");
        }
        out.println("" +
                "   </body>\n" +
                "</html>");

    }
}
