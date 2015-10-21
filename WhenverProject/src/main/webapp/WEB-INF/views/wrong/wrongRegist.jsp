<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"	scope="request" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>오답노트 등록</title>
<meta name="submenu" content="wrong" />
</head>
<body>
	<div class="container">
		<form class="form-horizontal" action="${ctx}/wrong/" method="post">			
		  	<div class="form-group">
			    <label for="uid" class="col-sm-2 control-label">USER_ID</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" id="uid" placeholder="USER_ID" name="uid">
			    </div>
		  	</div>
		  	
		  	<div class="form-group">
			    <label for="qid" class="col-sm-2 control-label">QUIZ_ID</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" id="qid" placeholder="QUIZ_ID" name="qid">
			    </div>
		  	</div>	
	
			<input type="submit" value="등록" class="btn btn-default btn-primary" />
			<input type="reset" value="취소" class="btn btn-default" />
		</form>
	</div>

</body>
</html>