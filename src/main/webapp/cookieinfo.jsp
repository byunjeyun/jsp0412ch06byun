<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>쿠키 객체 정보 확인</h2>
	<hr>
	<%
		Cookie cooks[]	= request.getCookies();//쿠키 객체 가져오기(배열반환)
		
		for(int i=0; i<cooks.length; i++) {
			String co_n = cooks[i].getName();
			out.println("쿠키이름 : "+ co_n+ "<br>");
			String co_v = cooks[i].getValue();
			out.println("쿠키 값 : "+ co_v+ "<br>");
		}
			
	%>
	
	<a href="cookieDel.jsp">쿠키삭제</a> 
</body>
</html>