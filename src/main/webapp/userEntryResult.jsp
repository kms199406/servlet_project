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
	alert("가입되지 않았습니다. 관리자에게 문의하세요.");
	location.href="PhonListServlet";//목록으로 돌아간다.
</script>
<%	} else { %>
<script type="text/javascript">
	alert("축하합니다~ 가입되었습니다~.");
	location.href="PhonListServlet";//목록으로 돌아간다.
</script>
<%	} %>
</body>
</html>





