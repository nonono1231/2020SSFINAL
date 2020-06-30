<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dto.Poem"%>
<%@ page import="dao.PoemRepository"%>
<!DOCTYPE html>
<html>
<head>
<title>Poem Detail</title>
<link rel="stylesheet" href="index.css">
</head>
<body>
<jsp:include page="header.jsp" />
<jsp:include page="navigation.jsp" />

	<%
	    String id = request.getParameter("id");
		PoemRepository dao = PoemRepository.getInstance();
		Poem poem = dao.getPoemByID(id);
	%>
<section>	
	<div class="pbox">
	<h3 class="pc"><%=poem.getTitle()%></h3>
	<p class="pca"><%=poem.getCreator()%></p>
	<p class="pc"><%=poem.getContent()%></p>
	</div>
</section>		


<jsp:include page="footer.jsp" />
</body>
</html>