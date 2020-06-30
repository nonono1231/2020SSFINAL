<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Login</title>
<link rel="stylesheet" href="index.css">
</head>
<body>

	<%
		String error = request.getParameter("error");
		if (error != null) {
			out.println("아이디와 비밀번호를 확인해 주세요");
		}
	%>
	<div class="login-box">
	<form class="login-form" action="processLoginMember.jsp" method="post">
		<h1>로그인</h1>
		<input type="text" name="id" placeholder="아이디" required autofocus class="txtb">
		<input type="password" name="password" placeholder="비밀번호" required class="txtb">
		<button type="submit" class="login-btn">로그인</button><br>
		<input type="button" value="돌아가기 " onclick="location.href='index.jsp'" class="lrb">
	</form>
	</div>

<jsp:include page="footer.jsp" />
</body>
</html>