<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="java.util.*,serv.IPAD " %>  
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
	<h2>APPLE  목록 화면</h2>
</header>
<nav>
	<%@ include file="menu_header.jsp" %>
</nav>
<section>
<%	ArrayList<IPAD> ipad = (ArrayList<IPAD>)request.getAttribute("LIST"); 
	int count = ipad.size();  %>
	<table border="1">
		<tr class="header">
			<th width="80">제품 번호</th><th width="120">카테고리</th>
			<th width="120">제품 이름</th><th width="250">분류</th></tr>
<%	for(int i=0; i < count; i++){
		IPAD pad = ipad.get(i); %>			
		<tr class="record">
		<td align="center"><a href="phonDetail.do?ID=<%= pad.getId() %>"><%= pad.getId() %></a></td>
		<td><%= pad.getCategory() %></td>
		<td><%= pad.getProduct_name() %></td>
		<td><%= pad.getBun()%></td></tr>
<%	} %>
	</table><br/>
<%	int pages = (int)request.getAttribute("PAGES"); 
	for(int i=1; i <= pages; i++ ) { %>	
		<a href=""><%= i %></a>
<%	} %>
</section>
</div>
</body>
</html>