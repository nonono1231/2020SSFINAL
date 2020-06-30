<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="dto.Board"%>
<%@ page import="dao.BoardDAO"%>
<html>
<head>
<title>Board</title>
<link rel="stylesheet" href="index.css">
</head>
<body>
<jsp:include page="header.jsp" />
<jsp:include page="navigation.jsp" />

<%
	String num = request.getParameter("num");
	BoardDAO dao = BoardDAO.getInstance();
	Board board = dao.getBoardBynum(num);
%>

	<form name="seedetail" action="listprocess.jsp" method="post" class="wf-form">

	<p>이름 : <input name="name"	value=" <%=board.getbname()%>" readonly class="nttxtb"></p>
	<p>제목 : <input name="subject" value=" <%=board.getbsubject()%>" readonly class="nttxtb"></p>
	<p style="text-align: left; margin-left: 10px;">내용 :
	<textarea name="content" cols="50" rows="5" readonly class="ctxtb"> <%=board.getbcontent()%></textarea></p>
	<input type="button"  value="돌아가기 " onclick="location.href='list.jsp'" class="rb">
	</form>
	
<jsp:include page="footer.jsp" />
</body>
</html>


