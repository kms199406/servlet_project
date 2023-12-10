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
		alert("공지글이 등록되지 않았습니다. 관리자에게 문의해주세요.");
		location.href="noticeList.do";//공지글 목록으로 전환
	</script>
<%	} else { %>
	<script type="text/javascript">
		alert("공지글이 등록되었습니다.");
		location.href="noticeList.do";//공지글 목록으로 전환
	</script>
<%	} %>
</body>
</html>