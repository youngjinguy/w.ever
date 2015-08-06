<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"	scope="request" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>뉴스 수정</title>
<meta name="submenu" content="news" />
<script type="text/javascript">
	$(document).ready(function(){
		$('#btnDelete').click(function(){
			$('#deleteForm').submit();
		});
	});
	
</script>
</head>
<body>
	<div class="container">
	<form class="form-horizontal" action="${ctx}/news/${news.id}" method="post">
		<div class="form-group">
	    	<label for="title" class="col-md-2 control-label">TITLE</label>
	    	<div class="col-md-10">
	    		<input type="text" class="form-control" placeholder="title" id="title" name="title" value="${news.title}"/>
			</div>
		</div>
		<div class="form-group">
	    	<label for="date" class="col-md-2 control-label">DATE</label>
	    	<div class="col-md-10">
	    		<input type="text" class="form-control" placeholder="date" id="date" name="date" value="${news.date}"/>
			</div>
		</div>
		<div class="form-group">
	    	<label for="company" class="col-md-2 control-label">PUBLISHER</label>
	    	<div class="col-md-10">
	    		<input type="text" class="form-control" placeholder="company" id="company" name="company" value="${news.company}"/>
			</div>
		</div>
		<div class="form-group">
	    	<label for="content" class="col-md-2 control-label">CONTENT</label>
	    	<div class="col-md-10">
	    		<input type="text" class="form-control" placeholder="content" id="content" name="content" value="${news.content}"/>
			</div>
		</div>
		<div class="form-group">
    		<div class="col-sm-offset-2 col-sm-10">
      			<button type="submit" class="btn btn-default">저장</button>
				<button id="btnDelete" type="button" class="btn btn-default">삭제</button>
    		</div>
  		</div>
	</form>
	<form id="deleteForm" action="${ctx}/news/${news.id}/remove" method="post"></form>
	</div>
</body>
</html>