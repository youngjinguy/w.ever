<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"	scope="request" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>문제 목록</title>
<meta name="submenu" content="quiz" />
<script type="text/javascript">
	function ajax(){
		$.ajax({
			url : '${ctx}/ws/quiz',
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
			<td>ID</td>
			<td>과목</td>
			<td>문제</td>
			<td>정답</td>
			<td>보기1</td>
			<td>보기2</td>
			<td>보기3</td>
			<td>보기4</td>
			<td>보기5</td>
			<td>문제키워드</td>
		</tr>	
		<c:forEach var="quiz" items="${quizs}">
			<tr>
				<td><a href="${ctx}/quiz/${quiz.id}">${quiz.id}</a></td>
				<td>${quiz.section}</td>
				<td>${quiz.content}</td>
				<td>${quiz.answer}</td>
				<td>${quiz.selection1}</td>
				<td>${quiz.selection2}</td>
				<td>${quiz.selection3}</td>
				<td>${quiz.selection4}</td>
				<td>${quiz.selection5}</td>
				<td>${quiz.keyword}</td>
			</tr>
		</c:forEach>
	</table>
	
	<a class="btn btn-default" role="button" href="${ctx}/quiz/regist">등록</a>
	<a class="btn btn-default" role="button" href="javascript:ajax();">ajax json call</a>
	</div>
</body>
</html>
