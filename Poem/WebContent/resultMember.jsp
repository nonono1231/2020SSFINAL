<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>회원 정보</title>
<link rel="stylesheet" href="index.css">
</head>
<body>
<div class="lm">
<%
	String msg = request.getParameter("msg");

		if (msg.equals("3")) {
			out.println("중복된 아이디입니다.");
			
%>
<input type="button"  value="돌아가기 " onclick="location.href='addMember.jsp'" class="hrb">
<%
		}else if(msg.equals("4")) {
			out.println("게시글 작성이 완료되었습니다.");
%>
<input type="button"  value="돌아가기 " onclick="location.href='list.jsp'" class="hrb">

<%
			
		}else{

		if (msg.equals("1"))
			out.println("회원가입이 완료되었습니다.");
		else if (msg.equals("2")) {
			String loginId = (String) session.getAttribute("sessionId");
			out.println(loginId + "님 환영합니다!");
		}			
		

%>
<input type="button"  value="돌아가기 " onclick="location.href='index.jsp'" class="hrb">
<%} %>
</div>
<jsp:include page="footer.jsp" />
</body>
</html>