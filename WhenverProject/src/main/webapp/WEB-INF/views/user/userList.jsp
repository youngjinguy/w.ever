<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"	scope="request" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>사용자 등록</title>
</head>
<body>
	<table border="1">
		<tr>
			<td>아이디</td>
			<td>이메일</td>
			<td>핸드폰번호</td>
			<td>생년월일</td>
		</tr>	
		<c:forEach var="user" items="${users}">
			<tr>
				<td><a href="${ctx}/user/${user.id}">${user.id}</a></td>
				<td>${user.email}</td>
				<td>${user.cellPhoneNo}</td>
				<td>${user.birthDate}</td>
			</tr>
		</c:forEach>
	</table>
	<a href="${ctx}/user/regist">등록</a>
</body>
</html>