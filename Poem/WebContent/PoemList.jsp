<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.*"%>
<%@ page import="dto.Poem"%>
<%@ page import="dao.PoemRepository"%>
<!DOCTYPE html>
<html>
<head>
<title>Poem List</title>
<link rel="stylesheet" href="index.css">
</head>
<body>
<jsp:include page="header.jsp" />
<jsp:include page="navigation.jsp" />

<%
	PoemRepository dao = PoemRepository.getInstance();
	ArrayList<Poem> listOfPoems = dao.getAllPoems();
	String stype = request.getParameter("stype");
	String searchbar = request.getParameter("searchbar");
%>
<section>
	<p class="st">"<%=searchbar%>"의 <%=stype%> 검색결과입니다.</p>
<%

	for (int i = 0; i < listOfPoems.size(); i++) {
		Poem poem = listOfPoems.get(i);
		String stitle = poem.getTitle();
		String screator = poem.getCreator();
		String sbook = poem.getBook();
		String scontent = poem.getContent();
		if (searchbar == ""){
%>
			<div class="rp">
			<img src="./resources/images/<%=poem.getBook()%>.png" id="imgf">
			<h3><%=poem.getTitle()%></h3>
			<p>저자 :	<%=poem.getCreator()%></p>
			<p>시집 :	<%=poem.getBook()%></p>
			<p><button type="button" onclick="location.href='./PoemDetail.jsp?id=<%=poem.getPoemID()%>'" class="rdb">상세정보</button></p>
			</div>
<%
		}
		else{
			if(stype.equals("전체")){
				if(stitle.indexOf(searchbar) != -1 || screator.indexOf(searchbar) != -1 || sbook.indexOf(searchbar) != -1 || scontent.indexOf(searchbar) != -1){
%>
					<div class="rp">
					<img src="./resources/images/<%=poem.getBook()%>.png" id="imgf">
					<h3><%=poem.getTitle()%></h3>
					<p>저자 :	<%=poem.getCreator()%></p>
					<p>시집 :	<%=poem.getBook()%></p>
					<p><button type="button" onclick="location.href='./PoemDetail.jsp?id=<%=poem.getPoemID()%>'" class="rdb">상세정보</button></p>
					</div>
<%					
				}
			}
			if(stype.equals("제목")){
				if(stitle.indexOf(searchbar) != -1){
%>
					<div class="rp">
					<img src="./resources/images/<%=poem.getBook()%>.png" id="imgf">
					<h3><%=poem.getTitle()%></h3>
					<p>저자 :	<%=poem.getCreator()%></p>
					<p>시집 :	<%=poem.getBook()%></p>
					<p><button type="button" onclick="location.href='./PoemDetail.jsp?id=<%=poem.getPoemID()%>'" class="rdb">상세정보</button></p>
					</div>
<%					
				}
			}
			if(stype.equals("작가")){
				if(screator.indexOf(searchbar) != -1){
%>
					<div class="rp">
					<img src="./resources/images/<%=poem.getBook()%>.png" id="imgf">
					<h3><%=poem.getTitle()%></h3>
					<p>저자 :	<%=poem.getCreator()%></p>
					<p>시집 :	<%=poem.getBook()%></p>
					<p><button type="button" onclick="location.href='./PoemDetail.jsp?id=<%=poem.getPoemID()%>'" class="rdb">상세정보</button></p>
					</div>
<%					
				}
			}
			if(stype.equals("시집")){
				if(sbook.indexOf(searchbar) != -1){
%>
					<div class="rp">
					<img src="./resources/images/<%=poem.getBook()%>.png" id="imgf">
					<h3><%=poem.getTitle()%></h3>
					<p>저자 :	<%=poem.getCreator()%></p>
					<p>시집 :	<%=poem.getBook()%></p>
					<p><button type="button" onclick="location.href='./PoemDetail.jsp?id=<%=poem.getPoemID()%>'" class="rdb">상세정보</button></p>
					</div>
<%					
				}
			}
			if(stype.equals("내용")){
				if(scontent.indexOf(searchbar) != -1){
%>
					<div class="rp">
					<img src="./resources/images/<%=poem.getBook()%>.png" id="imgf">
					<h3><%=poem.getTitle()%></h3>
					<p>저자 :	<%=poem.getCreator()%></p>
					<p>시집 :	<%=poem.getBook()%></p>
					<p><button type="button" onclick="location.href='./PoemDetail.jsp?id=<%=poem.getPoemID()%>'" class="rdb">상세정보</button></p>
					</div>
<%					
				}
			}						
		}
	}
%>
</section>
<jsp:include page="footer.jsp" />
</body>
</html>