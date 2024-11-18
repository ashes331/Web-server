<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<h2>회원가입</h2>
	<h5>회원이 되어 다양한 혜택을 경험해 보세요!</h5><br>
	
	
	<form method="post" action="insertTestPro.jsp">
		아이디 <br>
		<input type="text" name="id" placeholder="아이디를 입력해주세요(6~20자 이내)" maxlength="50"> <input type="submit" value="중복하기"><br>
		비밀번호 <br>
		<input type="password" name="passwd" placeholder="비밀번호를 입력해주세요(특수문자불가)" maxlength="16"><br>
		비밀번호 확인 <br>
		<input type="password" name="repasswd" placeholder="동일한 비밀번호를 재입력해주세요" maxlength="16"><br>
		이름 <br>
		<input type="text" name="name" placeholder="이름을 입력해주세요" maxlength="10"><br>
		전화번호 <br>
		<input type="text" name="callnumber" placeholder="휴대폰 번호를 입력해주세요" maxlength="20"><br>
		이메일 <br>
		<input type="text" name="email" placeholder="이메일을 입력해주세요" maxlength="50"><br>
		생년월일 <br>
		<input type="date" name="ymd" maxlength="50"><br>
		<input type="submit" value="가입하기">	
	</form>
</body>
</html>