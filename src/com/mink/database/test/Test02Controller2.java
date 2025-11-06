package com.mink.database.test;

import com.mink.common.MysqlService;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet("/db/test/test03")
public class Test02Controller2 extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {


        String id = request.getParameter("id");


        MysqlService mysqlService = MysqlService.getInstance();

        mysqlService.connect();

        String query="DELETE FROM `url` WHERE id =" + id +";";


        int count = mysqlService.update(query);
        mysqlService.disconnect();


        response.sendRedirect("/db/test/url.jsp");



    }
}
