<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공</title>
</head>
<body>
	<h2>로그인 성공</h2>
	<hr>
	<%
		request.setCharacterEncoding("utf-8");
		
		String u_id = request.getParameter("id");
		String u_pw = request.getParameter("pw");
		
		Cookie cook_id = new Cookie("userID","u_id");
		Cookie cook_pw = new Cookie("userPW","u_pw");//쿠키객체 생성
		
		response.addCookie(cook_id);
		response.addCookie(cook_pw);
		
		out.println(u_id + "님 환영합니다.");
	%>
</body>
</html>