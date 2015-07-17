<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"	scope="request" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>뉴스 목록</title>
<meta name="submenu" content="news" />
<script type="text/javascript">
	function ajax(){
		$.ajax({
			url : '${ctx}/ws/news',
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
			<td>제목</td>
			<td>뉴스사</td>
			<td>뉴스날짜</td>
			<td>올린이</td>
		</tr>	
		<c:forEach var="news" items="${news}">
			<tr>
				<td><a href="${ctx}/news/${news.id}">${news.id}</a></td>
				<td>${news.title}</td>
				<td>${news.company}</td>
				<td>${news.date}</td>
				<td>${news.uid}</td>
			</tr>
		</c:forEach>
	</table>
	
	<a class="btn btn-default" role="button" href="${ctx}/news/new">등록</a>
	<a class="btn btn-default" role="button" href="javascript:ajax();">ajax json call</a>
	</div>
</body>
</html>