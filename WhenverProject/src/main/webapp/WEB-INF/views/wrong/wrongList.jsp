<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"	scope="request" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>오답노트 목록</title>
<meta name="submenu" content="wrong" />
</head>
<body>
	<div class="container">
		<table class="talbe table-bordered">
			<tr>
				<td>USER_ID</td>
				<td>QUESTION_ID</td>
			</tr>
			<c:forEach var="wrong" items="${wrongs}">
			<tr>
				<td>${wrong.uid}</td>
				<td><a href="${ctx}/wrong/${wrong.uid}/${wrong.qid}">${wrong.qid}</a></td>	
			</tr>
			</c:forEach>		
		</table>
		<a class="btn btn-default" role="button" href="${ctx}/wrong/regist">등록</a>
	</div>
</body>
</html>