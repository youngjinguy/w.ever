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
<title>공지사항 수정</title>
</head>
<body>
	<div class="container">
	<form class="form-horizontal" action="${ctx}/notice/${notice.id}" method="post">
		<div class="form-group">
	    	<label for="title" class="col-md-2 control-label">제목</label>
	    	<div class="col-md-10">
	    		<input type="text" class="form-control" placeholder="제목" id="title" name="title" value="${notice.title}"/>
			</div>
		</div>
		<div class="form-group">
	    	<label for="content" class="col-md-2 control-label">내용</label>
	    	<div class="col-md-10">
	    		<input type="text" class="form-control" placeholder="내용" id="content" name="content" value="${notice.content}"/>
			</div>
		</div>
		<div class="form-group">
    	<div class="col-sm-offset-2 col-sm-10">
      		<button type="submit" class="btn btn-default">수정</button>
    		</div>
  		</div>
	</form>
	</div>
</body>
</html>