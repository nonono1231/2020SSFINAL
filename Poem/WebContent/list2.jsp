<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import ="java.sql.*" %>
<%@ page import="java.util.*"%>
<%@ page import="dto.Board"%>
<%@ page import="dao.BoardDAO"%>

<html>
<head>
<title>Board</title>
<link rel="stylesheet" href="index.css">
<script src="//code.jquery.com/jquery-3.2.1.min.js"></script>
</head>
<body>
<jsp:include page="header.jsp" />
<jsp:include page="navigation.jsp" />

		<form action="list2.jsp" method="get" class="ssform">
				<select name="stype" class="sopbtn">
					<option value="전체" selected>전체</option>
					<option value="제목">제목</option>
					<option value="작성자">작성자</option>
					<option value="내용">내용</option>
				</select>
				<input type="text" name="searchbar" class="ssbox">
				<input type="submit" value="검색" class="ssbtn">
		</form>

	<input type="button" value="글 작성 " onclick="location.href='writeForm.jsp'" class="rb">

<% 
	String sessionId = (String) session.getAttribute("sessionId");
	BoardDAO dao = BoardDAO.getInstance();
	ArrayList<Board> listOfBoards = dao.getAllBoards();
	listOfBoards.clear();
	
	Connection conn = null;		

	String url = "jdbc:mysql://localhost:3306/LoginDB?serverTimezone=UTC";
	String user = "root";
	String password = "1234";

	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection(url, user, password);

	ResultSet rs = null;
	Statement stmt = null;

	String sql = "select * from board";
	stmt = conn.createStatement();
	rs = stmt.executeQuery(sql);
	
	while (rs.next()){
		String num = rs.getString("num");
		String id = rs.getString("id");
		String name = rs.getString("name");
		String subject = rs.getString("subject");
		String content = rs.getString("content");
		String date = rs.getString("day");
		
		listOfBoards.add(new Board(num, id, name, subject, content, date));
	}
	
	if (rs != null) rs.close();
	if (stmt != null) stmt.close();
	if (conn != null) conn.close();
	
	
	
	String stype = request.getParameter("stype");
	String searchbar = request.getParameter("searchbar");
%>
	<p class="st">"<%=searchbar%>"의 <%=stype%> 검색결과입니다.</p>

	<table class="table" id="products">
	<caption>
		<form action="" id="setRows">
			<input style="display: none;" type="text" name="rowPerPage" value="5">
		</form>
	</caption>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>작성일</th>
		</tr>
<%
	
	for (int i = 0; i < listOfBoards.size(); i++) {
		Board board = listOfBoards.get(i);
		
		if(stype.equals("전체")){
			if(board.getbsubject().indexOf(searchbar) != -1 || board.getbname().indexOf(searchbar) != -1 || board.getbcontent().indexOf(searchbar) != -1){
%>
				<tr onclick="location.href='view.jsp?num=<%=board.getbnum()%>'">
					<td style="text-align: center;"><%=board.getbnum()%></td>
					<td width="600"><%=board.getbsubject()%></td>
					<td><%=board.getbname()%></td>
					<td><%=board.getbdate()%></td>
				</tr>
<%
			}
		}else if(stype.equals("제목")){
			if(board.getbsubject().indexOf(searchbar) != -1){
%>
				<tr onclick="location.href='view.jsp?num=<%=board.getbnum()%>'">
					<td style="text-align: center;"><%=board.getbnum()%></td>
					<td><%=board.getbsubject()%></td>
					<td><%=board.getbname()%></td>
					<td><%=board.getbdate()%></td>
				</tr>
<%	
			}
		}else if(stype.equals("작성자")){
			if(board.getbname().indexOf(searchbar) != -1){
%>
				<tr onclick="location.href='view.jsp?num=<%=board.getbnum()%>'">
					<td style="text-align: center;"><%=board.getbnum()%></td>
					<td><%=board.getbsubject()%></td>
					<td><%=board.getbname()%></td>
					<td><%=board.getbdate()%></td>
				</tr>
<%	
			}
		}else if(stype.equals("내용")){
			if(board.getbcontent().indexOf(searchbar) != -1){
%>
				<tr onclick="location.href='view.jsp?num=<%=board.getbnum()%>'">
					<td style="text-align: center;"><%=board.getbnum()%></td>
					<td><%=board.getbsubject()%></td>
					<td><%=board.getbname()%></td>
					<td><%=board.getbdate()%></td>
				</tr>
<%	
			}
		}
		
		
	}
%>
	</table>

<script>
	var $setRows = $('#setRows');

	$setRows.submit(function (e) {
	e.preventDefault();
	var rowPerPage = $('[name="rowPerPage"]').val() * 1;

	var zeroWarning = 'Sorry, but we cat\'t display "0" rows page. + \nPlease try again.'
	if (!rowPerPage) {
		alert(zeroWarning);
		return;
	}
	$('#nav').remove();
	var $products = $('#products');

	$products.after('<div id="nav">');


	var $tr = $($products).find('tbody tr');
	var rowTotals = $tr.length;

	var pageTotal = Math.ceil(rowTotals/ rowPerPage);
	var i = 0;

	for (; i < pageTotal; i++) {
		$('<a href="#"></a>')
				.attr('rel', i)
				.html(i + 1)
				.appendTo('#nav');
	}

	$tr.addClass('off-screen')
			.slice(0, rowPerPage)
			.removeClass('off-screen');

	var $pagingLink = $('#nav a');
	$pagingLink.on('click', function (evt) {
		evt.preventDefault();
		var $this = $(this);
		if ($this.hasClass('active')) {
			return;
		}
		$pagingLink.removeClass('active');
		$this.addClass('active');

		var currPage = $this.attr('rel');
		var startItem = currPage * rowPerPage;
		var endItem = startItem + rowPerPage;

		$tr.css('opacity', '0.0')
				.addClass('off-screen')
				.slice(startItem, endItem)
				.removeClass('off-screen')
				.animate({opacity: 1}, 300);

	});

	$pagingLink.filter(':first').addClass('active');

});


$setRows.submit();
</script>	
	

</body>
</html>