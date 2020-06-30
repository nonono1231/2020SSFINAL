<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Search</title>
<link rel="stylesheet" href="index.css">
</head>
<body>
<jsp:include page="header.jsp" />
<jsp:include page="navigation.jsp" />

	<form action="PoemList.jsp" method="get" class="sform">
		<select name="stype" class="opbtn">
			<option value="전체" selected>전체</option>
			<option value="제목">제목</option>
			<option value="작가">작가</option>
			<option value="시집">시집</option>
			<option value="내용">내용</option>
		</select>
		<input type="text" name="searchbar" class="sbox">
		<input type="submit" value="검색" class="sbtn">
	</form>

<jsp:include page="footer.jsp" />
</body>
</html>