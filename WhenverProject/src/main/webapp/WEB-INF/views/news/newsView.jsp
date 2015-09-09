<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"	scope="request" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>뉴스 상세보기</title>
<meta name="submenu" content="news" />
</head>
<body>
	<div class="container">
	<form class="form-horizontal" action="${ctx}/news/${news.id}" method="POST">
		<div class="form-group">
	    	<label for="id" class="col-md-2 control-label">ID</label>
	    	<div class="col-md-10">
	    		<label>${news.id}</label>
			</div>
		</div>
		<div class="form-group">
	    	<label for="title" class="col-md-2 control-label">TITLE</label>
	    	<div class="col-md-10">
	    		<label>${news.title}</label>
			</div>
		</div>
		<div class="form-group">
	    	<label for="content" class="col-md-2 control-label">CONTENT</label>
	    	<div class="col-md-10">
	    		<label>${news.content}</label>
			</div>
		</div>
		<div class="form-group">
	    	<label for="date" class="col-md-2 control-label">DATE</label>
	    	<div class="col-md-10">
	    		<label>${news.date}</label>
			</div>
		</div>
		<div class="form-group">
	    	<label for="company" class="col-md-2 control-label">PUBLISHER</label>
	    	<div class="col-md-10">
	    		<label>${news.company}</label>
			</div>
		</div>
		<div class="form-group">
	    	<label for="uid" class="col-md-2 control-label">USER ID</label>
	    	<div class="col-md-10">
	    		<label>${news.uid}</label>
			</div>
		</div>
		<div class="form-group">
    		<div class="col-sm-offset-2 col-sm-10">
    			<a class="btn btn-default" role="button" href="${ctx}/news/${news.id}/modify">수정</a>
    		</div>
  		</div>
	</form>
	</div>
</body>
</html>