<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*, serv.*" %>    
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
	<h2>������Ʈ ���</h2>
</header>
<nav>
	<%@ include file="menu_header.jsp" %>
</nav>
<section>
<%	ArrayList<Notice> list = (ArrayList<Notice>)request.getAttribute("LIST");
	int count = list.size();
	if(count == 0){ %>
<h3>��ϵ� ���������� �������� �ʽ��ϴ�.</h3>
<%	} else { %>
<table border="1">
	<tr class="header"><th width="80">�۹�ȣ</th><th width="320">�� ��</th>
		<th width="100">�����</th></tr>
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








