<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<link href="./style.css" rel="stylesheet" type="text/css">
</head>
<body>
<section>
<%	ArrayList<PHON> list = (ArrayList<PHON>)request.getAttribute("LIST"); 
	int count = list.size();  %>
	<table border="1">
		<tr class="header">
			<th width="80">제품 번호</th><th width="120">카테고리</th>
			<th width="120">제품 이름</th><th width="250">분류</th></tr>
<%	for(int i=0; i < count; i++){
		PHON item = list.get(i); %>			
		<tr class="record">
		<td align="center"><a href="phonDetail.do?ID=<%= item.getId() %>"><%= item.getId() %></a></td>
		<td><%= item.getCategory() %></td>
		<td><%= item.getProduct_name() %></td>
		<td><%= item.getBun()%></td></tr>
<%	} %>
	</table><br/>
<%	int pages = (int)request.getAttribute("PAGES"); 
	for(int i=1; i <= pages; i++ ) { %>	
		<a href=""><%= i %></a>
<%	} %>
</section>
</body>
</html>