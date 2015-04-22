<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"	scope="request" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="${ctx}/resources/css/bootstrap.min.css">
<link rel="stylesheet" href="${ctx}/resources/css/bootstrap-theme.min.css">
<script src="${ctx}/resources/js/jquery-1.11.2.min.js"></script>
<script src="${ctx}/resources/js/bootstrap.min.js"></script>
<title>Notice</title>
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
				<td><a href="${ctx}/user/${notice.id}">${notice.id}</a></td>
				<td>${notice.title}</td>
				<td>${notice.content}</td>
			</tr>
		</c:forEach>
	</table>
	<a class="btn btn-default" role="button" href="${ctx}/notice/regist">등록</a>
	</div>
</body>
</html>