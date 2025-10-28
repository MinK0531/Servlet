package com.mink.servlet.test;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
@WebServlet("/servlet/test07")
public class Test07Controller extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html");

        PrintWriter out  = response.getWriter();
        String address = request.getParameter("address");
        String creditcard = request.getParameter("creditcard");
        int price = Integer.parseInt(request.getParameter("price"));

        if(!(address.contains("서울시"))){
            out.println("배달 불가 지역입니다.");
            return;
        }
        if(creditcard.equals("신한카드")){
            out.println(" 결제 불가 카드입니다.");
            return;
        }

        out.println("" +
                "<html>\n" +
                "   <head><title>주문하기</title></head>\n" +
                "   <body>\n" +
                "       <h3>" + address + " 배달 준비중</h3>\n" +
                "       <hr>\n" +
                "       <p>결재금액 : "+ price + "</p>\n" +
                "   </body>\n" +
                "</html>\n");


    }
}
