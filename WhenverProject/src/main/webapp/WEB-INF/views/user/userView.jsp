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
	<form class="form-horizontal" action="${ctx}/user/${user.id}" method="POST">
		<div class="form-group">
	    	<label for="id" class="col-md-2 control-label">ID</label>
	    	<div class="col-md-10">
	    		<label>${user.id}</label>
			</div>
		</div>
		<div class="form-group">
	    	<label for="password" class="col-md-2 control-label">PASSWORD</label>
	    	<div class="col-md-10">
	    		<label>${user.password}</label>
			</div>
		</div>
		<div class="form-group">
	    	<label for="nickname" class="col-md-2 control-label">NICKNAME</label>
	    	<div class="col-md-10">
	    		<label>${user.nickname}</label>
			</div>
		</div>
		<div class="form-group">
	    	<label for="cellPhoneNo1" class="col-md-2 control-label">전화번호</label>
	    	<div class="col-md-10">
	    		<label>${user.cellPhoneNo1}</label>
			</div>
		</div>
		<div class="form-group">
	    	<label for="cellPhoneNo2" class="col-md-2 control-label">상대방전화번호</label>
	    	<div class="col-md-10">
	    		<label>${user.cellPhoneNo2}</label>
			</div>
		</div>
		<div class="form-group">
	    	<label for="birthDate" class="col-md-2 control-label">생년월일</label>
	    	<div class="col-md-10">
	    		<label>${user.birthDate}</label>
			</div>
		</div>
		<div class="form-group">
	    	<label for="school" class="col-md-2 control-label">학교</label>
	    	<div class="col-md-10">
	    		<label>${user.school}</label>
			</div>
		</div>
		<div class="form-group">
	    	<label for="type" class="col-md-2 control-label">TYPE</label>
	    	<div class="col-md-10">
	    		<label>${user.type}</label>
			</div>
		</div>
		<div class="form-group">
    		<div class="col-sm-offset-2 col-sm-10">
    			<a class="btn btn-default" role="button" href="${ctx}/user/${user.id}/modify">수정</a>
    		</div>
  		</div>
	</form>
	</div>
</body>
</html>