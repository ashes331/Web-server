<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
	<h2>로그인</h2>
	<h5>로그인 하시고 모든 기능을 이용하세요!</h5><br>
	
	
	<form method="post" action="loginTestPro.jsp">
		아이디 <br>
		<input type="text" name="id"  maxlength="50"> <input type="submit" value="중복확인"><br>
		비밀번호 <br>
		<input type="password" name="pass"  maxlength="16"><br>
		<br>
		<input type="submit" value="로그인">	
	</form>
</body>
</html>