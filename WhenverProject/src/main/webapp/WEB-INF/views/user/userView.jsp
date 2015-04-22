<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"	scope="request" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>사용자 상세보기</title>
<meta name="submenu" content="user" />
</head>
<body>
	<div class="container">
	<form class="form-horizontal" action="${ctx}/user/${user.id}" method="post">
		<div class="form-group">
	    	<label for="email" class="col-md-2 control-label">Email</label>
	    	<div class="col-md-10">
	    		<label>${user.email}</label>
			</div>
		</div>
		<div class="form-group">
	    	<label for="cellPhoneNo" class="col-md-2 control-label">전화번호</label>
	    	<div class="col-md-10">
	    		<label>${user.cellPhoneNo}</label>
			</div>
		</div>
		<div class="form-group">
	    	<label for="birthDate" class="col-md-2 control-label">생년월일</label>
	    	<div class="col-md-10">
	    		<label>${user.birthDate}</label>
			</div>
		</div>
		<div class="form-group">
    		<div class="col-sm-offset-2 col-sm-10">
    			<a class="btn btn-default" role="button" href="/wever/user/${user.id}/modify">수정</a>
    		</div>
  		</div>
	</form>
	</div>
</body>
</html>