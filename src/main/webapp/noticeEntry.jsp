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
<div align="center">
<header>
	<h2>������Ʈ ���� ���</h2>
</header>
<nav>
	<%@ include file="menu_header.jsp" %>
</nav>
<section>
<form action="noticeEntry.do" method="post" onsubmit="return check(this)">
<table border="1">
	<tr><th>�� ��</th><td><input type="text" name="TITLE" size="10"/></td></tr>
	<tr><th>�� ��</th><td><textarea rows="6" cols="40" name="CONTENT"></textarea>
		</td></tr>
	<tr><td colspan="2" align="center">
		<input type="submit" value="�� ��"/>
		<input type="reset" value="�� ��"/></td></tr>
</table>
</form>
<script type="text/javascript">
function check(frm){
	if(frm.TITLE.value == ''){
		alert("������ �Է��ϼ���."); frm.TITLE.focus(); return false;
	}
	if(frm.CONTENT.value == ''){
		alert("������ �Է��ϼ���."); frm.CONTENT.focus(); return false;
	}
	if( ! confirm("������ ����Ͻðڽ��ϱ�?")) return false;
}
</script>
</section>
</div>
</body>
</html>







