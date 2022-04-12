<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Cookie cooks[] = request.getCookies();
	
	for(int i=0; i<cooks.length; i++) {
		cooks[i].setMaxAge(0);
		response.addCookie(cooks[i]);
	}
		
	response.sendRedirect("cookieinfo.jsp");
	
	
	
	%>
</body>
</html>