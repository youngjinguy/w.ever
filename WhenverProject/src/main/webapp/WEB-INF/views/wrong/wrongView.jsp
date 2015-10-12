<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"	scope="request" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>오답노트 상세보기</title>
<meta name="submenu" content="wrong" />
</head>
<body>
	<div class="container">
		<div class="page-header">
			<h1>오답 보기</h1>
		</div>
	</div>
	
	<form class="form-horizontal" action="${ctx}/wrong/${wrong.uid}/${wrong.qid}" method="POST">
		<div class="form-group">
	    	<label for="id" class="col-md-2 control-label">USER_ID</label>
	    	<div class="col-md-10">
	    		<label>${wrong.uid}</label>
			</div>
		</div>
		<div class="form-group">
	    	<label for="section" class="col-md-2 control-label">QUESTION_ID</label>
	    	<div class="col-md-10">
	    		<label>${wrong.qid}</label>
			</div>
		</div>
		
				
		<div class="form-group">
	   		<div class="col-sm-offset-2 col-sm-10">
	   			<a class="btn btn-default" role="button" href="${ctx}/wrong/${wrong.uid}/${wrong.qid}/modify">수정</a>
	   		</div>
  		</div>
  		</form>
</body>
</html>