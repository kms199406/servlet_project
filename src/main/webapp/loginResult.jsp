<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
body {font-family: '����ü';}
tr.header {background-color: lightblue;}
tr.record {background-color: lightgreen;}
</style></head>
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







