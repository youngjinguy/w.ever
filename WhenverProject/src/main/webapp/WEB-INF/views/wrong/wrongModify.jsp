<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"	scope="request" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>오답노트 수정</title>
<meta name="submenu" content="wrong" />
<script type="text/javascript">
	function modifyWrong() {
		document.getElementById("modifyForm").submit();
	}
	function deleteWrong() {
		document.getElementById("deleteForm").submit();
	}
</script>
</head>
<body>
	<div class="container">
		<div class="page-header">
        	<h1>문제 수정</h1>
      	</div>
      	
		<form class="form-horizontal" id="modifyForm" action="${ctx}/wrong/${wrong.uid}/${wrong.qid}" method="POST">		  	
			<div class="form-group">
			    <label for="uid" class="col-sm-2 control-label">USER_ID</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" id="uid" placeholder="USER_ID" name="uid" value="${wrong.uid}">
			    </div>
		  	</div>

			<div class="form-group">
			    <label for="qid" class="col-sm-2 control-label">QUESTION_ID</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" id="qid" placeholder="QUESTION_ID" name="qid" value="${wrong.qid}">
			    </div>
		  	</div>  				
				
		</form>
		
		<input type="submit" value="저장" onClick="modifyWrong();" class="btn btn-default btn-primary"/>
		<input type="submit" value="삭제" onClick="deleteWrong();" class="btn btn-default"/>
			
		<form class="form-horizontal" id="deleteForm" action="${ctx}/wrong/${wrong.uid}/${wrong.qid}/delete" method="POST">
		</form>
	</div>
</body>
</html>