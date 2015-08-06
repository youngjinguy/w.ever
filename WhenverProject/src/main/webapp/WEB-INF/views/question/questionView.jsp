<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"	scope="request" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>문제 상세보기</title>
<meta name="submenu" content="question" />
</head>
	<div class="container">
		<div class="page-header">
        	<h1>문제 보기</h1>
      	</div>
      	
		<form class="form-horizontal" action="${ctx}/question/${question.id}" method="POST">
		<div class="form-group">
	    	<label for="id" class="col-md-2 control-label">ID</label>
	    	<div class="col-md-10">
	    		<label>${question.id}</label>
			</div>
		</div>
		<div class="form-group">
	    	<label for="section" class="col-md-2 control-label">SECTION</label>
	    	<div class="col-md-10">
	    		<label>${question.section}</label>
			</div>
		</div>
		<div class="form-group">
	    	<label for="content" class="col-md-2 control-label">CONTENT</label>
	    	<div class="col-md-10">
	    		<label>${question.content}</label>
			</div>
		</div>
		<div class="form-group">
	    	<label for="answer" class="col-md-2 control-label">ANSWER</label>
	    	<div class="col-md-10">
	    		<label>${question.answer}</label>
			</div>
		</div>
		<div class="form-group">
	    	<label for="selection1" class="col-md-2 control-label">SELECTION1</label>
	    	<div class="col-md-10">
	    		<label>${question.selection1}</label>
			</div>
		</div>
		<div class="form-group">
	    	<label for="selection2" class="col-md-2 control-label">SELECTION2</label>
	    	<div class="col-md-10">
	    		<label>${question.selection2}</label>
			</div>
		</div>
		<div class="form-group">
	    	<label for="selection3" class="col-md-2 control-label">SELECTION3</label>
	    	<div class="col-md-10">
	    		<label>${question.selection3}</label>
			</div>
		</div>
		<div class="form-group">
	    	<label for="selection4" class="col-md-2 control-label">SELECTION4</label>
	    	<div class="col-md-10">
	    		<label>${question.selection4}</label>
			</div>
		</div>
		<div class="form-group">
	    	<label for="selection5" class="col-md-2 control-label">SELECTION5</label>
	    	<div class="col-md-10">
	    		<label>${question.selection5}</label>
			</div>
		</div>
		<div class="form-group">
	    	<label for="keyword" class="col-md-2 control-label">KEYWORD</label>
	    	<div class="col-md-10">
	    		<label>${question.keyword}</label>
			</div>
		</div>
		
				
		<div class="form-group">
	   		<div class="col-sm-offset-2 col-sm-10">
	   			<a class="btn btn-default" role="button" href="${ctx}/question/${question.id}/modify">수정</a>
	   		</div>
  		</div>
	</div>
</body>
</html>