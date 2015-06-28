<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"	scope="request" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>사용자 등록</title>
<meta name="submenu" content="user" />
</head>
<body>
	<div class="container">
		<form class="form-horizontal" action="${ctx}/user" method="post">
			<div class="form-group">
		    	<label for="userId" class="col-md-2 control-label">ID</label>
		    	<div class="col-md-10">
		    		<input type="text" class="form-control" placeholder="UserId(email)" id="UserId" name="UserId" />
				</div>
			</div>
			<div class="form-group">
		    	<label for="userPw" class="col-md-2 control-label">PASSWORD</label>
		    	<div class="col-md-10">
		    		<input type="password" class="form-control" placeholder="UserPw" id="UserPw" name="UserPw" />
				</div>
			</div>
			<div class="form-group">
		    	<label for="userNick" class="col-md-2 control-label">별명</label>
		    	<div class="col-md-10">
		    		<input type="text" class="form-control" placeholder="UserNick" id="UserNick" name="UserNick" />
				</div>
			</div>
			<div class="form-group">
		    	<label for="cellPhoneNo1" class="col-md-2 control-label">전화번호</label>
		    	<div class="col-md-10">
		    		<input type="text" class="form-control" placeholder="전화번호" id="cellPhoneNo1" name="cellPhoneNo1" />
				</div>
			</div>
			<div class="form-group">
		    	<label for="cellPhoneNo2" class="col-md-2 control-label">상대방전화번호</label>
		    	<div class="col-md-10">
		    		<input type="text" class="form-control" placeholder="상대방전화번호" id="cellPhoneNo2" name="cellPhoneNo2" />
				</div>
			</div>
			<div class="form-group">
		    	<label for="birthDate" class="col-md-2 control-label">생년월일</label>
		    	<div class="col-md-10">
		    		<input type="text" class="form-control" placeholder="생년월일" id="birthDate" name="birthDate" />
				</div>
			</div>
			<div class="form-group">
				<label for="userType" class="col-md-2 control-label">UserType</label>
				<input type="radio" name="userType" value="student">학생
				<input type="radio" name="userType" value="parent">학부모
				<input type="radio" name="userType" value="admin">관리자
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