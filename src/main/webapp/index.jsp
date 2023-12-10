<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*,serv.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
body {font-family: '����ü';}
tr.header {background-color: lightblue;}
tr.record {background-color: lightgreen;}
.gnb:hover > .lnb {
	display : unset; 
}
.lnb { 	display : none;  position:absolute; top : 80px; left : 0; background-color: lightgreen; }
.lnb {
	cursor : pointer;
}
</style>
</head>
<body>
<div align="center">
<header>
	<h2>������ ��� ȭ��</h2>
</header>
<nav>
	<%@ include file="menu_header.jsp" %>
</nav>
<section>
<%	ArrayList<PHON> list = (ArrayList<PHON>)request.getAttribute("LIST"); 
	int count = list.size();  %>
	<table border="1">
		<tr class="header">
			<th width="80">��ǰ ��ȣ</th><th width="120">ī�װ�</th>
			<th width="120">��ǰ �̸�</th><th width="250">�з�</th></tr>
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
</div>
</body>
</html>






