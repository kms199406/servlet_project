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
<h2>���� �ߺ� Ȯ��</h2>
<%	String id = (String)request.getAttribute("ID");
	String dup = (String)request.getAttribute("DUP"); %>
<form action="idCheck.do" name="frm">
	�� �� : <input type="text" name="ID" value="<%= id %>"/>
	<input type="submit" value="�ߺ� �˻�"/>
</form>	
<%	if(dup == null){ %>
	<%= id %>�� ��� �����մϴ�.
	<input type="button" value="���" onclick="idOK()"/>
<%	} else { %>
	<%= id %>�� �̹� ��� ���Դϴ�.
<%	} %>
</div>
<script type="text/javascript">
function idOK(){
	var id = document.frm.ID.value;
	opener.document.fm.ID.value = id;
	opener.document.fm.ID.readOnly = true;
	opener.document.fm.idChecked.value = "OK";//�ߺ��˻�� �Ķ���Ϳ� ���� �ִ´�.
	self.close();//�˾�â�� �ݴ´�.
}
</script>
</body>
</html>










