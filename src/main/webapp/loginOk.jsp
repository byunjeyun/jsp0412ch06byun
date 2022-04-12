<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
	
		String memId = request.getParameter("id");
		String memPw = request.getParameter("pw");
		
		
		if(memId.equals("tiger") && memPw.equals("12345"))
		
		{
			Cookie cook_id = new Cookie("userId","tiger");
			Cookie cook_pw = new Cookie("userPw","12345");
			
			response.addCookie(cook_id);
			response.addCookie(cook_pw);
		
			out.println(memId + "님 환영합니다.");
			
		} else{
			response.sendRedirect("login_fail.jsp");//로그인 실패시 이동할 페이지
		}
	%>
	<br>
	
	<a href="cookieinfo.jsp">로그인정보확인(쿠키확인)</a><br>
</body>
</html>