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
<%	String check = request.getParameter("CHECK");
	if(check !=null) { %>
	<script type="text/javascript">
		alert("�� ���񽺸� �̿��Ͻ÷���, �α��� �ؾ� �մϴ�.");
	</script>
<%	} %>
<form action="login.do" method="post" onsubmit="return check(this)">
<table>
	<tr height="40"><th>�����ID</th>
		<td><input type="text" name="ID" size="10"/></td></tr>
	<tr height="40"><th>�� ȣ</th>
		<td><input type="password" name="PWD" size="10"/></td></tr>
</table>
<table>
	<tr><td align="center"><input type="submit" value="�α���"/></td>
		<td align="center"><input type="reset" value="�� ��"/></td></tr>
</table><br/>
</form>
	<a href="userEntry.jsp">�� �ű� ������ ���</a>
</section>
</div>
</body>
</html>








