<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String subject = request.getParameter("subject");
	String content = request.getParameter("content");

	Date currentDatetime = new Date();
	java.sql.Date sqlDate = new java.sql.Date(currentDatetime.getTime());
	java.sql.Timestamp timestamp = new java.sql.Timestamp(currentDatetime.getTime());

%>

<sql:setDataSource var="dataSource"
	url="jdbc:mysql://localhost:3306/LoginDB?serverTimezone=UTC"
	driver="com.mysql.jdbc.Driver" user="root" password="1234" />

<sql:update dataSource="${dataSource}" var="resultSet">
   INSERT INTO board VALUES (NULL, ?, ?, ?, ?, ?)

	<sql:param value="<%=id%>" />
	<sql:param value="<%=name%>" />
	<sql:param value="<%=subject%>" />
	<sql:param value="<%=content%>" />
	<sql:param value="<%=timestamp%>" />
</sql:update>

<c:if test="${resultSet>=1}">
	<c:redirect url="resultMember.jsp?msg=4" />
</c:if>
