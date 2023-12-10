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
	<h2>������ ���</h2>
</header>
<nav>
	<%@ include file="menu_header.jsp" %>
</nav>
<section>
<form action="userEntry.do" method="post" name="fm" onsubmit="return check(this)">
<input type="hidden" name="idChecked">
<table>
<tr height="40"><th>������ID</th><td><input type="text" name="ID" size="10"/>
	<input type="button" value="�ߺ��˻�" onclick="idCheck()"/></td></tr>
<tr height="40"><th>�� ȣ</th><td><input type="password" name="PWD" size="10"/>
	</td></tr>
<tr height="40"><th>��ȣ Ȯ��</th><td><input type="password" name="REPWD" 
	size="10"/></td></tr>
<tr height="40"><th>�� ��</th><td><input type="text" name="NAME" size="10"/>
	</td></tr>
<tr height="40"><th>�� ��</th><td><input type="text" name="ADDR" size="20"/>
	</td></tr>
<tr height="40"><th>�̸���</th><td><input type="text" name="EMAIL" size="20"/>
	</td></tr>
<tr height="40"><th>����ó</th><td><input type="text" name="PHONE" size="10"/>
	</td></tr>
<tr height="40"><th>�� ��</th><td>��<input type="radio" name="GENDER" value="M"/>
	��<input type="radio" name="GENDER" value="F"/></td></tr>
<tr height="40"><th>�� ��</th><td><select name="JOB">
		<option>ȸ���</option><option>�л�</option><option>�ڿ���</option>
		<option>�ֺ�</option><option>��Ÿ</option></select></td></tr>
<tr height="40"><td colspan="2" align="center">
	<input type="submit" value="�����ϱ�"/>
	<input type="reset" value="�� ��"/></td></tr>	
</table>
</form>
<script type="text/javascript">
function idCheck(){
	if(document.fm.ID.value == ''){
		alert("������ �Է��ϼ���."); document.fm.ID.focus(); return;
	}
	var url = "idCheck.do?ID="+document.fm.ID.value;
	window.open(url,"_blank_","width=450,height=200");
}
function check(frm){
	if(frm.ID.value == ''){
		alert("������ �Է��ϼ���."); frm.ID.focus(); return false;
	}
	if(frm.idChecked.value == ''){
		alert("���� �ߺ��˻縦 �ؾ� �մϴ�."); return false;
	}
	if(frm.PWD.value == ''){
		alert("��ȣ�� �Է��ϼ���."); frm.PWD.focus(); return false;
	}
	if(frm.PWD.value != frm.REPWD.value){
		alert("��ȣ�� ��ġ���� �ʽ��ϴ�."); frm.PWD.focus(); return false;
	}
	if(frm.NAME.value == ''){
		alert("�̸��� �Է��ϼ���."); frm.NAME.focus(); return false;
	}
	if( ! frm.GENDER[0].checked && ! frm.GENDER[1].checked){
		alert("������ �����ϼ���."); frm.GENDER[0].focus(); return false;
	}
	if( ! confirm("������ �����Ͻðڽ��ϱ�?")) return false;
}
</script>
</section>
</div>
</body>
</html>








