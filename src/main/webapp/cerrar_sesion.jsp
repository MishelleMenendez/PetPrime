<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="true"%>
<%
HttpSession sesionOk = request.getSession();
sesionOk.invalidate();
response.sendRedirect("index.jsp");
%>
<!DOCTYPE html>	

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
</body>
</html>