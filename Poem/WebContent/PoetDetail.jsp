<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dto.Poet"%>
<%@ page import="dao.PoetRepository"%>
<!DOCTYPE html>
<html>
<head>
<title>Poet Detail</title>
<link rel="stylesheet" href="index.css">
</head>
<body>
<jsp:include page="header.jsp" />
<jsp:include page="navigation.jsp" />

	<%
	    String id = request.getParameter("id");
		PoetRepository dao = PoetRepository.getInstance();
		Poet poet = dao.getPoetByID(id);
	%>
<section>	
	<div class="pbox">
	<img src="./resources/images/<%=poet.getPname()%>.png">
	<h3 class="pc"><%=poet.getPname()%></h3>
	<p class="pc"><%=poet.getPbirth()%> ~ <%=poet.getPdeath()%></p>
	<p class="pc"><%=poet.getPlife()%></p>
	</div>
</section>	
	
		
<jsp:include page="footer.jsp" />
</body>
</html>