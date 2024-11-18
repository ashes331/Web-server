<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<% 
    String id = request.getParameter("id");
    String passwd = request.getParameter("passwd");
    String message = "";

    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    try {
        String jdbcUrl = "jdbc:mysql://localhost:3306/basicjsp";
        String dbId = "jspid";
        String dbPass = "jsppass";

        conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);

        String sql = "SELECT pass FROM accout WHERE id = ?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, id);  

        rs = pstmt.executeQuery();

        if (rs.next()) {            
            String dbPasswd = rs.getString("pass");  

            if (dbPasswd.equals(passwd)) {  
                message = "로그인 성공! 환영합니다.";
            } else {
                message = "비밀번호가 틀렸습니다."; 
            }
        } else {
            message = "아이디가 존재하지 않습니다."; 
        }

    } catch (Exception e) {
        e.printStackTrace();
        message = "로그인 처리 중 오류가 발생했습니다.";
    } finally {
        if (rs != null) try { rs.close(); } catch (SQLException e) { e.printStackTrace(); }
        if (pstmt != null) try { pstmt.close(); } catch (SQLException e) { e.printStackTrace(); }
        if (conn != null) try { conn.close(); } catch (SQLException e) { e.printStackTrace(); }
    }
%>

<html>
<head>
    <title>로그인 결과</title>
</head>
<body>
    <h2>로그인 결과</h2>
    <p><%= message %></p>
</body>
</html>