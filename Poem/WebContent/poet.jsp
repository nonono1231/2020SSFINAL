<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.*"%>
<%@ page import="dto.Poet"%>
<%@ page import="dao.PoetRepository"%>
<!DOCTYPE html>
<html>
<head>
<title>Poet List</title>
<link rel="stylesheet" href="index.css">
</head>
<body>
<jsp:include page="header.jsp" />
<jsp:include page="navigation.jsp" />

<%
	PoetRepository dao = PoetRepository.getInstance();
	ArrayList<Poet> listOfPoets = dao.getAllPoets();
%>

<%

	for (int i = 0; i < listOfPoets.size(); i++) {
		Poet poet = listOfPoets.get(i);
		String stitle = poet.getPid();
		String screator = poet.getPname();
		String sbook = poet.getPbirth();
		String scontent = poet.getPdeath();
%>
			<div class="rp">
			<img src="./resources/images/<%=poet.getPname()%>.png" id="imgf">
			<h3><%=poet.getPname()%></h3>
			<p>출생일 : <%=poet.getPbirth()%></p>
			<p>사망일 : <%=poet.getPdeath()%></p>
			<p><button type="button" onclick="location.href='./PoetDetail.jsp?id=<%=poet.getPid()%>'" class="rdb">상세정보</button></p>
			</div>
<%
	}
%>

<jsp:include page="footer.jsp" />
</body>
</html>