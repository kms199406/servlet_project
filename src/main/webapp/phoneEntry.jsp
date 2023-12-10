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
	<h2>��ǰ ��� ȭ��</h2>
</header>
<nav>
	<%@ include file="menu_header.jsp" %>
</nav>
<section>
<form action="phoneEntry.do" method="post" name="item" onsubmit="return check(this)">
<input type="hidden" name="codeChecked">
<table>
	<tr><th>��ǰ��ȣ</th><td><input type="text" name="CODE" size="6"/>
		<input type="button" value="�ߺ� �˻�" onclick="codeCheck()"/></td></tr>
	<tr><th>ī�װ�</th><td><input type="text" name="CATEGORY" size="10"/></td></tr>
	<tr><th>��ǰ��</th><td><input type="text" name="P_NAME" size="5"/></td></tr>
	<tr><th>��ǰ����</th><td><textarea rows="5" cols="DESC" name="DESC"></textarea>
		</td></tr>
	<tr><th>�̹��� ���ϸ�</th><td><input type="text" name="IMAGE" size="10"/>
		</td></tr>
	<tr><th>�� ��</th><td><input type="text" name="PRICE" size="10"/></td></tr>
	<tr><th>�� ��</th><td><input type="text" name="BUNRYU" size="5"/></td></tr>
	<tr><td colspan="2" align="center">
		<input type="submit" value="�� ��"/>
		<input type="reset" value="�� ��"/></td></tr>
</table>
</form>
<script type="text/javascript">
function check(frm){
	if( ! confirm("������ ����Ͻðڽ��ϱ�?")) return false;
}
function codeCheck(){
	var code = document.item.CODE.value;
	if(code == ''){
		alert("��ǰ�ڵ带 �Է��ϼ���."); document.item.CODE.focus(); return;
	}
	var url = "codeCheck.do?CODE="+code;
	window.open(url,"_blank_","width=450,height=200");
}
</script>
</section>
</div>
</body>
</html>






