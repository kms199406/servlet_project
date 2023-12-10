<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="serv.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<link href="./style.css" rel="stylesheet" type="text/css">
</head>
<body>
<div align="center">
<header>
	<h2>��ǰ ���</h2>
</header>
<nav>
	<%@ include file="menu_header.jsp" %>
</nav>
<section>
<%	PHON item = (PHON)request.getAttribute("ITEM");	 %>
<table>
<tr><td><img alt="" height="250" width="350" src="img/<%= item.getPicturl_url() %>"></td>
	<td align="center">
	<table>
		<tr height="50"><th width="80">ī�װ�</th>
			<td width="160"><%= item.getCategory() %></td></tr>
		<tr height="50"><th width="80">��ǰ��</th>
			<td width="160"><%= item.getProduct_name() %></td></tr>
		<tr height="50"><th width="80">��ǰ����</th>
			<td width="160"><%= item.getDescription() %></td></tr>
		<tr><td colspan="2" align="center" width="240">
			<a href="PhonListServlet">�� ������� ���ư���</a></td></tr>		
	</table></td></tr>
</table>
</section>
</div>
</body>
</html>






