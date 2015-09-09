<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"	scope="request" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지사항</title>
<meta name="submenu" content="notice" />
</head>
<body>
	<div class="container">
	<table class="table table-bordered">
	
		<tr>
			<td>아이디</td>
			<td>제목</td>
			<td>내용</td>
		</tr>	
		<c:forEach var="notice" items="${notieces}">
			<tr>
				<td>${notice.id}</td>
				<td><a href="${ctx}/notice/${notice.id}">${notice.title}</a></td>
				<td>${notice.content}</td>
			</tr>
		</c:forEach>
	</table>
	<a class="btn btn-default" role="button" href="${ctx}/notice/new">등록</a>
	</div>
</body>
</html>