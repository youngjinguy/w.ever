<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"	scope="request" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>사용자 수정</title>
<meta name="submenu" content="user" />
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
	<form class="form-horizontal" action="${ctx}/user/${user.id}" method="post">
		<div class="form-group">
	    	<label for="password" class="col-md-2 control-label">PASSWORD</label>
	    	<div class="col-md-10">
	    		<input type="password" class="form-control" placeholder="password" id="password" name="password" value="${user.password}"/>
			</div>
		</div>
		<div class="form-group">
	    	<label for="cellPhoneNo1" class="col-md-2 control-label">전화번호</label>
	    	<div class="col-md-10">
	    		<input type="text" class="form-control" placeholder="전화번호" id="cellPhoneNo1" name="cellPhoneNo1" value="${user.cellPhoneNo1}"/>
			</div>
		</div>
		<div class="form-group">
	    	<label for="cellPhoneNo2" class="col-md-2 control-label">상대방전화번호</label>
	    	<div class="col-md-10">
	    		<input type="text" class="form-control" placeholder="상대방전화번호" id="cellPhoneNo2" name="cellPhoneNo2" value="${user.cellPhoneNo2}"/>
			</div>
		</div>
		<div class="form-group">
	    	<label for="birthDate" class="col-md-2 control-label">생년월일</label>
	    	<div class="col-md-10">
	    		<input type="text" class="form-control" placeholder="생년월일" id="birthDate" name="birthDate" value="${user.birthDate}"/>
			</div>
		</div>
		<div class="form-group">
	    	<label for="school" class="col-md-2 control-label">학교</label>
	    	<div class="col-md-10">
	    		<input type="text" class="form-control" placeholder="학교" id="school" name="school" value="${user.school}"/>
			</div>
		</div>
		<div class="form-group">
    		<div class="col-sm-offset-2 col-sm-10">
      			<button type="submit" class="btn btn-default">저장</button>
				<button id="btnDelete" type="button" class="btn btn-default">삭제</button>
    		</div>
  		</div>
	</form>
	<form id="deleteForm" action="${ctx}/user/${user.id}/remove" method="post"></form>
	</div>
</body>
</html>