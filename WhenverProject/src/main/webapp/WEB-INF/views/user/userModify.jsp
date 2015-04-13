<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"	scope="request" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>사용자 수정</title>
<meta name="submenu" content="user" />
</head>
<body>
	<div class="container">
	<form class="form-horizontal" action="${ctx}/user/${user.id}" method="post">
		<div class="form-group">
	    	<label for="email" class="col-md-2 control-label">Email</label>
	    	<div class="col-md-10">
	    		<input type="text" class="form-control" placeholder="Email" id="email" name="email" value="${user.email}"/>
			</div>
		</div>
		<div class="form-group">
	    	<label for="cellPhoneNo" class="col-md-2 control-label">전화번호</label>
	    	<div class="col-md-10">
	    		<input type="text" class="form-control" placeholder="전화번호" id="cellPhoneNo" name="cellPhoneNo" value="${user.cellPhoneNo}"/>
			</div>
		</div>
		<div class="form-group">
	    	<label for="birthDate" class="col-md-2 control-label">생년월일</label>
	    	<div class="col-md-10">
	    		<input type="text" class="form-control" placeholder="생년월일" id="birthDate" name="birthDate" value="${user.birthDate}"/>
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