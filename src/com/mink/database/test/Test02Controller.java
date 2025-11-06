package com.mink.database.test;

import com.mink.common.MysqlService;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/db/test/test02")
public class Test02Controller extends HttpServlet {

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {


        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String address = request.getParameter("address");


        MysqlService mysqlService = MysqlService.getInstance();

        mysqlService.connect();
        String query = "INSERT INTO `url`\n" +
                "(`name`,`address`)\n" +
                "VALUES\n" +
                "('" + name +"','" + address + "');";


        int count = mysqlService.update(query);
        mysqlService.disconnect();


        response.sendRedirect("/db/test/url.jsp");



    }


}
