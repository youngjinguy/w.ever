<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"	scope="request" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>사용자 목록</title>
<meta name="submenu" content="question" />
<script type="text/javascript">
	function ajax(){
		$.ajax({
			url : '${ctx}/ws/question',
			type : 'get',
			dataType : 'json',
			success : function(data){
				alert(JSON.stringify(data));
			}
		});
	}
</script>
</head>
<body>
	<div class="container">
	<table class="table table-bordered">
		<tr>
			<td>아이디</td>
			<td>구분</td>
			<td>과목</td>
			<td>정답</td>
			<td>문제</td>
			<td>날짜</td>
			<td>Uri</td>
		</tr>	
		<c:forEach var="question" items="${users}">
			<tr>
				<td><a href="${ctx}/question/${question.id}">${question.id}</a></td>
				<td>${question.studentType}</td>
				<td>${question.questionType}</td>
				<td>${question.rightAnswer}</td>
				<td>${question.questionTitle}</td>
				<td>${question.questionYearMonth}</td>
				<td>${question.questionUri}</td>
			</tr>
		</c:forEach>
	</table>
	
	<a class="btn btn-default" role="button" href="${ctx}/question/regist">등록</a>
	<a class="btn btn-default" role="button" href="javascript:ajax();">ajax json call</a>
	</div>
</body>
</html>
