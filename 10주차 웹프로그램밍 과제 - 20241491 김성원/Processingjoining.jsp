<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="ddd.memberInfo" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 결과</title>
</head>
<body>

<%
    String id = request.getParameter("id");
    String password = request.getParameter("pass");
    String name = request.getParameter("name");
    String address = request.getParameter("address");
    String email = request.getParameter("email");

    memberInfo member = new memberInfo();
    member.setId(id);
    member.setPassword(password);
    member.setName(name);
    member.setAddress(address);
    member.setEmail(email);
%>

<table border="1" cellpadding="1" cellspacing="0">
    <tr>
        <td>아이디</td>
        <td><%= member.getId() %></td>
        <td>암호</td>
        <td><%= member.getId() %></td> 
    </tr>
    <tr>
        <td>이름</td>
        <td><%= member.getName() %></td>
        <td>이메일</td>
        <td><%= member.getEmail() %></td>
    </tr>
    <tr>
        <td>주소</td>
        <td colspan="3"><%= member.getAddress() %></td> 
    </tr>
</table>

</body>
</html>