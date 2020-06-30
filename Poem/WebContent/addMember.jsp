<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<script>
	function checkForm() {
		if (!document.newMember.id.value) {alert("아이디를 입력하세요."); return false;}
		if (!document.newMember.password.value) {alert("비밀번호를 입력하세요.");	return false;}
		if (!document.newMember.check.value) {alert("비밀번호확인을 입력하세요.");	return false;}
		if (document.newMember.password.value != document.newMember.check.value) {alert("비밀번호를 동일하게 입력하세요."); return false;}
		if (!document.newMember.name.value) {alert("이름을 입력하세요."); return false;}
		if (!document.newMember.gender.value) {alert("성별을 선택하세요."); return false;}
		if (!document.newMember.birth.value) {alert("생년월일을 입력하세요.");	 return false;}
		if (!document.newMember.phone.value) {alert("전화번호를 입력하세요.");	 return false;}
	}
</script>
<title>회원 가입</title>
<link rel="stylesheet" href="index.css">
</head>
<body>
	<div class="login-box">
	<form name="newMember" action="processAddMember.jsp" method="post" onsubmit="return checkForm()" class="login-form">
	<h1>회원 가입</h1>
		<p style="text-align:right;">아이디 : <input name="id" type="text" class="amtxtb"></p>
		<p style="text-align:right;">비밀번호 : <input type="password" name="password" type="text" class="amtxtb"></p>
		<p style="text-align:right;">비밀번호확인 : <input type="password" name="check" type="text" class="amtxtb"></p>
		<p style="text-align:right;">이름 : <input name="name" type="text" class="amtxtb"></p>
		<p class="rs">성별 : <input name="gender" type="radio" value="남"/>남 
				<input name="gender" type="radio" value="여"/>여 </p>
		<p style="text-align:right;">생년월일 : <input name="birth" type="text" maxlength="6" placeholder="YYMMDD" class="amtxtb"></p>
		<p style="text-align:right;">전화번호 : <input name="phone" type="text" maxlength="11" placeholder="01012345678" class="amtxtb"></p>
		<input type="submit" value="등록 " class="login-btn"><br>
		<input type="button"  value="돌아가기 " onclick="location.href='index.jsp'" class="lrb">
	</form>
	</div>
	
<jsp:include page="footer.jsp" />
</body>
</html>