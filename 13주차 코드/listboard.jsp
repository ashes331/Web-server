<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*, java.util.*" %>

<% 
    // 데이터베이스 연결 및 쿼리 실행
    request.setCharacterEncoding("utf-8");

    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;

    String jdbcUrl = "jdbc:mysql://localhost:3306/basicjsp";
    String dbId = "jspid";
    String dbPass = "jsppass";
    
    // DB 연결 및 쿼리 실행
    try {
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
        stmt = conn.createStatement();

        // 게시판 목록을 조회하는 SQL 쿼리
        String query = "SELECT num, title, name, writedate, readcount FROM tblboard ORDER BY writedate DESC";
        rs = stmt.executeQuery(query);
%>

<HTML>
<HEAD>
    <TITLE>게시판</TITLE>

    <META http-equiv="Content-Type" content="text/html; charset=euc-kr">
    <style type='text/css'>
    <!--
        a:link        {font-family:"";color:black;text-decoration:none;}
        a:visited    {font-family:"";color:black;text-decoration:none;}
        a:hover        {font-family:"";color:black;text-decoration:underline;}
    -->
    </style>

</HEAD>
<BODY>

<center><font size='3'><b> 게시판 </b></font></center>

<TABLE border='0' width='600' cellpadding='0' cellspacing='0'>
    <TR>
        <TD><hr size='1' noshade></TD>
    </TR>
</TABLE>

<TABLE border='0' cellspacing=1 cellpadding=2 width='600'>
    <TR bgcolor='cccccc'>
        <TD><font size=2><center><b>번호</b></center></font></TD>
        <TD><font size=2><center><b>글 제목</b></center></font></TD>
        <TD><font size=2><center><b>작성자</b></center></font></TD>
        <TD><font size=2><center><b>작성일</b></center></font></TD>
        <TD><font size=2><center><b>조회</b></center></font></TD>
    </TR>

    <!-- 게시글 목록 출력 -->
    <%
        while (rs.next()) {
            int num = rs.getInt("num");
            String title = rs.getString("title");
            String name = rs.getString("name");
            String writedate = rs.getString("writedate");
            int readcount = rs.getInt("readcount");
    %>
    <TR bgcolor='ededed'>
        <TD align=center><font size=2 color='black'><%= num %></font></TD>
        <TD align=left>
            <a href="viewboard.jsp?num=<%= num %>">
            <font size=2 color="black"><%= title %></font></a>
        </TD>
        <TD align=center>
            <a href="mailto:<%= name %>">
            <font size=2 color="black"><%= name %></font></a>
        </TD>
        <TD align=center><font size=2><%= writedate %></font></TD>
        <TD align=center><font size=2><%= readcount %></font></TD>
    </TR>
    <% } %>

</TABLE>

<TABLE border='0' width='600' cellpadding='0' cellspacing='0'>
    <TR>
        <TD><hr size='1' noshade></TD>
    </TR>
</TABLE>

<TABLE border=0 width=600>
    <TR>
        <TD align=left>
        </TD>
        <TD align='right'>
            <a href='write.jsp'>[등록]</a>
        </TD>
    </TR>
</TABLE>

<%
    } catch (Exception e) {
        e.printStackTrace(); // 예외 출력
    } finally {
        // 자원 반환 (finally 블록에서 자원 해제)
        try {
            if (rs != null) rs.close();
            if (stmt != null) stmt.close();
            if (conn != null) conn.close();
        } catch (SQLException e) {
            e.printStackTrace(); // 예외 출력
        }
    }
%>

</BODY>
</HTML>