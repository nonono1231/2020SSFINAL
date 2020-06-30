<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Board</title>
<link rel="stylesheet" href="index.css">
</head>
<script>
	function checkForm() {
		if (!document.newWrite.name.value) {
			alert("이름을 입력하세요.");
			return false;
		}
		if (!document.newWrite.subject.value) {
			alert("제목을 입력하세요.");
			return false;
		}
		if (!document.newWrite.content.value) {
			alert("내용을 입력하세요.");
			return false;
		}		
	}
</script>
<body>
<jsp:include page="header.jsp" />
<jsp:include page="navigation.jsp" />

<%
	String loginId = (String) session.getAttribute("sessionId");
%>

		<form name="newWrite" action="processwriteForm.jsp" method="post" onsubmit="return checkForm()" class="wf-form">
			<input name="id" type="hidden"  value="<%=loginId%>">
			<p>이름 : <input name="name" type="text" class="nttxtb"></p>
			<p>제목 : <input name="subject" type="text" class="nttxtb"></p>
			<p style="text-align: left; margin-left: 10px;">내용 :
			<textarea name="content" cols="50" rows="5" class="ctxtb"></textarea></p>
			<input type="submit" value="등록 " class="rb">				
			<input type="button"  value="돌아가기 " onclick="location.href='list.jsp'" class="rb">
		</form>
		
<jsp:include page="footer.jsp" />
</body>
</html>



