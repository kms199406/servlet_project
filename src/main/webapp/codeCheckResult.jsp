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
<h2>��ǰ��ȣ �ߺ� Ȯ��</h2>
<%	String id = (String)request.getAttribute("ID");
	int dup = (int)request.getAttribute("DUP"); %>
<form action="codeCheck.do" name="frm">
	�� �� : <input type="text" name="CODE" value="<%= id %>"/>
	<input type="submit" value="�ߺ� �˻�"/>
</form>	
<%	if(dup == 0){ %>
	<%= id %>�� ��� �����մϴ�.
	<input type="button" value="���" onclick="idOK()"/>
<%	} else { %>
	<%= id %>�� �̹� ��� ���Դϴ�.
<%	} %>
</div>
<script type="text/javascript">
function idOK(){
	var id = document.frm.CODE.value;
	opener.document.item.CODE.value = id;
	opener.document.item.CODE.readOnly = true;
	opener.document.item.codeChecked.value = "OK";//�ߺ��˻�� �Ķ���Ϳ� ���� �ִ´�.
	self.close();//�˾�â�� �ݴ´�.
}
</script>
</body>
</html>










