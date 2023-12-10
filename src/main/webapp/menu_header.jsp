<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<div align="center">
<table>
	<tr><td width="160"><div class="gnb" >
	
	<a href="PhonListServlet">■ 제품 목록</a>
		<ul class="lnb">
			<li><a>아이폰</a></li>
			<li><a>아이패드</a></li>
			<li><a>맥북</a></li>
		</ul>
	
	
	</div>
	</td>
<%	String id = (String)session.getAttribute("ID"); 
	String admin = (String)session.getAttribute("ADMIN"); %>
<%	if(id != null || admin != null) { %>
		<td width="160"><a href="loginCheck.do">■ 제품 등록</a></td>
<%	} %>
<%	if(admin != null) { %>		
		<td width="250"><a href="noticeEntry.do">■ 소프트웨어 업데이트 쓰기</a></td>
<%	} %>
		<td width="250"><a href="noticeList.do">■ 소프트웨어 업데이트 보기</a></td>
<%	if(id != null || admin != null) { %>
		<td width="160">
			<% if(admin != null) {%>
				<font color="red">환영합니다~ <%= admin %>님~</font>
			<% } else { %>
				<font color="red">환영합니다~ <%= id %>님~</font>
			<%	} %>
			<a href="logout.do">■ 로그아웃 하기</a>
		</td>
<%	} else { %>
		<td width="160"><a href="login.jsp">■ 로그인 하기</a></td>
<%	} %>
	</tr> 
</table>
</div>