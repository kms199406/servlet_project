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
	if(result.equals("0")){ %>
	<script type="text/javascript">
		alert("��ǰ�� ��ϵ��� �ʾҽ��ϴ�. �����ڿ��� �����ϼ���.");
		location.href="PhonListServlet";//������� ���ư���.
	</script>
<%	} else { %>
	<script type="text/javascript">
		alert("�� ��ǰ�� ��ϵǾ����ϴ�.");
		location.href="PhonListServlet";//������� ���ư���.
	</script>
<%	} %>
</body>
</html>






