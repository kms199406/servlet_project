<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*, serv.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
body {font-family: '굴림체';}
tr.header {background-color: lightblue;}
tr.record {background-color: lightgreen;}
</style>
</head>
<body>
<div align="center">
<header>
	<h2>업데이트 목록</h2>
</header>
<nav>
	<%@ include file="menu_header.jsp" %>
</nav>
<section>
<%	ArrayList<Notice> list = (ArrayList<Notice>)request.getAttribute("LIST");
	int count = list.size();
	if(count == 0){ %>
<h3>등록된 공지사항이 존재하지 않습니다.</h3>
<%	} else { %>
<table border="1">
	<tr class="header"><th width="80">글번호</th><th width="320">제 목</th>
		<th width="100">등록일</th></tr>
<%	for(int i=0; i < count; i++){
		Notice n = list.get(i); %>
	<tr class="record"><td><%= n.getNo() %></td>
		<td><a href="noticeDetail.do?NO=<%= n.getNo() %>"><%= n.getTitle() %></a></td>
		<td><%= n.getEntry_date() %></td></tr>
<%	} %>	
</table><br/>
<%	} %>
<%	int pages = (int)request.getAttribute("PAGES"); %>
<%	for(int i=1; i <= pages ; i++){ %>
	<a href=""><%= i %></a>
<%	} %>
</section>
</div>
</body>
</html>








