<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.Connection"%>
<%@page import="gang.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head><title>JDBC</title></head>
<body>
    <h2>회원 추가 테스트(executeUpdate() 사용)</h2>
    <%
    // DB에 연결
    JDBConnect jdbc = new JDBConnect();
    
    // 테스트용 입력값 준비 
    String pass = "1234";
    String name = "시퀀스테스트4";

    // 쿼리문 생성
    String sql = "INSERT INTO test VALUES (seq_test.nextval, ?, ?, sysdate)";  
    PreparedStatement psmt = jdbc.con.prepareStatement(sql);  
    psmt.setString(1, pass);
    psmt.setString(2, name);

    // 쿼리 수행
    int inResult = psmt.executeUpdate(); 
    out.println(inResult + "행이 입력되었습니다.");

    // 연결 닫기
    jdbc.close(); 
    %>
    
    
    
    
</body>
</html>
