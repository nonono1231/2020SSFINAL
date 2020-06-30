<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String password = request.getParameter("password");
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	String birth = request.getParameter("birth");
	String phone = request.getParameter("phone");
%>

<sql:setDataSource var="dataSource"
	url="jdbc:mysql://localhost:3306/LoginDB?serverTimezone=UTC"
	driver="com.mysql.jdbc.Driver" user="root" password="1234" />
<%try{ %>
<sql:update dataSource="${dataSource}" var="resultSet">
   INSERT INTO member VALUES (?, ?, ?, ?, ?, ?)
   <sql:param value="<%=id%>" />
	<sql:param value="<%=password%>" />
	<sql:param value="<%=name%>" />
	<sql:param value="<%=gender%>" />
	<sql:param value="<%=birth%>" />
	<sql:param value="<%=phone%>" />
</sql:update>
<% } catch(Exception e){
%>	<c:redirect url="resultMember.jsp?msg=3" />
<%
}
%>

<c:if test="${resultSet>=1}">
	<c:redirect url="resultMember.jsp?msg=1" />
</c:if>

