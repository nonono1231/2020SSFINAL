<%@ page contentType="text/html; charset=utf-8"%>
<header>
	<h1><a href="index.jsp">디지털 도서관 : 시</a></h1>
</header>
<p class="lt">
<%
String loginId = (String) session.getAttribute("sessionId");
if(loginId == null){
%>
<a href="addMember.jsp">회원가입</a>
<a href="loginMember.jsp">로그인</a>
</p>
<%
}else{
%>
<p class="lt"><%=loginId%>님 환영합니다
<a href="logoutMember.jsp">로그아웃</a>
<%
}
%>
</p>