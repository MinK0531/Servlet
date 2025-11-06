package com.mink.common;

import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class MysqlService {

    // Design pattern
    // Singleton pattern :클래스 내에서 하나의 객체만 생성하고 이를 활용하도록 제한

    // static 변수 :객체 작성 없이 사용할 수 있는 매서드
    private static MysqlService mysqlService = null;

    private Connection connection;

    // 객체를 사용하는 쪽에서 생성자 대신 활용
    // 해당 클래스 객체를 사용할 수 있도록 return 해주는 매서드
    // static 매서드 :  객체 생성 없이 호출할 수 있는 매서드

    public static MysqlService getInstance(){

        if(mysqlService == null){
            mysqlService = new MysqlService();
        }

        return mysqlService;
    }

    // 접속하기
    public boolean connect(){
        // database 서버 접속
        try {
            DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
            // 접속 정보 준비
            // 서버 접속 주소, 포트, 사용할 데이터 베이스, 사용자 이름, 비밀번호
            String url = "jdbc:mysql://localhost:3306/min";
            String username = "root";
            String password = "root";

            // 접속 및 접속 관리 객체 얻기
            connection = DriverManager.getConnection(url, username, password);
        } catch (SQLException e) {
            return false;
        }
        return true;

    }

    // 조회하기
    public List<Map<String,Object>> select(String query){
        try {
            Statement statement = connection.createStatement();

            ResultSet resultSet = statement.executeQuery(query);

            // 조회 결과 컬럼 목록
            ResultSetMetaData rsmd = resultSet.getMetaData();

            // 컬럼 개수 얻어오기
            int count = rsmd.getColumnCount();

            List<String> columnList = new ArrayList<>();
            for(int i = 1; i <= count; i++){
                String name = rsmd.getColumnName(i);
                columnList.add(name);
            }

            List<Map<String,Object>> resultList = new ArrayList<>();
            while (resultSet.next()){
                // 한 행의 정보를 Map으로 구성
                // 컬럼 이름을 키로 대응

                Map<String,Object> row = new HashMap<>();

                for(String column:columnList){
                    row.put(column, resultSet.getObject(column));
                }
                resultList.add(row);
            }

            statement.close();
            return resultList;

        } catch (SQLException e) {
            return null;
        }
    }

    // INSERT, UPDATE, DELETE
    public int update(String query){
        try {
            Statement statement = connection.createStatement();

            int count = statement.executeUpdate(query);

            return count;

        } catch (SQLException e) {
            return -1;
        }

    }

    //접속 끊기
    public boolean disconnect(){

        try {
            connection.close( );
        } catch (SQLException e) {
            return false;
        }
        return true;
    }



}
