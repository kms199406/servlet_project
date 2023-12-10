<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
body {font-family: '굴림체';}
tr.header {background-color: lightblue;}
tr.record {background-color: lightgreen;}
</style></head>
<body>
<div align="center">
<header>
	<h2>로그인</h2>
</header>
<nav>
	<%@ include file="menu_header.jsp" %>
</nav>
<section>
<%	String result = request.getParameter("R");
	if(result.equals("OK")){ %>
<h3>로그인 되었습니다~</h3>
<%	} else { %>
<h3>로그인 되지 않았습니다. 계정과 암호를 확인하세요.</h3>
<%	} %>
</section>
</div>
</body>
</html>







