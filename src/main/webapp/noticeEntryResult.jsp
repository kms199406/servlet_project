<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%	String result = request.getParameter("R");
	if(result.equals("0")) { %>
	<script type="text/javascript">
		alert("�������� ��ϵ��� �ʾҽ��ϴ�. �����ڿ��� �������ּ���.");
		location.href="noticeList.do";//������ ������� ��ȯ
	</script>
<%	} else { %>
	<script type="text/javascript">
		alert("�������� ��ϵǾ����ϴ�.");
		location.href="noticeList.do";//������ ������� ��ȯ
	</script>
<%	} %>
</body>
</html>