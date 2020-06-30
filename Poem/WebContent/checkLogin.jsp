<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	if (session.getAttribute("sessionId")==null) {

%>
		<c:redirect url="loginMember.jsp" />
<%
	}
	else{
%>
		<c:redirect url="list.jsp" />
<%
	}
%>