<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<link href="./style.css" rel="stylesheet" type="text/css"></head>
<body>
<div align="center">
<header>
	<h2>�α���</h2>
</header>
<nav>
	<%@ include file="menu_header.jsp" %>
</nav>
<section>
<%	String result = request.getParameter("R");
	if(result.equals("OK")){ %>
<h3>�α��� �Ǿ����ϴ�~</h3>
<%	} else { %>
<h3>�α��� ���� �ʾҽ��ϴ�. ������ ��ȣ�� Ȯ���ϼ���.</h3>
<%	} %>
</section>
</div>
</body>
</html>







