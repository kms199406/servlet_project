<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<div align="center">
<table>
	<tr>
	<td width="160"><a href="index.jsp">�� ���� �Ұ�</a></td>
	<td width="160"><div class="gnb" >
	
	<a href="PhonListServlet">�� ��ǰ ���</a>
		<ul class="lnb">
			<li><a href ="PhonListServlet">������</a></li>
			<li><a href ="IpadListServlet">�����е�</a></li>
			<li><a>�ƺ�</a></li>
		</ul>
	
	
	</div>
	</td>
<%	String id = (String)session.getAttribute("ID"); 
	String admin = (String)session.getAttribute("ADMIN"); %>

<%	if(admin != null) { %>		
		<td width="160"><a href="loginCheck.do">�� ��ǰ ���</a></td>
		<td width="280"><a href="noticeEntry.do">�� ����Ʈ���� ������Ʈ ����</a></td>
<%	} %>
		<td width="280"><a href="noticeList.do">�� ����Ʈ���� ������Ʈ ����</a></td>
<%	if(id != null || admin != null) { %>
		<td width="160">
			<% if(admin != null) {%>
				<font color="red"><%= admin %>��</font><br/>
			<% } else { %>
				<font color="red"><%= id %>��</font><br/>
			<%	} %>
			<a href="logout.do">�� �α׾ƿ� �ϱ�</a>
		</td>
<%	} else { %>
		<td width="160"><a href="login.jsp">�� �α��� �ϱ�</a></td>
<%	} %>
	</tr> 
</table>
</div>