<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"	scope="request" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>뉴스 등록</title>
<meta name="submenu" content="news" />
</head>
<body>
	<div class="container">
		<form class="form-horizontal" action="${ctx}/news/" method="post">
			
			<div class="form-group">
		    	<label for="title" class="col-md-2 control-label">TITLE</label>
		    	<div class="col-md-10">
		    		<input type="text" class="form-control" placeholder="title" id="title" name="title" />
				</div>
			</div>
			
			<div class="form-group">
		    	<label for="date" class="col-md-2 control-label">DATE</label>
		    	<div class="col-md-10">
		    		<input type="text" class="form-control" placeholder="YYYY/MM/DD" id="date" name="date" />
				</div>
			</div>
			
			<div class="form-group">
		    	<label for="company" class="col-md-2 control-label">PUBLISHER</label>
		    	<div class="col-md-10">
		    		<input type="text" class="form-control" placeholder="publisher" id="company" name="company" />
				</div>
			</div>
			
			<div class="form-group">
		    	<label for="content" class="col-md-2 control-label">CONTENT</label>
		    	<div class="col-md-10">
		    		<input type="text" class="form-control" placeholder="content" id="content" name="content" />
				</div>
			</div>
			
			<div class="form-group">
		    	<label for="uid" class="col-md-2 control-label">USER ID</label>
		    	<div class="col-md-10">
		    		<input type="text" class="form-control" placeholder="USER ID(올린사람)" id="uid" name="uid" />
				</div>
			</div>
			
			<div class="form-group">
	    	<div class="col-sm-offset-2 col-sm-10">
	      		<button type="submit" class="btn btn-default">등록</button>
	   		</div>
	  		</div>
		</form>
	</div>
</body>
</html>